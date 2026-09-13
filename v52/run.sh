#!/usr/bin/env bash
set -euo pipefail

# v52: whole-file sequences with call-target neutralization
#
# Changes from v51 (96.07%):
#   1. ONE record per source_file × compiler × opt (not per function).
#      Concatenates all non-boilerplate functions into a single sequence.
#      Eliminates mislabeled "benign main" records.
#   2. All call/branch targets neutralized: callq _spectre_v1_victim → callq <fn>
#      Removes all name-based signal. calls_attack_fn feature = always 0.
#   3. MAX_NODES=256 (up from 128) to handle longer whole-file sequences.
#   4. Locked test set from v50_test.jsonl (unchanged from v51).

pip install -q -r requirements.txt

mkdir -p viz_v52 data

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v52_train.jsonl \
  --test-data  data/v52_test.jsonl \
  --output-dir viz_v52 \
  --viz-dir    viz_v52 \
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
echo "=== v52 Results (whole-file sequences, call-target neutralization) ==="
python3 -c "
import json
m = json.load(open('viz_v52/gine_metrics.json'))
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
