#!/usr/bin/env bash
# Evidence for Task 2 (per-query Z3 timeout), written to results/evidence/.
#
#   bash scripts/evidence_qt.sh <old-tgnonlin> <new-tgnonlin> [baseline-run]
#
# 1. default_unchanged.txt  old vs new binary WITHOUT --query-timeout on encoded baseline contracts:
#                           testgen.txt must be byte-identical.
# 2. timeout_fires.txt      new binary with --query-timeout 1 (ms): every query_log.txt line shows
#                           timeout_ms=1, and queries end with reason=timeout, also after resets.
# 3. flag_passthrough.txt   solTg -qt 5 / -qt 0.001 on one contract: the tgnonlin command line and
#                           tgnonlin's own "query timeout (ms)" line.
set -euo pipefail
OLD="${1:?old tgnonlin}"; NEW="${2:?new tgnonlin}"; RUN="${3:-baseline}"
# absolute paths: the binaries are run from temporary folders below
abspath() { [ -x "$1" ] || { echo "not an executable: $1" >&2; exit 1; }; echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"; }
OLD="$(abspath "$OLD")"; NEW="$(abspath "$NEW")"
REPO="$(cd "$(dirname "$0")/.." && pwd)"
REP="$REPO/results/$RUN/report"
EV="$REPO/results/evidence"; mkdir -p "$EV"
CAP="${CAP:-30}"                       # seconds per tgnonlin call (it can run until killed)
cap() { perl -e 'alarm shift; exec @ARGV' "$CAP" "$@"; }
# contracts that finish on their own (deterministic) + some that run into the cap
CONTRACTS="${CONTRACTS:-regression/bytes regression/doubleF regression/exampl constructors/constructor_1 sanity/simple_if loops/for_1_break regression/Math}"
W="$(mktemp -d)"

keys_of() { grep -a -o -- '--keys [^ ]*' "$1/log.txt" | head -1 | cut -d' ' -f2; }

{
  echo "# default behaviour: old vs new tgnonlin, no --query-timeout, ${CAP}s cap"
  echo "# old: $OLD  sha256 $(shasum -a 256 "$OLD" | cut -c1-16)"
  echo "# new: $NEW  sha256 $(shasum -a 256 "$NEW" | cut -c1-16)"
  for c in $CONTRACTS; do
    d="$REP/$c"; n=$(basename "$c"); smt="$d/${n}_updated.smt2"
    [ -s "$smt" ] || { echo "$c: no .smt2, skipped"; continue; }
    k=$(keys_of "$d")
    mkdir -p "$W/old/$n" "$W/new/$n"
    (cd "$W/old/$n" && cap "$OLD" --keys "$k" "$smt" > out.txt 2>&1 || true)
    (cd "$W/new/$n" && cap "$NEW" --keys "$k" "$smt" > out.txt 2>&1 || true)
    t_old=$(grep -c "NEW TEST" "$W/old/$n/testgen.txt" 2>/dev/null || true)
    t_new=$(grep -c "NEW TEST" "$W/new/$n/testgen.txt" 2>/dev/null || true)
    if cmp -s "$W/old/$n/testgen.txt" "$W/new/$n/testgen.txt"; then v=IDENTICAL; else v=DIFFERENT; fi
    echo "$c: testgen.txt $v (tests old=$t_old new=$t_new); new printed: $(grep -a -m1 'query timeout (ms)' "$W/new/$n/out.txt")"
  done
} | tee "$EV/default_unchanged.txt"

{
  echo "# new tgnonlin with --query-timeout 1 (ms), ${CAP}s cap: query_log.txt per contract"
  for c in $CONTRACTS; do
    d="$REP/$c"; n=$(basename "$c"); smt="$d/${n}_updated.smt2"
    [ -s "$smt" ] || continue
    k=$(keys_of "$d"); mkdir -p "$W/t1/$n"
    (cd "$W/t1/$n" && cap "$NEW" --query-timeout 1 --keys "$k" "$smt" > out.txt 2>&1 || true)
    q="$W/t1/$n/query_log.txt"
    total=$(wc -l < "$q" | tr -d ' '); to=$(grep -c 'reason=timeout' "$q" || true)
    other=$(grep -v -c 'timeout_ms=1 ' "$q" || true)
    echo "== $c: $total queries, $to hit the timeout, $other lines without timeout_ms=1"
    head -12 "$q"
    grep -a QUERY_UNKNOWN "$W/t1/$n/out.txt" | head -5
  done
} | tee "$EV/timeout_fires.txt"

{
  echo "# solTg -qt passes the timeout to tgnonlin (one contract, -t 20)"
  P="$W/proj"; forge init --no-git "$P" >/dev/null 2>&1; rm -f "$P"/src/*.sol "$P"/test/*.sol "$P"/script/*.sol
  mkdir -p "$P/src/regression"; cp "$REPO/regression/bytes.sol" "$P/src/regression/"
  for qt in "" 5 0.001; do
    rm -rf "$P/_r"
    (cd "$P" && script -q /dev/null solTg -i src/regression/bytes.sol -o _r -t 20 ${qt:+-qt $qt} < /dev/null > run.log 2>&1 || true)
    L="$P/_r/regression/bytes/log.txt"
    echo "== solTg ${qt:+-qt $qt}"; [ -n "$qt" ] || echo "   (no -qt)"
    grep -a -m1 -o "tgnonlin[^ ]* .*--keys" "$L" | sed 's/--keys$/--keys .../' || true
    grep -a -m1 'query timeout (ms)' "$L" || true
    echo "query_log: $(wc -l < "$P/_r/regression/bytes/query_log.txt" | tr -d ' ') queries, $(grep -c 'reason=timeout' "$P/_r/regression/bytes/query_log.txt" || true) timeouts"
  done
} | tee "$EV/flag_passthrough.txt"
rm -rf "$W"
echo "evidence -> $EV"
