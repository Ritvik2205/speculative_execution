#!/usr/bin/env python3
"""
ablation_features.py — Phase 1 validation: learned vs hand-engineered features.

Trains a RandomForest on the v54 train split and evaluates on the LOCKED v54
test set under four feature sets:

  A  hand-58      : the existing 58 hand-engineered inline features
  B  learned-64   : self-supervised AsmEncoder sequence embedding (zero hand
                    feature design; fit on train sequences only)
  C  learned+struct: B + spec-derived opcode-category histogram (19) + log-len
  D  hand+learned : A + B (do the learned features add signal on top of hand?)

Claim supported if B ≈ A (learned matches hand with no manual feature design)
and C or D ≥ A. Everything here is CPU-only and deterministic.

Run:  python3 spec/ablation_features.py
"""

import json
import sys
from pathlib import Path

import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from asm_tokenizer import AsmTokenizer  # noqa: E402
from asm_encoder import AsmEncoder  # noqa: E402

TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "unknown": "base.json"}


def load(path):
    rows = []
    for line in open(path):
        line = line.strip()
        if line:
            rows.append(json.loads(line))
    return rows


def struct_features(seq, engine):
    """Spec-derived structural descriptor: normalized opcode-category
    histogram + log sequence length."""
    ncat = engine.num_categories
    hist = np.zeros(ncat, dtype=np.float32)
    n = 0
    for instr in seq:
        s = instr.strip()
        if not s or s.endswith(":") or s.startswith("."):
            continue
        hist[engine.classify_opcode(instr)] += 1.0
        n += 1
    if n:
        hist /= n
    return np.concatenate([hist, [np.log1p(n)]]).astype(np.float32)


def main():
    engines = {a: load_engine(f) for a, f in ENGINES.items()}
    base_engine = engines["unknown"]
    tok = AsmTokenizer(base_engine)

    train = load(TRAIN)
    test = load(TEST)
    print(f"train={len(train)} test={len(test)}")

    # Fit encoder on TRAIN sequences only.
    train_tok = [tok.tokenize_sequence(r["sequence"]) for r in train]
    enc = AsmEncoder(dim=64, window=2, min_count=5, seed=42).fit(train_tok)
    print(f"encoder: vocab={len(enc.vocab)} dim={enc.dim}")

    # Labels.
    labels = sorted({r["label"] for r in train} | {r["label"] for r in test})
    lid = {c: i for i, c in enumerate(labels)}
    ytr = np.array([lid[r["label"]] for r in train])
    yte = np.array([lid[r["label"]] for r in test])

    def eng_for(r):
        return engines.get(r.get("arch", "unknown"), base_engine)

    # Feature blocks.
    def hand(r):
        return np.asarray(hf.compute_inline_features(r["sequence"]), dtype=np.float32)

    def learned(r):
        return enc.embed_sequence(tok.tokenize_sequence(r["sequence"]))

    def struct(r):
        return struct_features(r["sequence"], eng_for(r))

    Xtr_hand = np.vstack([hand(r) for r in train])
    Xte_hand = np.vstack([hand(r) for r in test])
    Xtr_learn = np.vstack([learned(r) for r in train])
    Xte_learn = np.vstack([learned(r) for r in test])
    Xtr_struct = np.vstack([struct(r) for r in train])
    Xte_struct = np.vstack([struct(r) for r in test])

    sets = {
        "A hand-58       ": (Xtr_hand, Xte_hand),
        "B learned-64    ": (Xtr_learn, Xte_learn),
        "C learned+struct": (np.hstack([Xtr_learn, Xtr_struct]),
                             np.hstack([Xte_learn, Xte_struct])),
        "D hand+learned  ": (np.hstack([Xtr_hand, Xtr_learn]),
                             np.hstack([Xte_hand, Xte_learn])),
    }

    print(f"\n{'feature set':18s}  dim   test-acc  macro-F1")
    print("-" * 46)
    for name, (Xtr, Xte) in sets.items():
        clf = RandomForestClassifier(
            n_estimators=300, n_jobs=-1, random_state=42,
            class_weight="balanced")
        clf.fit(Xtr, ytr)
        pred = clf.predict(Xte)
        acc = accuracy_score(yte, pred)
        f1 = f1_score(yte, pred, average="macro")
        print(f"{name}  {Xtr.shape[1]:4d}   {acc*100:6.2f}%   {f1*100:6.2f}%")


if __name__ == "__main__":
    main()
