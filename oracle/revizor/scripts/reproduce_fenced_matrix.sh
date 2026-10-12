#!/usr/bin/env bash
# Fenced-variant replay: for every recorded violation that REPRODUCES on this
# box (L1TF, SPECTRE_V1, SPECTRE_V4), build an lfence-hardened copy of its
# program and replay it with the SAME recorded inputs. If the baseline
# reproduces (violations=1) and the fenced copy does not (violations=0), the
# lfence mitigation is confirmed on silicon by the same replay method -- turning
# the mitigation labels into a hardware result, cheaply, with no exploit code.
#
# This inserts `lfence` after every instruction (the `fence_all` placement). It
# is a MITIGATION test on an existing Revizor test program, not an attack: no
# secret is exfiltrated and nothing new is generated.
#
# Usage (as root, module loaded):
#   sudo bash oracle/revizor/scripts/reproduce_fenced_matrix.sh
set -u

RVZR="${RVZR:-/home/ritvik/sca-fuzzer/venv/bin/rvzr}"
SPEC="${SPEC:-/home/ritvik/sca-fuzzer/base_x86.json}"
REPO="${REPO:-/home/ritvik/speculative_execution}"
OWNER="${SUDO_USER:-ritvik}"

cd "$REPO" || { echo "FATAL: cannot cd $REPO"; exit 1; }
[ -x "$RVZR" ] || { echo "FATAL: rvzr not found: $RVZR"; exit 1; }
[ -f "$SPEC" ] || { echo "FATAL: spec not found: $SPEC"; exit 1; }
grep -q '^rvzr_executor ' /proc/modules || { echo "FATAL: rvzr_executor module not loaded"; exit 1; }

SUMMARY="$REPO/rvzr_runs/reproduce_fenced_summary.tsv"
printf 'experiment\tdir\tn_inputs\tbaseline_viol\tfenced_viol\tverdict\n' > "$SUMMARY"

# only the classes whose recorded violations reproduce (MDS is 0/6, skip it)
shopt -s nullglob
dirs=( rvzr_runs/baseline/L1TF/violation-* \
       rvzr_runs/baseline/SPECTRE_V1/violation-* \
       rvzr_runs/v4_4444444/violation-* rvzr_runs/v4_5555555/violation-* )

for d in "${dirs[@]}"; do
  [ -f "$d/program.asm" ] || continue
  [ -f "$d/reproduce.yaml" ] || { echo "skip (no reproduce.yaml): $d"; continue; }
  inputs=( "$d"/input_*.bin )
  n=${#inputs[@]}
  [ "$n" -gt 0 ] || { echo "skip (no inputs): $d"; continue; }

  # fenced copy: lfence after every instruction line (not directives/labels/blank/comment)
  fenced="$d/program_fenced.asm"
  awk '{
    print $0
    s=$0; sub(/^[ \t]+/,"",s)
    if (s !~ /^\./ && s !~ /:[ \t]*$/ && s !~ /^#/ && s !~ /^$/ && s !~ /^\/\//)
      print "lfence"
  }' "$d/program.asm" > "$fenced"

  base_log="$d/reproduce.log"             # baseline from the prior matrix run
  fen_log="$d/reproduce_fenced.log"
  {
    echo "=== FENCED $d ==="
    echo "# n_inputs=$n  spec=$SPEC  $(date -Is)"
    "$RVZR" reproduce -s "$SPEC" -c "$d/reproduce.yaml" -t "$fenced" -i "${inputs[@]}" 2>&1
    echo
  } > "$fen_log"

  bviol=$(grep -oE 'Violations: *[0-9]+' "$base_log" 2>/dev/null | tail -1 | grep -oE '[0-9]+')
  fviol=$(grep -oE 'Violations: *[0-9]+' "$fen_log"  | tail -1 | grep -oE '[0-9]+')
  verdict="?"
  if [ "${bviol:-0}" -ge 1 ] && [ "${fviol:-1}" -eq 0 ]; then verdict="MITIGATED"
  elif [ "${fviol:-1}" -ge 1 ]; then verdict="still_leaks"
  fi
  exp=$(echo "$d" | cut -d/ -f2-3 | tr '/' '_')
  printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$exp" "$(basename "$d")" "$n" "${bviol:-?}" "${fviol:-?}" "$verdict" >> "$SUMMARY"
  echo "  $d  baseline=${bviol:-?}  fenced=${fviol:-?}  [$verdict]"
done

chown -R "$OWNER" "$REPO/rvzr_runs"
echo; echo "=== $SUMMARY ==="; column -t -s$'\t' "$SUMMARY"
