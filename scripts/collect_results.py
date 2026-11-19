#!/usr/bin/env python3
"""Turn a SolTG report folder into one CSV row per contract.

    python3 scripts/collect_results.py results/<run>/report results/<run>/summary.csv

Also writes index.html next to the CSV: the same table for a browser, linking each
contract's generated test, log and genhtml coverage page, and SolTG's 1_html_report.html.

Columns
  contract        <parent dir>/<file name>, as in the report folder
  status          ok | no_tests (encoded, tgnonlin found no sat path within -t) | no_encoding (encoder
                  produced no .smt2) | skipped (no contract with a public function: nothing to call)
                  | failed (solTg raised; reason in log.txt)
  tests           number of `function test` in the generated .t.sol
  passed, failed  [PASS] / [FAIL] lines in test_results.txt
  line_hit, line_total, line_cov      LH / LF of the contract's own file in lcov.info
  branch_hit, branch_total, branch_cov BRH / BRF of the same record
  tg_time_s       sum of TGNONLIN_TIME lines in log.txt (wall time of every tgnonlin call)
  tg_hit_limit    True if a tgnonlin call ran until solTg -t killed it
  slept_s         seconds the machine was asleep during tgnonlin (should be 0; >0 = timings unreliable)
  queries         SMT checks logged by tgnonlin in query_log.txt
  sat, unsat, unknown                  results of those checks
  timeouts        unknown checks whose Z3 reason is timeout/canceled
"""
import csv
import glob
import gzip
import html
import os
import re
import sys

FIELDS = ["contract", "status", "tests", "passed", "failed",
          "line_hit", "line_total", "line_cov", "branch_hit", "branch_total", "branch_cov",
          "tg_time_s", "tg_hit_limit", "slept_s", "queries", "sat", "unsat", "unknown", "timeouts"]


def read(path):
    """File contents, or of path + '.gz' (big logs are gzipped before committing)."""
    for p, opener in ((path, open), (path + ".gz", gzip.open)):
        try:
            with opener(p, "rt", encoding="utf-8", errors="replace") as f:
                return f.read()
        except OSError:
            continue
    return ""


def existing(path):
    """path, or path + '.gz' if only the compressed file exists."""
    return path if os.path.exists(path) or not os.path.exists(path + ".gz") else path + ".gz"


def lcov_for(lcov_text, suffix):
    """LH/LF/BRH/BRF of the record whose SF path ends with suffix (e.g. loops/while_1.sol)."""
    for rec in lcov_text.split("end_of_record"):
        m = re.search(r"^SF:(.*)$", rec, re.M)
        if not m or not m.group(1).strip().endswith(suffix):
            continue
        val = {}
        for key in ("LH", "LF", "BRH", "BRF"):
            k = re.search(r"^%s:(\d+)$" % key, rec, re.M)
            val[key] = int(k.group(1)) if k else 0
        return val
    return None


def pct(hit, total):
    return "" if not total else "{:.1f}".format(100.0 * hit / total)


def collect(contract_dir, rel):
    name = os.path.basename(contract_dir)
    row = {k: "" for k in FIELDS}
    row["contract"] = rel

    smt = os.path.join(contract_dir, name + "_updated.smt2")
    tsol = os.path.join(contract_dir, name + ".t.sol")
    if "CONTRACT_FAILED" in read(os.path.join(contract_dir, "log.txt")):
        row["status"] = "failed"          # solTg raised before encoding (see log.txt)
    elif not os.path.isfile(os.path.join(contract_dir, name + "_updated.sol")):
        row["status"] = "skipped"         # SolTG found no contract with a public function to call
    elif not os.path.isfile(smt) or os.path.getsize(smt) == 0:
        row["status"] = "no_encoding"
    elif not os.path.isfile(tsol):
        row["status"] = "no_tests"
    else:
        row["status"] = "ok"

    row["tests"] = len(re.findall(r"function\s+test", read(tsol)))
    results = read(os.path.join(contract_dir, "test_results.txt"))
    # test_results.txt holds forge test + two forge coverage runs: count unique test names
    row["passed"] = len(set(re.findall(r"\[PASS\]\s+(\w+)\(", results)))
    row["failed"] = len(set(re.findall(r"\[FAIL[^\]]*\]\s+(\w+)\(", results)))

    cov = lcov_for(read(os.path.join(contract_dir, "lcov.info")), rel + ".sol")
    if cov:
        row.update(line_hit=cov["LH"], line_total=cov["LF"], line_cov=pct(cov["LH"], cov["LF"]),
                   branch_hit=cov["BRH"], branch_total=cov["BRF"], branch_cov=pct(cov["BRH"], cov["BRF"]))

    log = read(os.path.join(contract_dir, "log.txt"))
    times = re.findall(r"TGNONLIN_TIME seconds=([0-9.]+) limit=[0-9.]+ hit_limit=(\w+)", log)
    if times:
        row["tg_time_s"] = "{:.1f}".format(sum(float(t) for t, _ in times))
        row["tg_hit_limit"] = any(h == "True" for _, h in times)
    # time the machine slept during tgnonlin (wall clock minus monotonic); > 0 means the wall-clock
    # numbers of this contract are not trustworthy, although the -t budget itself was respected
    walls = re.findall(r"TGNONLIN_TIME seconds=([0-9.]+) .*?wall_seconds=([0-9.]+)", log)
    if walls:
        row["slept_s"] = "{:.0f}".format(max(0.0, sum(float(w) - float(t) for t, w in walls)))

    q = read(os.path.join(contract_dir, "query_log.txt")).splitlines()
    if q:
        status = [l.split()[1] for l in q if len(l.split()) > 1]
        row["queries"] = len(status)
        row["sat"] = status.count("sat")
        row["unsat"] = status.count("unsat")
        row["unknown"] = status.count("unknown")
        row["timeouts"] = sum(1 for l in q if " unknown " in l and re.search(r"reason=\S*(timeout|canceled)", l))
    return row


def write_index(rows, report, out_dir):
    """index.html: one row per contract, links relative so the folder can be moved or zipped."""
    rel = lambda p: os.path.relpath(p, out_dir)
    link = lambda p, text: "<a href='{}'>{}</a>".format(html.escape(rel(p)), text) if os.path.exists(p) else ""
    cols = ["#", "contract", "status", "tests", "passed", "failed", "line %", "branch %",
            "lines hit/total", "branches hit/total", "tgnonlin s", "hit -t", "queries", "unknown", "files"]
    body = []
    for i, r in enumerate(rows, 1):
        d = os.path.join(report, r["contract"])
        name = os.path.basename(d)
        cov = glob.glob(os.path.join(d, "generated-coverage", "**", r["contract"] + ".sol.gcov.html"), recursive=True)
        files = " ".join(x for x in [link(os.path.join(d, name + ".sol"), "sol"),
                                     link(os.path.join(d, name + ".t.sol"), "test"),
                                     link(existing(os.path.join(d, "log.txt")), "log"),
                                     link(cov[0], "coverage") if cov else ""] if x)
        cells = [i, html.escape(r["contract"]), r["status"], r["tests"], r["passed"], r["failed"],
                 r["line_cov"], r["branch_cov"],
                 "{}/{}".format(r["line_hit"], r["line_total"]) if r["line_total"] != "" else "",
                 "{}/{}".format(r["branch_hit"], r["branch_total"]) if r["branch_total"] != "" else "",
                 r["tg_time_s"], r["tg_hit_limit"], r["queries"], r["unknown"], files]
        body.append("<tr class='{}'>{}</tr>".format(r["status"], "".join("<td>{}</td>".format(c) for c in cells)))
    ok = [r for r in rows if r["status"] == "ok"]
    tot = lambda k: sum(int(r[k]) for r in rows if str(r[k]).isdigit())
    stats = ("{} contracts &middot; {} with tests &middot; {} no tests &middot; {} not encoded/failed &middot; {} skipped &middot; "
             "{} tests ({} pass, {} fail) &middot; lines {}/{} &middot; branches {}/{}").format(
        len(rows), len(ok), sum(r["status"] == "no_tests" for r in rows),
        sum(r["status"] in ("no_encoding", "failed") for r in rows), sum(r["status"] == "skipped" for r in rows), tot("tests"), tot("passed"), tot("failed"),
        tot("line_hit"), tot("line_total"), tot("branch_hit"), tot("branch_total"))
    info = os.path.join(out_dir, "run_info.txt")
    page = """<!doctype html><meta charset="utf-8"><title>SolTG results</title>
<style>body{{font:14px system-ui;margin:24px}}table{{border-collapse:collapse}}td,th{{border:1px solid #ccc;padding:3px 6px}}
td:nth-child(2){{font-family:monospace}}tr.no_tests td{{background:#fff3d6}}tr.no_encoding td,tr.failed td{{background:#fde2e2}}tr.skipped td{{color:#888}}</style>
<h1>SolTG on regression/</h1><p>{stats}</p>
<p>{report} {info} <a href='summary.csv'>summary.csv</a></p>
<table><tr>{head}</tr>{body}</table>""".format(
        stats=stats, report=link(os.path.join(report, "1_html_report.html"), "SolTG report (1_html_report.html)"),
        info=link(info, "run_info.txt"), head="".join("<th>{}</th>".format(c) for c in cols), body="".join(body))
    with open(os.path.join(out_dir, "index.html"), "w") as f:
        f.write(page)


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    report, out = sys.argv[1], sys.argv[2]
    rows = []
    for parent in sorted(os.listdir(report)):
        pdir = os.path.join(report, parent)
        if not os.path.isdir(pdir):
            continue
        for name in sorted(os.listdir(pdir)):
            cdir = os.path.join(pdir, name)
            if os.path.isdir(cdir) and (os.path.isfile(os.path.join(cdir, "log.txt")) or
                                        os.path.isfile(os.path.join(cdir, "log.txt.gz"))):
                rows.append(collect(cdir, parent + "/" + name))
    with open(out, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=FIELDS)
        w.writeheader()
        w.writerows(rows)
    write_index(rows, report, os.path.dirname(os.path.abspath(out)))
    ok = sum(r["status"] == "ok" for r in rows)
    print("{} contracts, {} with tests -> {} and index.html".format(len(rows), ok, out))


if __name__ == "__main__":
    main()
