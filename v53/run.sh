#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# v53: Template-level split + no test specificity bias + strengthened train filter
#
# Red flags fixed vs v52/v52_b:
#   RF1  Template leakage:  all compiler/opt variants of a synthetic template
#        go entirely to train OR test. In v52/v52_b, 28.3% of test records
#        (98.7% of SPECTRE_V4 test records) came from templates also in training.
#        Fix: split 404 template families before assigning records.
#   RF2  Specificity filter on test:  has_attack_signal removed from test.
#        Test requires only length >= 4. Hard (low-signal) test cases are kept.
#   RF3  nop_run >= 3 standalone: RETBLEED/SPECTRE_V4 no longer pass training
#        specificity on NOP alignment padding alone. Require rdtsc or lfence.
#
# Unchanged:
#   SHA-256 dedup (zero hash overlap train/test)
#   Call-target neutralization (<fn>)
#   GINE v38 stack (9 edge types, 41 node features, 56 inline features)
#   Group-aware val split (StratifiedGroupKFold)

pip install -q -r requirements.txt

mkdir -p data viz_v53

if [[ "${SKIP_BUILD:-0}" != "1" ]]; then
  python3 build_dataset.py
else
  echo "[run.sh] SKIP_BUILD=1 — using existing data/v53_{train,test}.jsonl"
fi

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v53_train.jsonl \
  --test-data  data/v53_test.jsonl  \
  --output-dir viz_v53 \
  --viz-dir    viz_v53 \
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
  --arch-emb-dim 8 \
  --val-split group \
  --val-fraction 0.10

echo ""
echo "=== v53 Results (template-level split, no test specificity filter) ==="
python3 -c "
import json
m = json.load(open('viz_v53/gine_metrics.json'))
print(f\"Test accuracy: {m['test_accuracy']*100:.2f}%  (best epoch {m['best_epoch']})\")
print(f\"Best val acc:  {m.get('best_val_acc',0)*100:.2f}%\")
print(f\"Val protocol:  {m.get('val_split_protocol', '?')}\")
print(f\"Split mode:    {m.get('split_mode', '?')}\")
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
"
