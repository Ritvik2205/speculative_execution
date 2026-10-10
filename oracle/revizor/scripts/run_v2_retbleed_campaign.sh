#!/bin/bash
# run_v2_retbleed_campaign.sh — hardware ground truth for SPECTRE_V2 and
# RETBLEED on the i5-8300H, as the V4/SSB control did for store bypass.
#
# WHY A SEPARATE SCRIPT, NOT A REVIZOR CAMPAIGN. Revizor cannot test these two
# classes: its contract-execution clauses are conditional branch, store bypass
# and fault/assist transients only (rvzr/config.py), and its x86 config
# excludes BASE-CALL/BASE-RET from the instruction pool. So there is no
# Revizor clause to fuzz V2 or RETBLEED with. The i5-8300H, however, IS an
# affected part (Coffee Lake, no eIBRS; CVE-2022-29901 covers Skylake..Coffee
# Lake, and the RETBLEED paper demonstrated it on Coffee Lake). The missing
# piece is test tooling, and the honest tool here is a known, published
# proof-of-concept run under a mitigation control.
#
# WHAT THIS SCRIPT IS. A RUNNER and LABELLER, not an exploit. It does NOT
# contain a V2 or RETBLEED attack. It drives a PoC BINARY you supply, which
# must come from a published artifact, and it does three things the raw PoC
# does not:
#   1. records the CPU's mitigation state for the class (the sysfs
#      vulnerabilities file), so a result is interpretable;
#   2. runs the PoC with the mitigation OFF and then ON -- the control that
#      makes a leak attributable to the mechanism rather than to noise, exactly
#      as SSBD off->on did for V4 (15 -> 0);
#   3. requires the PoC to print BYTE-MATCH output ("RECOVERED k/N" where the
#      recovered bytes equal the known secret), never a confident-hit count.
#      Counting hits instead of matching bytes is the bug that produced this
#      repo's retracted "V4 40/40" result; this script refuses to label on it.
#
# WHERE THE PoC COMES FROM. Do not write one for this. Use a published one:
#   - SPECTRE_V2: Google SafeSide (already a corpus source in the paper) ships
#     a BTB-poisoning PoC; build its V2 example.
#   - RETBLEED: the authors' artifact (comsec-group / ETH Zurich) provides the
#     Coffee Lake PoC.
# Point --v2-poc / --retbleed-poc at the built binary. Each must, on this
# machine, print a final line matching the regex in VERIFY_RE below when it
# recovers the secret, and nothing matching it when it does not.
#
# Usage (on the i5, as root):
#   sudo bash oracle/revizor/scripts/run_v2_retbleed_campaign.sh \
#     --v2-poc /path/to/safeside_v2 \
#     --retbleed-poc /path/to/retbleed_poc \
#     [--reps 5] [--out ~/rvzr_runs/v2_retbleed_<date>]
# Either --*-poc may be omitted to run just one class.
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$SCRIPT_DIR/../../.." && pwd)"
REPS=5
V2_POC=""
RETBLEED_POC=""
OUT="$HOME/rvzr_runs/v2_retbleed_$(date +%y%m%d_%H%M)"
# A verdict line the PoC must print on success: the number of CORRECT bytes
# recovered, e.g. "RECOVERED 40/40". Byte-match, not hit-count.
VERIFY_RE='RECOVERED ([0-9]+)/([0-9]+)'

while [ $# -gt 0 ]; do
  case "$1" in
    --v2-poc) V2_POC="$2"; shift 2;;
    --retbleed-poc) RETBLEED_POC="$2"; shift 2;;
    --reps) REPS="$2"; shift 2;;
    --out) OUT="$2"; shift 2;;
    -h|--help) sed -n '2,52p' "$0"; exit 0;;
    *) echo "FATAL: unknown argument '$1'"; exit 1;;
  esac
done

# --- host guard: same requirement as the other i5 scripts --------------------
[ "$(uname -m)" = "x86_64" ] && [ "$(uname -s)" = "Linux" ] || {
  echo "FATAL: needs the i5-8300H bare-metal Linux box. These PoCs leak from a"
  echo "       real Intel microarchitecture; there is no substitute on Apple"
  echo "       Silicon or in a VM. See README_where_to_run.md."; exit 1; }
[ "$EUID" -eq 0 ] || { echo "FATAL: run with sudo (mitigation toggles and the"
  echo "       PoCs need privileged access to MSRs / sysfs)."; exit 1; }
[ -n "$V2_POC$RETBLEED_POC" ] || { echo "FATAL: pass --v2-poc and/or --retbleed-poc"
  echo "       (built from a published artifact; this script ships no exploit)."; exit 1; }

mkdir -p "$OUT"
LOG="$OUT/campaign.log"
exec > >(tee -a "$LOG") 2>&1
echo "=== V2/RETBLEED hardware campaign: $(date) ==="
grep -m1 "model name" /proc/cpuinfo
echo "microcode: $(grep -m1 microcode /proc/cpuinfo)"
uname -r
echo "cmdline: $(cat /proc/cmdline)"

# vuln_file CLASS -> the sysfs vulnerabilities file whose mitigation is toggled
vuln_file() {
  case "$1" in
    SPECTRE_V2) echo /sys/devices/system/cpu/vulnerabilities/spectre_v2;;
    RETBLEED)   echo /sys/devices/system/cpu/vulnerabilities/retbleed;;
  esac
}

emit() {  # CLASS  MIT_STATE("off"|"on")  REP  HITS  TOTAL  OUTCOME
  python3 - "$@" "$OUT/labels.jsonl" <<'PY'
import json, sys
cls, mit, rep, hits, total, outcome, path = sys.argv[1:8]
rec = {"vuln_class": cls, "mitigation": mit, "rep": int(rep),
       "recovered_correct": int(hits), "secret_len": int(total),
       "outcome": outcome, "source": "revizor_hw_i5_8300h_poc",
       "oracle": "flush_reload_bytematch"}
with open(path, "a") as f:
    f.write(json.dumps(rec) + "\n")
PY
}

run_class() {  # CLASS  POC_BINARY
  local cls="$1" poc="$2"
  [ -n "$poc" ] || return 0
  [ -x "$poc" ] || { echo "FATAL: $cls PoC '$poc' is not executable"; exit 1; }
  local vf; vf="$(vuln_file "$cls")"
  echo ""
  echo "########## $cls ##########"
  echo "mitigation reported by kernel: $(cat "$vf" 2>/dev/null || echo '(file absent)')"
  echo "NOTE: the kernel vulnerabilities file reflects the mitigation this"
  echo "      boot applied. To run the OFF arm you must have booted with the"
  echo "      class mitigation disabled on the kernel command line (see the"
  echo "      per-class note printed below); this script records the state but"
  echo "      cannot change a boot-time mitigation at runtime."
  case "$cls" in
    SPECTRE_V2) echo "      OFF arm: boot with spectre_v2=off (and nospectre_v2 on older kernels).";;
    RETBLEED)   echo "      OFF arm: boot with retbleed=off.";;
  esac

  local state; state="$(cat "$vf" 2>/dev/null | grep -qi "vulnerable" && echo off || echo on)"
  echo "interpreting this boot as the mitigation-$state arm"
  local wd="$OUT/${cls,,}"; mkdir -p "$wd"
  for r in $(seq 1 "$REPS"); do
    local raw; raw="$("$poc" 2>&1)"
    echo "$raw" > "$wd/rep_${state}_${r}.log"
    if [[ "$raw" =~ $VERIFY_RE ]]; then
      local hits="${BASH_REMATCH[1]}" total="${BASH_REMATCH[2]}" outcome
      # leak only if a MAJORITY of bytes were recovered CORRECTLY; a handful of
      # lucky bytes is noise, not recovery.
      if [ "$hits" -ge $(( (total + 1) / 2 )) ]; then outcome=leak; else outcome=safe; fi
      echo "  rep $r (mit=$state): RECOVERED $hits/$total -> $outcome"
      emit "$cls" "$state" "$r" "$hits" "$total" "$outcome"
    else
      echo "  rep $r (mit=$state): PoC printed no byte-match verdict line"
      echo "    (expected a line matching: $VERIFY_RE)"
      emit "$cls" "$state" "$r" 0 0 no_verdict
    fi
  done
}

run_class SPECTRE_V2 "$V2_POC"
run_class RETBLEED   "$RETBLEED_POC"

echo ""
echo "=== done: $(date). Labels: $OUT/labels.jsonl ==="
echo "To establish the control, run once booted WITH the mitigation and once"
echo "booted WITHOUT it; a class is confirmed only if it leaks on the OFF boot"
echo "and stops on the ON boot, as SSBD did for V4 (15 -> 0). Then convert the"
echo "leaking PoC's victim to training records with the existing converter."
