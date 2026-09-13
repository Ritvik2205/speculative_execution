#!/usr/bin/env bash
set -euo pipefail

# v49: full-gadget synthetic data + proper val split + class weights + wider PDG
#
# Changes from v48 (87.82%):
#   1. Phase14 full-gadget data (407 records, all 9 attack classes):
#      BHI 75/75 has_indirect, V2 55/55 has_indirect, INCEPTION nop_frac=0.525
#      MDS 15/50 has_verw, L1TF 25/35 clflush+rdtsc. Zero overlap with test.
#   2. Proper val split (10% of train for early stopping):
#      Previous: early stopping used test accuracy → test set implicitly optimized.
#      Now: val set carved from train; test evaluated exactly once at end.
#   3. Class-weighted CE: weight=1/sqrt(n_i), normalised to mean=1.
#      BENIGN 38.8% vs V4 4.9% = 8.5x raw imbalance; sqrt weighting → 2.7x.
#   4. MAX_NODES: 64→128 (12.6% of V1 functions truncated at 64)
#   5. speculative_window: 10→20 (default; wider SPEC_* edge window)
#   6. patience: 10→12 (val convergence slower than test convergence)

pip install -q -r requirements.txt

mkdir -p viz_v49

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v49_train.jsonl \
  --test-data  data/v49_test.jsonl \
  --output-dir viz_v49 \
  --viz-dir    viz_v49 \
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
echo "=== v49 Results (10-class, full-gadget + val split + class weights) ==="
python3 -c "
import json
m = json.load(open('viz_v49/gine_metrics.json'))
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
