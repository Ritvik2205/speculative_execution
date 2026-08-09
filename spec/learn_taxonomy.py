#!/usr/bin/env python3
"""
learn_taxonomy.py — can the hand-authored attack taxonomy be *learned* instead of
hand-written? (SpecDiscover Track C research spike.)

The spec still hard-codes speculation-primitive tags (is_secret_source,
is_transmitter, is_serializing, is_cache_probe, is_timing_source, ...) as
human-written rules. This spike asks: are those tags recoverable from a
self-supervised assembly encoder, so a new ISA would not need them hand-authored?

Setup: over unique (arch, instruction) pairs, predict the 14-dim hand spec-flag
vector (treated as noisy multi-label ground truth) from three input regimes, on
an instruction-level train/test split:

  learned-only  : the MLM per-instruction embedding ALONE
                  -> does self-supervision capture the security semantics?
  struct-only   : spec opcode-category + mem-type one-hot ALONE
                  -> which flags are just functions of category/mem (trivial)?
  learned+struct: both -> upper bound

Per-flag F1 shows which tags emerge from self-supervision vs which are
irreducible human semantics. Honest either way: high learned-only F1 = the tag is
automatable; low = it is genuine hand-authored knowledge.

Run:  python3 spec/learn_taxonomy.py [--mlm-path spec/mlm_large.pt]
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

import numpy as np
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine            # noqa: E402
from asm_tokenizer import AsmTokenizer      # noqa: E402
import train_mlm as T                       # noqa: E402
from train_mlm import MlmEncoder            # noqa: E402

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "unknown": "base.json"}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mlm-path", default=str(ROOT / "spec" / "mlm_large.pt"))
    args = ap.parse_args()

    engines = {a: load_engine(f) for a, f in ENGINES.items()}
    tok = AsmTokenizer(engines["unknown"])
    mlm = MlmEncoder.load(args.mlm_path)
    base = engines["unknown"]
    flag_names = sorted(base.spec_flags, key=base.spec_flags.get)
    ncat, nmem, nflag = base.num_categories, len(base.mem_access_types), base.num_spec_flags

    # unique (arch, instruction) pairs
    seen = set()
    emb, struct, Y = [], [], []
    for r in T.load(T.TRAIN) + T.load(T.TEST):
        arch = r.get("arch", "unknown")
        eng = engines.get(arch, engines["unknown"])
        for instr in r["sequence"]:
            key = (arch, instr)
            if key in seen:
                continue
            seen.add(key)
            toks = tok.tokenize_sequence([instr])
            if not toks:
                continue
            e = mlm.embed_instructions(toks)
            if e.shape[0] == 0:
                continue
            cat = eng.classify_opcode(instr)
            mem = eng.memory_access_type(instr)
            oh = np.zeros(ncat + nmem, dtype=np.float32)
            oh[cat] = 1.0
            oh[ncat + mem] = 1.0
            emb.append(e[0]); struct.append(oh)
            Y.append(eng.spec_flags_vector(instr, cat, mem))

    emb = np.vstack(emb); struct = np.vstack(struct); Y = np.vstack(Y)
    rng = np.random.default_rng(42)
    perm = rng.permutation(len(Y))
    cut = int(0.8 * len(Y))
    tr, te = perm[:cut], perm[cut:]
    print(f"unique instructions={len(Y)}  train={len(tr)} test={len(te)}  "
          f"mlm_dim={emb.shape[1]}\n")

    regimes = {
        "learned-only": (emb[tr], emb[te]),
        "struct-only": (struct[tr], struct[te]),
        "learned+struct": (np.hstack([emb, struct])[tr], np.hstack([emb, struct])[te]),
    }

    # per-flag F1 for each regime
    header = f"{'flag':22s} {'pos%':>5s} " + " ".join(f"{k:>14s}" for k in regimes)
    print(header)
    print("-" * len(header))
    macro = {k: [] for k in regimes}
    for j, fname in enumerate(flag_names):
        ytr, yte = Y[tr, j], Y[te, j]
        pos = 100.0 * Y[:, j].mean()
        cells = []
        for k, (Xtr, Xte) in regimes.items():
            if ytr.sum() == 0 or ytr.sum() == len(ytr) or yte.sum() == 0:
                cells.append("   n/a"); continue
            clf = LogisticRegression(max_iter=1000, class_weight="balanced")
            clf.fit(Xtr, ytr)
            f1 = f1_score(yte, clf.predict(Xte), zero_division=0) * 100
            macro[k].append(f1)
            cells.append(f"{f1:6.1f}")
        print(f"{fname:22s} {pos:5.1f} " + " ".join(f"{c:>14s}" for c in cells))

    print("-" * len(header))
    print(f"{'macro-F1 (recoverable)':22s} {'':>5s} "
          + " ".join(f"{np.mean(macro[k]):>14.1f}" for k in regimes))
    print("\nRead: learned-only high => tag is recoverable from self-supervision;"
          "\nlearned-only << struct-only => tag is a category/mem function, not"
          "\nsomething the encoder learned; both low => irreducible hand semantics.")


if __name__ == "__main__":
    main()
