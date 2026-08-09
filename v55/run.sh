#!/usr/bin/env bash
set -euo pipefail

# v55: Provably correct augmentation (6 bugs fixed in augment_asm_windows.py)
#
# Changes from v54 (95.75%):
#   1. rename_registers: fixed x86_r64/x86_r pool collision (rcx/r9 -> same r13).
#      Extended X86_REG to include rax/rbx/rcx/rdx/rsi/rdi for def-use tracking.
#   2. can_swap: added x86 branch guard (jcc not checked, incorrect reordering possible).
#   3. _X86_FLAG_CLOBBER: regex now matches size-suffixed mnemonics (addq, subl, etc.).
#   4. _ARM_BARRIER_SYNONYMS: removed downgrade paths (dsb sy -> dsb ish was allowed).
#   5. X86_LOAD: now matches movq/movl/etc. (bare "mov" missed all AT&T size-suffixed forms).
#   6. flip_branch_polarity: now guards jmpq*/callq* (64-bit AT&T indirect forms).
#
# Dataset: 774 originals re-augmented × 9 techniques × 5 copies + 601 external
# Test set LOCKED — identical to v53/v54 (1670 records) for direct comparison.
# Architecture UNCHANGED from v54: GINE v38, 128 hidden, 3 layers, JK-Cat.

pip install -q -r requirements.txt

mkdir -p viz_v55 data

# Build dataset with fixed augmentation
if [ ! -f data/v55_train.jsonl ]; then
  python3 build_dataset.py
fi

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v55_train.jsonl \
  --test-data  data/v55_test.jsonl \
  --output-dir viz_v55 \
  --viz-dir    viz_v55 \
  --epochs 120 \
  --patience 15 \
  --hidden-dim 128 \
  --num-layers 3 \
  --jk-mode cat \
  --batch-size 32 \
  --lr 1e-3 \
  --weight-decay 5e-4 \
  --dropout 0.5 \
  --lambda-con 0.5 \
  --temperature 0.07 \
  --hard-neg-weight 2.0 \
  --arch-emb-dim 8

echo ""
echo "=== v55 Results (provably correct augmentation) ==="
python3 -c "
import json
from pathlib import Path

def show(path, label):
    if not Path(path).exists():
        print(f'{label}: no metrics file')
        return
    m = json.load(open(path))
    print(f'{label}: test={m[\"test_accuracy\"]*100:.2f}%  val={m.get(\"best_val_acc\",0)*100:.2f}%  epoch={m[\"best_epoch\"]}')
    for k, v in m['classification_report'].items():
        if isinstance(v, dict) and 'recall' in v and k not in ('accuracy', 'macro avg', 'weighted avg'):
            print(f'  {k:<40s} rec={v[\"recall\"]:.3f}  prec={v[\"precision\"]:.3f}  f1={v[\"f1-score\"]:.3f}')

show('viz_v55/gine_metrics.json', 'v55')
print()
show('../v54/viz_v54/gine_metrics.json', 'v54 (reference)')
"
