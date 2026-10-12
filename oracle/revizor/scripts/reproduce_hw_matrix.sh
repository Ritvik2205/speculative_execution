#!/usr/bin/env bash
# Replay recorded Revizor violations on real hardware and record the verdict.
#
# Why this exists: pasting a multi-line `sudo bash -c '...'` into a terminal
# mangles the `-i <inputs>` continuation line, so rvzr silently runs WITHOUT the
# recorded inputs and generates random ones instead (Violations: 0, meaningless).
# Running a committed script file removes that failure mode entirely.
#
# Usage (as root, module must be loaded):
#   sudo bash oracle/revizor/scripts/reproduce_hw_matrix.sh
set -u

RVZR="${RVZR:-/home/ritvik/sca-fuzzer/venv/bin/rvzr}"
SPEC="${SPEC:-/home/ritvik/sca-fuzzer/base_x86.json}"
REPO="${REPO:-/home/ritvik/speculative_execution}"
OWNER="${SUDO_USER:-ritvik}"

cd "$REPO" || { echo "FATAL: cannot cd $REPO"; exit 1; }
[ -x "$RVZR" ] || { echo "FATAL: rvzr not found: $RVZR"; exit 1; }
[ -f "$SPEC" ] || { echo "FATAL: spec not found: $SPEC"; exit 1; }
grep -q '^rvzr_executor ' /proc/modules || { echo "FATAL: rvzr_executor module not loaded"; exit 1; }

SUMMARY="$REPO/rvzr_runs/reproduce_summary.tsv"
printf 'experiment\tdir\tn_inputs\ttest_cases\tviolations\tstatus\n' > "$SUMMARY"

shopt -s nullglob
dirs=( rvzr_runs/baseline/*/violation-* rvzr_runs/smt_off/*/violation-* \
       rvzr_runs/v4_4444444/violation-* rvzr_runs/v4_5555555/violation-* )

for d in "${dirs[@]}"; do
  [ -f "$d/program.asm" ] || continue
  [ -f "$d/reproduce.yaml" ] || { echo "skip (no reproduce.yaml): $d"; continue; }

  # collect recorded inputs into an array -- the whole point
  inputs=( "$d"/input_*.bin )
  n=${#inputs[@]}
  log="$d/reproduce.log"

  {
    echo "=== $d ==="
    echo "# n_inputs=$n  spec=$SPEC  $(date -Is)"
    if [ "$n" -eq 0 ]; then
      echo "ERROR: no input_*.bin in this dir -- cannot replay"
    else
      "$RVZR" reproduce -s "$SPEC" -c "$d/reproduce.yaml" -t "$d/program.asm" -i "${inputs[@]}" 2>&1
    fi
    echo
  } > "$log"              # truncate: one clean run, not appended garbage

  viol=$(grep -oE 'Violations: *[0-9]+' "$log" | tail -1 | grep -oE '[0-9]+')
  tc=$(grep -oE 'Test Cases: *[0-9]+' "$log" | tail -1 | grep -oE '[0-9]+')
  status="ok"
  if [ "$n" -eq 0 ]; then status="no_inputs"
  elif grep -qiE 'Traceback|not loaded|command not found|Permission denied' "$log"; then status="run_error"
  elif [ -z "$viol" ]; then status="no_verdict"
  fi
  exp=$(echo "$d" | cut -d/ -f2-3 | tr '/' '_')
  printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$exp" "$(basename "$d")" "$n" "${tc:-?}" "${viol:-?}" "$status" >> "$SUMMARY"
  echo "  $d  inputs=$n  test_cases=${tc:-?}  violations=${viol:-?}  [$status]"
done

chown -R "$OWNER" "$REPO/rvzr_runs"
echo
echo "=== summary written to $SUMMARY ==="
column -t -s$'\t' "$SUMMARY"
