#!/usr/bin/env bash
# Run SolTG on every regression contract into results/<run>/ and build summary.csv + index.html.
#
#   bash scripts/run_eval.sh <run-name> [query-timeout-seconds]
#
#   bash scripts/run_eval.sh baseline        # no -qt: tgnonlin keeps its built-in 10 s
#   bash scripts/run_eval.sh qt10 10         # -qt 10
#   bash scripts/run_eval.sh qt5  5          # -qt 5
#
# Env: TIMEOUT (solTg -t, default 120), SOLC (solTg -s, default 0.8.28),
#      WORK (scratch folder for the Foundry projects, default ~/soltg-eval-runs),
#      REGRESSION (folder of contracts, default ./regression; point it at a copy with a few files to test),
#      ISOLATE (1 = one fresh Foundry project per contract [default]; 0 = all 94 contracts in one
#      project and a single `solTg -i src/regression` call, exactly as the assignment describes).
#
# Why ISOLATE=1 is the default: forge compiles every file in the project on each `forge test` /
# `forge coverage`. In one shared project a single file that does not compile breaks the
# measurement of every contract after it: regression/weth_o.sol (Solidity 0.4 syntax) makes
# `forge coverage` (forge >= 1.x parses all sources with solar) fail for all 94 contracts, and one
# generated test that does not compile (test/constructor_8.t.sol) fails `forge test` for every later
# contract. Test generation is per contract either way; isolation only stops unrelated files from
# spoiling the measurement. The report layout is identical (report/<parent>/<name>/).
#
# Run from the root of this SolTG clone with SolTG installed (venv or conda) and Docker running.
set -euo pipefail

RUN="${1:?usage: run_eval.sh <run-name> [query-timeout-seconds]}"
QT="${2:-}"
TIMEOUT="${TIMEOUT:-120}"
SOLC="${SOLC:-0.8.28}"
ISOLATE="${ISOLATE:-1}"
REPO="$(cd "$(dirname "$0")/.." && pwd)"
WORK="${WORK:-$HOME/soltg-eval-runs}"
REGRESSION="${REGRESSION:-$REPO/regression}"   # override to try a few contracts
REGPARENT="$(cd "$(dirname "$REGRESSION")" && pwd)"; REGNAME="$(basename "$REGRESSION")"
OUT="$REPO/results/$RUN"

for t in solTg forge genhtml docker python3 script; do
  command -v "$t" >/dev/null || { echo "missing tool: $t" >&2; exit 1; }
done
docker info >/dev/null 2>&1 || { echo "Docker is not running" >&2; exit 1; }

# Keep a Mac awake for the whole script: idle, disk and (on AC power) system sleep.
# Nothing can stop sleep from closing the lid, so keep it open. Timings are measured with a clock
# that excludes sleep, and summary.csv reports slept_s per contract as a check.
command -v caffeinate >/dev/null && { caffeinate -ims -w $$ & }

# `script` gives SolTG a pseudo-terminal (its Docker call uses `docker run -it`); stdin from
# /dev/null so it also works from cron, nohup or a background job.
run_soltg() {  # run_soltg <project-dir> <log> <solTg args...>
  local dir="$1" log="$2"; shift 2
  if [ "$(uname)" = Darwin ]; then
    (cd "$dir" && script -q /dev/null solTg "$@" < /dev/null >> "$log" 2>&1) || true
  else
    (cd "$dir" && script -qec "$(printf '%q ' solTg "$@")" /dev/null < /dev/null >> "$log" 2>&1) || true
  fi
}

PROJ="$WORK/$RUN"
rm -rf "$PROJ" "$OUT"
mkdir -p "$PROJ" "$OUT/report"
N=$(find "$REGRESSION" -name "*.sol" | wc -l | tr -d ' ')
QTARGS=(); [ -n "$QT" ] && QTARGS=(-qt "$QT")

{
  echo "run: $RUN"
  echo "date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "machine: $(uname -mrs); $(sw_vers -productVersion 2>/dev/null || true)"
  echo "soltg_commit: $(git -C "$REPO" rev-parse --short HEAD)$(git -C "$REPO" diff --quiet || echo '+dirty')"
  echo "tgnonlin: $(python3 -c 'import sys;print(sys.prefix)')/deps/tgnonlin"
  echo "tgnonlin_sha256: $(shasum -a 256 "$(python3 -c 'import sys;print(sys.prefix)')/deps/tgnonlin" | cut -d' ' -f1)"
  echo "docker_image: $(docker image inspect usiverify/testgen:latest --format '{{.Id}}' 2>/dev/null || echo n/a)"
  echo "forge: $(forge --version | head -1)"
  echo "flags: -t $TIMEOUT -s $SOLC ${QTARGS[*]:-}"
  echo "isolate: $ISOLATE"
  echo "contracts: $N"
} > "$OUT/run_info.txt"
echo "contracts: $N"

START=$(date +%s)
if [ "$ISOLATE" = 1 ]; then
  # template project: forge-std installed once, copied for every contract
  TEMPLATE="$PROJ/_template"
  forge init --no-git "$TEMPLATE" >/dev/null 2>&1
  rm -f "$TEMPLATE"/src/*.sol "$TEMPLATE"/test/*.sol "$TEMPLATE"/script/*.sol
  i=0
  (cd "$REGPARENT" && find "$REGNAME" -name "*.sol" | sort) | while read -r rel; do
    i=$((i + 1))
    parent=$(basename "$(dirname "$rel")"); name=$(basename "$rel" .sol)
    P="$PROJ/contract"
    rm -rf "$P"; cp -R "$TEMPLATE" "$P"
    mkdir -p "$P/src/$(dirname "$rel")"; cp "$REGPARENT/$rel" "$P/src/$rel"
    echo "CONTRACT $i/$N $rel" >> "$OUT/run.log"
    run_soltg "$P" "$OUT/run.log" -i "src/$rel" -o "$P/_report" -t "$TIMEOUT" -s "$SOLC" ${QTARGS[@]+"${QTARGS[@]}"}
    mkdir -p "$OUT/report/$parent"
    if [ -d "$P/_report/$parent/$name" ]; then
      rm -rf "$OUT/report/$parent/$name"; mv "$P/_report/$parent/$name" "$OUT/report/$parent/$name"
    else
      mkdir -p "$OUT/report/$parent/$name"
      echo "CONTRACT_FAILED $rel: solTg produced no output folder (see run.log)" > "$OUT/report/$parent/$name/log.txt"
    fi
  done
  rm -rf "$PROJ/contract"
  # SolTG's own HTML + Excel summary over all contracts
  python3 -c "import sys; from solTg.ReportBuilder import html_report as h; h.buildReport(sys.argv[1]); h.build_excel_report(sys.argv[1])" \
    "$OUT/report" >> "$OUT/run.log" 2>&1 || echo "report builder failed (see run.log)" >&2
else
  forge init --no-git "$PROJ/shared" >/dev/null 2>&1
  rm -f "$PROJ"/shared/src/*.sol "$PROJ"/shared/test/*.sol "$PROJ"/shared/script/*.sol
  cp -R "$REGRESSION" "$PROJ/shared/src/regression"
  find "$PROJ/shared/src/regression" -name .DS_Store -delete
  run_soltg "$PROJ/shared" "$OUT/run.log" -i src/regression -o "$OUT/report" -t "$TIMEOUT" -s "$SOLC" ${QTARGS[@]+"${QTARGS[@]}"}
fi
echo "wall_time_s: $(( $(date +%s) - START ))" >> "$OUT/run_info.txt"

python3 "$REPO/scripts/collect_results.py" "$OUT/report" "$OUT/summary.csv"   # also writes $OUT/index.html
echo "done: $OUT"
