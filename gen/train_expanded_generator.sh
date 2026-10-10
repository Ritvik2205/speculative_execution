#!/bin/bash
# train_expanded_generator.sh — retrain the gadget generator on the richest
# reliable pool available without new hardware: the v54 corpus PLUS the 423
# hardware-confirmed Revizor violations (gen/build_hw_generator_pool.py) PLUS
# the idiomatic riscv train slice. The hardware gadgets are the most reliable
# class examples in the project (a real CPU showed each leaks); folding them in
# gives the generator real V1/V4/MDS/L1TF structure instead of only
# compiled/synthetic shapes, and the riscv slice keeps riscv64 in the vocabulary.
#
# Uses --per-arch-tokenizer (REQUIRED once riscv is in the pool: base.json
# mis-tokenizes riscv -> 0/100 assemblable) and --lr 1e-4 with --init-from (the
# 3e-3 default overwrites the transferred weights).
#
# Usage:
#   bash gen/train_expanded_generator.sh                 # defaults
#   SMOKE=1 bash gen/train_expanded_generator.sh         # 1 epoch, fast
#   EPOCHS=25 OUT=gen/generator_expanded.pt bash gen/train_expanded_generator.sh
set -uo pipefail
cd "$(dirname "$0")/.." || exit 1

PY=${PY:-.venv/bin/python}; [ -x "$PY" ] || PY=python3
INIT=${INIT:-gen/generator.pt}
OUT=${OUT:-gen/generator_expanded.pt}
EPOCHS=${EPOCHS:-20}; LR=${LR:-1e-4}; K=${K:-30}; N=${N:-30}
HW_POOL=gen/data/hw_generator_pool.jsonl
RISCV_SLICE=eval/data/riscv_train_slice.jsonl
HELDOUT=eval/data/riscv_eval_holdout.jsonl

echo "=== expanded generator retrain: $(date) ==="

# (re)build the hardware pool so it is always current with the corpora
"$PY" gen/build_hw_generator_pool.py || exit 1
[ -s "$HW_POOL" ] || { echo "FATAL: $HW_POOL empty"; exit 1; }

EXTRA="$HW_POOL"
[ -s "$RISCV_SLICE" ] && EXTRA="$EXTRA $RISCV_SLICE"

# leakage guard: the riscv EVAL HOLDOUT (or any of its groups) must not appear
if [ -s "$HELDOUT" ] && [ -s "$RISCV_SLICE" ]; then
  # shellcheck disable=SC2086
  "$PY" - "$HELDOUT" $EXTRA <<'PYEOF' || exit 1
import json, sys
held = {json.loads(l)["group"] for l in open(sys.argv[1]) if l.strip()}
bad = 0
for path in sys.argv[2:]:
    g = {json.loads(l).get("group") for l in open(path) if l.strip()}
    sh = held & g
    if sh:
        bad += len(sh); print(f"FATAL: {path} shares {len(sh)} eval-holdout group(s): {sorted(sh)[:3]}")
print("leakage guard: no shared groups with the riscv eval holdout" if not bad else "")
sys.exit(1 if bad else 0)
PYEOF
fi

ARGS=(--per-arch-tokenizer --extra-train $EXTRA --lr "$LR" --save "$OUT" --k "$K")
[ -s "$INIT" ] && ARGS+=(--init-from "$INIT")
if [ "${SMOKE:-0}" = "1" ]; then ARGS+=(--smoke); else ARGS+=(--epochs "$EPOCHS"); fi

echo "--- train: ${ARGS[*]}"
# shellcheck disable=SC2086
"$PY" gen/train_generator.py "${ARGS[@]}" || exit 1

if [ "${SMOKE:-0}" = "1" ]; then echo "=== smoke ok (no checkpoint saved under --smoke) ==="; exit 0; fi

echo "--- verify archs + measure per-ISA validity"
"$PY" - "$OUT" <<'PYEOF' || exit 1
import sys; sys.path.insert(0, "gen")
from generator import CondTransformerLM
v = CondTransformerLM.load(sys.argv[1]).vocab
print("archs:", list(v.archs), "classes:", len(v.classes), "vocab:", len(v))
PYEOF
"$PY" gen/isa_runnability.py --gen "$OUT" --n "$N" \
  --out gen/isa_runnability_expanded.md --json-out gen/isa_runnability_expanded.json || exit 1
echo "=== done: $(date); checkpoint $OUT ==="
