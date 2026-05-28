#!/usr/bin/env bash
set -euo pipefail

# v51: v50 + SPECTRE_V4 specificity filter + phase17 L1TF/MDS expansion
#
# Changes from v50 (97.79%):
#   1. SPECTRE_V4 specificity filter added (lfence/rdtsc/nop-sled ≥ 3).
#      V4 test: 197 → 159 (38 boilerplate functions removed).
#   2. Phase17 expansion: L1TF 109→194 train, MDS 135→159 train, V4 +24 new.
#   3. Parser fix: '## -- Begin function' (x86_64 macOS) now parsed correctly.
#      Phase15/16 x86_64 records were previously lumped into one _unknown function.
#   4. Post-clean dedup: hashes computed after label-line stripping (fixes
#      11-record hash collision from v50).

pip install -q -r requirements.txt

mkdir -p viz_v51 data

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v51_train.jsonl \
  --test-data  data/v51_test.jsonl \
  --output-dir viz_v51 \
  --viz-dir    viz_v51 \
  --epochs 100 \
  --patience 12 \
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
echo "=== v51 Results (10-class, V4 filter + phase17 expansion) ==="
python3 -c "
import json
m = json.load(open('viz_v51/gine_metrics.json'))
print(f\"Test accuracy: {m['test_accuracy']*100:.2f}%  (best epoch {m['best_epoch']})\")
print(f\"Best val acc:  {m.get('best_val_acc',0)*100:.2f}%\")
print(f\"Train: {m.get('train_count','?')}  Val: {m.get('val_count','?')}  Test: {m.get('test_count','?')}\")
print()
print(f\"{'class':40s} {'prec':>7s} {'rec':>7s} {'f1':>7s} {'sup':>6s}\")
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f\"{k:40s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f} {int(v['support']):6d}\")
print()
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and k in ('macro avg', 'weighted avg'):
        print(f\"{k:40s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f}\")
print()
print('Edge scales:')
for k, v in sorted(m['final_edge_type_scales'].items()):
    print(f'  {k:<25} {v:.4f}')
"
