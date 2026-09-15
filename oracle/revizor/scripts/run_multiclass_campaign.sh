#!/bin/bash
# run_multiclass_campaign.sh — generalized multi-class, multi-seed Revizor
# campaign driver for the i5-8300H bare-metal box. Grows the real-hardware
# gadget corpus (SPECTRE_V4, MDS, L1TF, SPECTRE_V1 by default) so the
# held-out sets (currently V4=5, L1TF=2, MDS=1, SPECTRE_V1=1 unique
# real-hardware gadgets) stop being the paper's weakest flank.
#
# CRITICAL: re-running a program_generator_seed regenerates BYTE-IDENTICAL
# programs. That's why the prior V4/SSB campaign (hardcoded seeds
# `1000000 2222222 3333333 4444444 5555555`) never grew V4 past 16 unique
# gadgets on a follow-up run -- it reused the same five seeds. This script
# refuses to repeat that: every seed it runs goes through
# oracle/revizor/scripts/seed_ledger.py against
# oracle/revizor/scripts/used_seeds.txt, which REFUSES any seed already
# recorded there and records every seed this run actually uses.
#
# Usage:
#   sudo bash oracle/revizor/scripts/run_multiclass_campaign.sh \
#     [--classes "SPECTRE_V4 MDS L1TF SPECTRE_V1"] \
#     [--seeds "1234567 7654321 ..."] [--n-seeds N] \
#     [--n 1000] [--inputs 100] [--timeout 900]
#
# --seeds and --n-seeds are mutually exclusive; one is required.
#
# HOST: this only runs on the i5-8300H bare-metal Linux box. Revizor needs
# a real x86-64 host with its rvzr_executor kernel module reading actual
# hardware performance counters -- it CANNOT run in Docker on an
# Apple-Silicon Mac (no real x86 microarchitecture to leak from). See
# oracle/revizor/scripts/README_where_to_run.md.
#
# Directory naming: violations land in
#   $RUNS/mc_<timestamp>/<class-lower>/<seed>/violation-*/
#   $RUNS/mc_<timestamp>/<class-lower>/ssbp_on/<seed>/violation-*/   (V4 control)
#   $RUNS/mc_<timestamp>/<class-lower>/smtoff/<seed>/violation-*/   (V4 control)
# `<class-lower>` (spectre_v4/mds/l1tf/spectre_v1) is deliberately an exact
# path component: oracle/revizor/convert_revizor_gadgets.py's
# infer_class_from_path matches on exactly these strings, so the existing
# converter (unmodified) can classify freshly produced violations. See
# oracle/revizor/scripts/class_config.py for the class<->config mapping and
# the note on why this naming matters.
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO=/home/ritvik/speculative_execution
VENV=/home/ritvik/sca-fuzzer/venv
SPEC=/home/ritvik/sca-fuzzer/base_x86.json
DEMO_CONFIGS="$SCRIPT_DIR/../demo_configs"
LEDGER="$SCRIPT_DIR/used_seeds.txt"
RUNS=/home/ritvik/rvzr_runs
PYTHON=python3

N=1000
I=100
TIMEOUT=900
CLASSES="SPECTRE_V4 MDS L1TF SPECTRE_V1"
SEEDS=""
N_SEEDS=""

usage() {
  cat <<'EOF'
Usage: run_multiclass_campaign.sh [--classes "C1 C2 ..."]
         [--seeds "s1 s2 ..." | --n-seeds N]
         [--n 1000] [--inputs 100] [--timeout 900]

  --classes   space-separated vulnerability classes (default: all four --
              SPECTRE_V4 MDS L1TF SPECTRE_V1)
  --seeds     space-separated explicit program_generator_seed list. Refused
              if any seed is already in used_seeds.txt.
  --n-seeds   generate this many FRESH seeds (guaranteed absent from
              used_seeds.txt) instead of an explicit list.
  --n         rvzr fuzz -n (test cases per campaign; default 1000)
  --inputs    rvzr fuzz -i (inputs per test case; default 100)
  --timeout   rvzr fuzz --timeout in seconds (default 900)

--seeds and --n-seeds are mutually exclusive; exactly one is required.
EOF
}

# --- argument parsing --------------------------------------------------------
while [ $# -gt 0 ]; do
  case "$1" in
    --classes) CLASSES="$2"; shift 2;;
    --seeds) SEEDS="$2"; shift 2;;
    --n-seeds) N_SEEDS="$2"; shift 2;;
    --n) N="$2"; shift 2;;
    --inputs) I="$2"; shift 2;;
    --timeout) TIMEOUT="$2"; shift 2;;
    -h|--help) usage; exit 0;;
    *) echo "FATAL: unknown argument '$1'"; usage; exit 1;;
  esac
done

if [ -n "$SEEDS" ] && [ -n "$N_SEEDS" ]; then
  echo "FATAL: pass either --seeds or --n-seeds, not both"
  exit 1
fi
if [ -z "$SEEDS" ] && [ -z "$N_SEEDS" ]; then
  echo "FATAL: must pass --seeds \"<list>\" or --n-seeds N"
  usage
  exit 1
fi

# =============================================================================
# HOST GUARD — fail loudly, never silently no-op. Docker-on-macOS is NOT
# supported: it emulates/virtualizes an x86 Linux userspace but has no real
# Intel/AMD microarchitecture underneath for the hardware PMU counters or
# speculative-execution behavior Revizor measures.
# =============================================================================
HOST_OK=1

ARCH="$(uname -m)"
if [ "$ARCH" != "x86_64" ]; then
  echo "FATAL: this must run on a real x86-64 host (uname -m = '$ARCH')."
  echo "       Revizor's rvzr_executor kernel module reads actual hardware"
  echo "       performance counters and controls speculation on the physical"
  echo "       CPU -- there is no substitute on Apple Silicon (arm64),"
  echo "       INCLUDING under Docker Desktop for Mac. Docker on macOS runs a"
  echo "       Linux VM, but that VM has no real Intel/AMD microarchitecture"
  echo "       to leak from, so no PMU counters and no rvzr_executor module."
  echo "       Run this on the i5-8300H bare-metal Linux box instead. See"
  echo "       oracle/revizor/scripts/README_where_to_run.md."
  HOST_OK=0
fi

OS="$(uname -s)"
if [ "$OS" != "Linux" ]; then
  echo "FATAL: this must run on Linux (uname -s = '$OS')."
  echo "       Revizor's executor is a Linux kernel module (rvzr_executor);"
  echo "       it does not build or load on macOS at all."
  HOST_OK=0
fi

if [ "$HOST_OK" -eq 1 ]; then
  if ! lsmod | grep -q rvzr_executor; then
    echo "FATAL: the rvzr_executor kernel module is not loaded."
    echo "       Build and load it:"
    echo "         cd /home/ritvik/sca-fuzzer/rvzr/executor_km"
    echo "         make"
    echo "         sudo insmod rvzr_executor.ko"
    echo "         lsmod | grep rvzr_executor   # confirm"
    echo "       (see oracle/revizor/scripts/run_v4_ssb_campaign.sh step 1, or"
    echo "       oracle/revizor/scripts/README_where_to_run.md)"
    HOST_OK=0
  fi
fi

if [ "$HOST_OK" -ne 1 ]; then
  echo ""
  echo "Refusing to run: this script only runs on the i5-8300H bare-metal"
  echo "Linux box. See oracle/revizor/scripts/README_where_to_run.md for"
  echo "where each oracle tool (Revizor vs. Spectector) actually runs."
  exit 1
fi

# =============================================================================
# CLASS -> CONFIG MAP + validation
# =============================================================================
eval "$($PYTHON "$SCRIPT_DIR/class_config.py" --bash)"

for cls in $CLASSES; do
  if [ -z "${CLASS_CONFIG[$cls]:-}" ]; then
    echo "FATAL: unknown class '$cls'. Known classes: ${!CLASS_CONFIG[@]}"
    exit 1
  fi
done

# =============================================================================
# SEED RESOLUTION (fresh generation, or validate an explicit list) — the
# used-seed ledger is the guard that makes duplicate-gadget runs impossible.
# =============================================================================
if [ -n "$N_SEEDS" ]; then
  SEEDS="$($PYTHON "$SCRIPT_DIR/seed_ledger.py" --ledger "$LEDGER" generate --n "$N_SEEDS")"
  if [ $? -ne 0 ] || [ -z "$SEEDS" ]; then
    echo "FATAL: could not generate $N_SEEDS fresh seed(s) — see error above"
    exit 1
  fi
  SEEDS="$(echo "$SEEDS" | tr '\n' ' ')"
fi

if ! $PYTHON "$SCRIPT_DIR/seed_ledger.py" --ledger "$LEDGER" check $SEEDS; then
  echo "FATAL: one or more seeds are already in the used-seed ledger ($LEDGER)."
  echo "       Re-running a used program_generator_seed regenerates"
  echo "       byte-identical programs and grows nothing. Use --n-seeds to"
  echo "       generate fresh ones instead."
  exit 1
fi

# =============================================================================
# ENVIRONMENT CHECKS (root + required binaries) — checked before reserving
# seeds in the ledger, so a broken environment doesn't burn fresh seeds.
# =============================================================================
if [ "$EUID" -ne 0 ]; then
  echo "FATAL: must run as root (sudo) — rvzr fuzz needs the executor module."
  exit 1
fi
for f in "$VENV/bin/rvzr" "$SPEC"; do
  [ -e "$f" ] || { echo "FATAL: missing $f"; exit 1; }
done
for cls in $CLASSES; do
  cfg_base="$DEMO_CONFIGS/${CLASS_CONFIG[$cls]}"
  [ -e "$cfg_base" ] || { echo "FATAL: missing base config $cfg_base for class $cls"; exit 1; }
done

RVZR="$VENV/bin/rvzr"

# =============================================================================
# RESERVE the seeds in the ledger — from here on, these seeds are spent
# whether or not the fuzzing runs find any violations.
# =============================================================================
if ! $PYTHON "$SCRIPT_DIR/seed_ledger.py" --ledger "$LEDGER" append $SEEDS; then
  echo "FATAL: failed to reserve seeds in the ledger — aborting before any fuzzing"
  exit 1
fi

# =============================================================================
# SET UP RUN DIRECTORY + LOGGING
# =============================================================================
TS="$(date +%y%m%d_%H%M%S)"
CAMPAIGN_ROOT="$RUNS/mc_$TS"
CFGDIR="/tmp/multiclass_configs_$TS"
mkdir -p "$RUNS" "$CAMPAIGN_ROOT" "$CFGDIR"
LOG="$RUNS/campaign_$TS.log"
exec > >(tee -a "$LOG") 2>&1

echo "=== multiclass campaign start: $(date) ==="
echo "classes: $CLASSES"
echo "seeds:   $SEEDS"
echo "n=$N inputs=$I timeout=$TIMEOUT"
echo "campaign root: $CAMPAIGN_ROOT"
echo ""
echo "--- environment ---"
grep -m1 "model name" /proc/cpuinfo
echo "spec_store_bypass: $(cat /sys/devices/system/cpu/vulnerabilities/spec_store_bypass 2>/dev/null || echo unknown)"
echo "smt: $(cat /sys/devices/system/cpu/smt/control 2>/dev/null || echo unknown)"
uname -r

cd "$REPO" || exit 1

# --- config generation helpers -----------------------------------------------
make_seeded_config () {  # $1=base_yaml $2=seed $3=out_yaml
  local base="$1" seed="$2" out="$3"
  if grep -q '^program_generator_seed:' "$base"; then
    sed "s/^program_generator_seed:.*/program_generator_seed: $seed/" "$base" > "$out"
  else
    cp "$base" "$out"
    printf '\nprogram_generator_seed: %s\n' "$seed" >> "$out"
  fi
}

make_v4_ssbp_on_config () {  # $1=base_yaml $2=seed $3=out_yaml
  local base="$1" seed="$2" out="$3"
  make_seeded_config "$base" "$seed" "$out"
  sed -i "s/^x86_executor_enable_ssbp_patch:.*/x86_executor_enable_ssbp_patch: true/" "$out"
}

run_fuzz () {  # $1=config $2=workdir $3=label
  echo ""
  echo "=== FUZZ [$3] cfg=$1 wd=$2 : $(date +%H:%M:%S) ==="
  mkdir -p "$2"
  "$RVZR" fuzz -s "$SPEC" -c "$1" -n "$N" -i "$I" -w "$2" --nonstop --timeout "$TIMEOUT"
  local v
  v=$(find "$2" -maxdepth 1 -name 'violation-*' -type d 2>/dev/null | wc -l)
  echo "=== [$3] violations: $v ==="
}

# =============================================================================
# MAIN LOOP: per class, per seed
# =============================================================================
declare -A RESULT_COUNTS

for cls in $CLASSES; do
  cfg_base="$DEMO_CONFIGS/${CLASS_CONFIG[$cls]}"
  cls_lower="$(echo "$cls" | tr '[:upper:]' '[:lower:]')"

  echo ""
  echo "########## CLASS $cls (cfg=${CLASS_CONFIG[$cls]}) ##########"
  for seed in $SEEDS; do
    seeded_cfg="$CFGDIR/${cls_lower}_${seed}.yaml"
    make_seeded_config "$cfg_base" "$seed" "$seeded_cfg"
    wd="$CAMPAIGN_ROOT/$cls_lower/$seed"
    run_fuzz "$seeded_cfg" "$wd" "$cls seed=$seed"
    v=$(find "$wd" -maxdepth 1 -name 'violation-*' -type d 2>/dev/null | wc -l)
    RESULT_COUNTS["$cls $seed"]="$v"
  done
done

# =============================================================================
# SPECTRE_V4 CONTROLS (SSBP-on mitigated control + SMT-off re-test) — only
# meaningful against violations to explain, so skipped if the unmitigated
# pass found none.
# =============================================================================
case " $CLASSES " in
  *" SPECTRE_V4 "*)
    v4_total=0
    for seed in $SEEDS; do
      v4_total=$((v4_total + ${RESULT_COUNTS["SPECTRE_V4 $seed"]:-0}))
    done
    echo ""
    echo "########## SPECTRE_V4 unmitigated total violations: $v4_total ##########"

    if [ "$v4_total" -gt 0 ]; then
      cfg_base="$DEMO_CONFIGS/${CLASS_CONFIG[SPECTRE_V4]}"

      echo ""
      echo "########## SPECTRE_V4 control: SSBP ON, expect 0 ##########"
      for seed in $SEEDS; do
        ctrl_cfg="$CFGDIR/spectre_v4_ssbp_on_${seed}.yaml"
        make_v4_ssbp_on_config "$cfg_base" "$seed" "$ctrl_cfg"
        wd="$CAMPAIGN_ROOT/spectre_v4/ssbp_on/$seed"
        run_fuzz "$ctrl_cfg" "$wd" "SPECTRE_V4 SSBP-on seed=$seed"
      done

      echo ""
      echo "########## SPECTRE_V4 control: SMT-off re-test ##########"
      SMT_WAS="$(cat /sys/devices/system/cpu/smt/control)"
      echo off > /sys/devices/system/cpu/smt/control
      echo "smt now: $(cat /sys/devices/system/cpu/smt/control)"
      for seed in $SEEDS; do
        seeded_cfg="$CFGDIR/spectre_v4_${seed}.yaml"
        wd="$CAMPAIGN_ROOT/spectre_v4/smtoff/$seed"
        run_fuzz "$seeded_cfg" "$wd" "SPECTRE_V4 SMT-off seed=$seed"
      done
      echo "$SMT_WAS" > /sys/devices/system/cpu/smt/control
      echo "smt restored: $(cat /sys/devices/system/cpu/smt/control)"
    else
      echo "########## SPECTRE_V4 unmitigated pass found 0 violations — skipping"
      echo "########## the SSBP-on control and SMT-off re-test (they only mean"
      echo "########## something against violations to explain) ##########"
    fi
    ;;
esac

# =============================================================================
# SUMMARY
# =============================================================================
echo ""
echo "=== per class/seed violation counts ==="
printf '%-14s %-12s %s\n' "CLASS" "SEED" "VIOLATIONS"
for cls in $CLASSES; do
  for seed in $SEEDS; do
    printf '%-14s %-12s %s\n' "$cls" "$seed" "${RESULT_COUNTS["$cls $seed"]:-0}"
  done
done

echo ""
echo "=== new-vs-duplicate gadget summary (vs eval/data/revizor_*_real.jsonl) ==="
$PYTHON "$SCRIPT_DIR/count_new_gadgets.py" --classes $CLASSES --run-root "$CAMPAIGN_ROOT"

echo ""
echo "=== campaign end: $(date) ==="
echo "log: $LOG"
echo "run root: $CAMPAIGN_ROOT"
