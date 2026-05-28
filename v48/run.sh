#!/usr/bin/env bash
set -euo pipefail

# v48: BHI data fix + expanded hard negatives + indirect regex fix
#
# Changes from v47a (86.30%):
#   1. BHI data quality: dropped 250 phase13 BHI samples without indirect branches.
#      Phase13 synthetic BHI without blr/jmp* looked like INCEPTION/V1 to the model.
#      Kept all original phase2 BHI (ARM, real PoC) + 150 phase13 (with indirect).
#      Train: 8882 records (was 9132, -250 BHI).
#
#   2. Hard neg pairs expanded:
#      MDS<->L1TF       — both clflush+load; distinguish by verw/movntdqa presence
#      SPECTRE_V2<->RETBLEED — indirect vs return speculation
#
#   3. Fixed indirect branch regex: old form missed 'jmpq *%rax' (space before *).
#      Now uses full-line matching consistent with pdg_builder.py.

pip install -q -r requirements.txt

mkdir -p viz_v48

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v48_train.jsonl \
  --test-data  data/v48_test.jsonl \
  --output-dir viz_v48 \
  --viz-dir    viz_v48 \
  --epochs 100 \
  --patience 10 \
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
echo "=== v48 Results (10-class, BHI fix + hard neg expansion) ==="
python3 -c "
import json
m = json.load(open('viz_v48/gine_metrics.json'))
print(f\"Accuracy: {m['test_accuracy']*100:.2f}%  (epoch {m['best_epoch']})\")
print(f\"Train: {m.get('train_count','?')}  Test: {m.get('test_count','?')}\")
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
