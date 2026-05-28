#!/usr/bin/env bash
set -euo pipefail

# v50: specificity filter + caller-context feature + phase15 broader PoC coverage + clang BHI
#
# Changes from v49 (88.10%):
#   1. Specificity filter on ALL splits: removes zero-attack-signal functions.
#      BHI train: 737→~342 (kept); test: 97→~20+p15 bonus.
#      Only functions with ≥1 attack-relevant opcode kept per class.
#   2. Caller-context inline feature (55→56 dim):
#      'calls_attack_fn' = 1.0 if any call target has attack-class keyword.
#      Fixes BHI caller functions: bl _branch_history_conditioner_bhi → signal.
#   3. Phase15 function-level extraction from 21 PoC repos:
#      gcc+clang × {O0,O1,O2,O3,Os} × {x86_64,arm64}, specificity-filtered.
#   4. Clang-compiled BHI training (match test distribution = clang-O1).

pip install -q -r requirements.txt

mkdir -p viz_v50 data

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v50_train.jsonl \
  --test-data  data/v50_test.jsonl \
  --output-dir viz_v50 \
  --viz-dir    viz_v50 \
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
echo "=== v50 Results (10-class, specificity-filtered + caller-context + phase15) ==="
python3 -c "
import json
m = json.load(open('viz_v50/gine_metrics.json'))
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
