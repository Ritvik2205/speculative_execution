#!/bin/bash
# train_riscv_generator.sh — retrain the gadget generator so it can emit
# riscv64, and verify that what it emits is real machine code.
#
# Why a retrain is needed at all: the committed gen/generator.pt was
# conditioned on x86_64 and arm64 only, so riscv64 is not in its vocabulary
# and cannot be sampled, even though the spec, realizer, tokenizer, arch mask
# and emulator all cover riscv64. ARCHS in gen/train_generator.py already
# lists riscv64 and norm_arch already preserves it, so all that is missing is
# riscv records in the training pool.
#
# TWO THINGS MUST BE RIGHT or the run silently produces a useless model:
#
#  1. --per-arch-tokenizer. The trainer otherwise tokenizes every record with
#     base.json, whose addressing grammar does not match riscv. Measured on
#     eval/data/riscv_train_slice.jsonl: 0/100 of realized riscv sequences
#     assemble under base.json, 100/100 under riscv.json. Without this flag the
#     riscv half of the vocabulary is malformed and nothing downstream works.
#
#  2. --lr 1e-4 when using --init-from. train()'s default is 3e-3, the
#     from-scratch rate, which overwrites the transferred weights in the first
#     few steps. That is the documented cause of an earlier "pretraining does
#     nothing" result.
#
# Leakage: the generator trains on the TRAIN side of the riscv group split
# (eval/data/riscv_train_slice.jsonl, 428 records). The 66-record
# eval/data/riscv_eval_holdout.jsonl must never appear here, and this script
# refuses to run if it does.
#
# Usage:
#   bash gen/train_riscv_generator.sh                    # defaults below
#   EPOCHS=25 OUT=gen/generator_riscv.pt bash gen/train_riscv_generator.sh
#   SMOKE=1 bash gen/train_riscv_generator.sh            # 1 epoch, fast check
set -uo pipefail

cd "$(dirname "$0")/.." || exit 1

PY=${PY:-.venv/bin/python}
[ -x "$PY" ] || PY=python3
EXTRA=${EXTRA:-eval/data/riscv_train_slice.jsonl}
INIT=${INIT:-gen/generator.pt}
OUT=${OUT:-gen/generator_riscv.pt}
EPOCHS=${EPOCHS:-20}
LR=${LR:-1e-4}
K=${K:-30}
HOLDOUT=eval/data/riscv_eval_holdout.jsonl

echo "=== riscv generator retrain: $(date) ==="

# --- leakage guard -----------------------------------------------------------
for f in $EXTRA; do
  if [ "$(basename "$f")" = "$(basename "$HOLDOUT")" ]; then
    echo "FATAL: $f is the riscv EVAL HOLDOUT. Training on it would make every"
    echo "       downstream riscv number meaningless. Use the train slice."
    exit 1
  fi
  [ -s "$f" ] || { echo "FATAL: missing or empty $f"; exit 1; }
done

# Overlap by group: the split is a GROUP split, so a shared group is leakage
# even when no sequence is byte-identical.
if [ -s "$HOLDOUT" ]; then
  # shellcheck disable=SC2086
  $PY - "$HOLDOUT" $EXTRA <<'PYEOF' || exit 1
import json, sys
held = {json.loads(l)["group"] for l in open(sys.argv[1]) if l.strip()}
bad = 0
for path in sys.argv[2:]:
    groups = {json.loads(l)["group"] for l in open(path) if l.strip()}
    shared = held & groups
    if shared:
        bad += len(shared)
        print(f"FATAL: {path} shares {len(shared)} group(s) with the eval holdout, "
              f"e.g. {sorted(shared)[:3]}")
print("leakage guard: no shared groups with the riscv eval holdout" if not bad else "")
sys.exit(1 if bad else 0)
PYEOF
fi

# --- train -------------------------------------------------------------------
ARGS=(--per-arch-tokenizer --extra-train $EXTRA --lr "$LR" --save "$OUT" --k "$K")
[ -s "$INIT" ] && ARGS+=(--init-from "$INIT")
if [ "${SMOKE:-0}" = "1" ]; then ARGS+=(--smoke); else ARGS+=(--epochs "$EPOCHS"); fi

echo "--- train: ${ARGS[*]}"
# shellcheck disable=SC2086
$PY gen/train_generator.py "${ARGS[@]}" || exit 1

# --- verify ------------------------------------------------------------------
echo "--- verify riscv64 reached the vocabulary"
$PY - "$OUT" <<'PYEOF' || exit 1
import sys
sys.path.insert(0, "gen")
from generator import CondTransformerLM
v = CondTransformerLM.load(sys.argv[1]).vocab
print("archs:", list(v.archs), "classes:", len(v.classes), "vocab:", len(v))
if "riscv64" not in v.archs:
    print("FATAL: riscv64 is not in the checkpoint's archs; the retrain did not take")
    sys.exit(1)
PYEOF

echo "--- measure what it emits, per ISA (architectural validity, NOT leaks)"
$PY gen/isa_runnability.py --gen "$OUT" --n "${N:-30}" \
  --out gen/isa_runnability_riscv.md --json-out gen/isa_runnability_riscv.json || exit 1

echo "=== done: $(date). Checkpoint $OUT; table gen/isa_runnability_riscv.md ==="
