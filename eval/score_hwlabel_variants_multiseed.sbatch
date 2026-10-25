#!/bin/bash
# ---------------------------------------------------------------------------
# Multiseed flip probe + reproducing-accuracy confirmation (tasks 2 & 3).
# Scores the HW fenced-variant flip test on all 5 current-code B1 detector
# seeds (rv_embed_specfix_s{1,7,13,21,42}; spec+embed+hand, 10-class). Each seed
# is gate-checked (must reproduce its OWN recorded v54 test acc) before its flip
# numbers are trusted; a seed that fails the gate is skipped, not averaged in.
# Delivers:
#   - task 3: per-seed reproducing test accuracy -> mean+/-std (the current-code
#     number to replace the stale viz_v54_spec 95.27/96.14 in the paper).
#   - task 2: per-seed flip (mean/strict separation) -> mean+/-std (turns the
#     single-seed flip=0 result into a multiseed one).
# CPU-only. Pull on head node first.
#   sbatch eval/score_hwlabel_variants_multiseed.sbatch
#   result: eval/hwlabel_variants/multiseed/<seed>/score.json + aggregate stdout
# ---------------------------------------------------------------------------
#SBATCH --job-name=flip_multiseed
#SBATCH --partition=Teaching
#SBATCH --mem=12000
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out eval/hwlabel_variants/multiseed

STAGED="eval/hwlabel_variants/_variants_821.jsonl"
git fetch -q origin hw-label-variants
git show origin/hw-label-variants:eval/data/revizor_hwlabel_variants.jsonl > "$STAGED" \
  || { echo "FATAL: stage variants" >&2; exit 1; }
echo "staged variants: $(grep -c . "$STAGED")"

SEEDS="${SEEDS:-s1 s7 s13 s21 s42}"
for s in $SEEDS; do
  d="eval/cluster_out/rv_embed_specfix_$s"
  [ -f "$d/gine_best.pt" ] || { echo "skip $s (no ckpt)"; continue; }
  echo "===== seed $s ($d) ====="
  python3 -u eval/score_hwlabel_variants.py \
    --checkpoint "$d/gine_best.pt" --metrics "$d/gine_metrics.json" \
    --train-data v54/data/v54_train.jsonl --test-data v54/data/v54_test.jsonl \
    --variants "$STAGED" --out-dir "eval/hwlabel_variants/multiseed/$s" \
    && echo "seed $s OK" || echo "seed $s gate-FAILED (rc=$?)"
done

echo; echo "===== AGGREGATE (tasks 2 & 3) ====="
python3 -I - <<'PY'
import json, glob, statistics as st
rows=[]
for f in sorted(glob.glob("eval/hwlabel_variants/multiseed/*/score.json")):
    d=json.load(open(f)); s=f.split("/")[-2]
    g=d["summary"]["reproduce_gate"]; pb=d["summary"]["per_base_flip"]
    rows.append((s, g.get("measured"), g.get("expected"),
                 pb["mean_separates_frac"], pb["strict_separates_frac"],
                 d["summary"]["per_base_flip"]["wrong_direction"]))
if not rows:
    print("no seed reproduced -> no score.json written"); raise SystemExit(0)
print(f"{'seed':5s} {'gate_acc':>9s} {'recorded':>9s} {'flip_mean':>9s} {'flip_strict':>11s} {'wrong_dir':>9s}")
for s,m,e,fm,fs,wd in rows:
    print(f"{s:5s} {m:9.4f} {e:9.4f} {fm:9.4f} {fs:11.4f} {wd:9d}")
accs=[r[1] for r in rows]
flips=[r[3] for r in rows]
print(f"\nTASK 3 reproducing test acc: mean={st.mean(accs):.4f} "
      f"sd={st.pstdev(accs):.4f} over n={len(accs)} seeds -> current-code detector accuracy")
print(f"TASK 2 flip mean-separation: mean={st.mean(flips):.4f} "
      f"sd={st.pstdev(flips):.4f} (0 = detector never separates mitigated from leaking)")
PY
echo "===== done ($(date)) ====="
