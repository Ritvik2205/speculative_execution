#!/usr/bin/env python3
"""
edge_ablation.py — ablate the hand-authored speculative edges/windows to see
what the attack taxonomy actually contributes (the reviewer's question: "the
automation only replaced the ~40-dim node vector; the load-bearing inductive
bias is the speculative edge topology, which is 100% hand-built — is the model
even using it?").

Holds node features fixed (hand) and re-runs the compact GINE with edge subsets:

  full            : all 9 edge types (baseline)
  no-spec-edges   : drop SPEC_CONDITIONAL/INDIRECT/RETURN + RSB_CHAIN + CACHE_TEMPORAL
  no-edges        : structure-free (isolated nodes) — lower bound

If accuracy barely moves without the speculative edges, the model isn't leaning
on the hand-authored attack taxonomy; if it collapses, that taxonomy is the real
contribution (and "automated feature engineering" only automated the node vector).

Run:  python3 eval/edge_ablation.py --seeds 42 1 7 13 21 --epochs 25
"""

from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb                           # noqa: E402
from isa_spec import load_engine                   # noqa: E402
from asm_tokenizer import AsmTokenizer             # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from train_mlm import MlmEncoder                   # noqa: E402
import gine_experiment as ge                       # noqa: E402

ET = pb.EDGE_TYPES
SPEC_EDGE_TYPES = {ET["SPEC_CONDITIONAL"], ET["SPEC_INDIRECT"], ET["SPEC_RETURN"],
                   ET["RSB_CHAIN"], ET["CACHE_TEMPORAL"]}


def filter_edges(graphs, drop_types):
    """Return a shallow copy of graphs with edges of drop_types removed."""
    out = []
    for g in graphs:
        if g["ei"].shape[1] == 0 or not drop_types:
            out.append(g); continue
        keep = np.array([t not in drop_types for t in g["et"]], dtype=bool)
        out.append({**g, "ei": g["ei"][:, keep], "et": g["et"][keep]})
    return out


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return x.mean(), 0.0
    return x.mean(), x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+",
                    default=[42, 1, 7, 13, 21, 2, 3, 5, 11, 17])
    ap.add_argument("--epochs", type=int, default=25)
    ap.add_argument("--spec-window", type=int, default=20)
    ap.add_argument("--conditions", type=str, nargs="+", default=None,
                    help="subset of ablation condition names to run (for resuming"
                         " a partial run); default = all")
    args = ap.parse_args()

    engines = {a: load_engine(f) for a, f in ge.ENGINES.items()}
    builders = {a: SpecBackedPDGBuilder(e, speculative_window=args.spec_window)
                for a, e in engines.items()}
    tok = AsmTokenizer(engines["unknown"])
    mlm = MlmEncoder.load(ROOT / "spec" / "mlm.pt")

    train_rows, test_rows = ge.load(ge.TRAIN), ge.load(ge.TEST)
    labels = sorted({r["label"] for r in train_rows} | {r["label"] for r in test_rows})
    label_id = {c: i for i, c in enumerate(labels)}
    num_classes = len(labels)

    print("building graphs...")
    train_g = ge.build_graphs(train_rows, builders, tok, mlm, label_id)
    test_g = ge.build_graphs(test_rows, builders, tok, mlm, label_id)
    rng = np.random.default_rng(ge.SEED)
    perm = rng.permutation(len(train_g))
    n_val = int(0.12 * len(train_g))
    val_g = [train_g[i] for i in perm[:n_val]]
    tr_g = [train_g[i] for i in perm[n_val:]]

    cnt = Counter(g["y"] for g in tr_g)
    w = np.array([1.0 / np.sqrt(max(cnt.get(i, 1), 1)) for i in range(num_classes)])
    class_w = torch.tensor(w / w.mean(), dtype=torch.float32)

    # G5 fix: the original 3-condition table found removing ALL edges hurt less
    # than removing only the 5 "speculative" ones (non-monotonic, unexplained).
    # Break the lumped SPEC_EDGE_TYPES set apart to see which one drives it.
    ablations = {
        "full (9 edge types)": set(),
        "no-spec-edges": SPEC_EDGE_TYPES,
        "no-SPEC_CONDITIONAL": {ET["SPEC_CONDITIONAL"]},
        "no-SPEC_INDIRECT": {ET["SPEC_INDIRECT"]},
        "no-SPEC_RETURN": {ET["SPEC_RETURN"]},
        "no-RSB_CHAIN": {ET["RSB_CHAIN"]},
        "no-CACHE_TEMPORAL": {ET["CACHE_TEMPORAL"]},
        "no-edges": set(ET.values()),
    }
    if args.conditions:
        ablations = {k: v for k, v in ablations.items() if k in args.conditions}

    print(f"train={len(tr_g)} val={len(val_g)} test={len(test_g)} "
          f"seeds={len(args.seeds)}  (node features = hand, fixed)\n")
    print(f"{'edges':22s} {'test-acc':>16s} {'macro-F1':>16s}")
    print("-" * 58)
    base = None
    for name, drop in ablations.items():
        trg = filter_edges(tr_g, drop)
        vag = filter_edges(val_g, drop)
        teg = filter_edges(test_g, drop)
        accs, f1s = [], []
        for sd in args.seeds:
            acc, f1, _ = ge.run_config("hand", 41, trg, vag, teg, class_w,
                                       num_classes, seed=sd, standardize=True,
                                       epochs=args.epochs)
            accs.append(acc * 100); f1s.append(f1 * 100)
        am, ah = ci(accs); fm, fh = ci(f1s)
        drop_s = "" if base is None else f"  (Δ{am-base:+.2f}pp)"
        if base is None:
            base = am
        print(f"{name:22s} {am:6.2f} ± {ah:4.2f}   {fm:6.2f} ± {fh:4.2f}{drop_s}")

    print("\nInterpretation: small full->no-spec-edges drop = model barely uses the"
          "\nhand-authored speculative taxonomy; large drop = that taxonomy is the"
          "\nreal contribution (node-feature automation is the minor part).")


if __name__ == "__main__":
    main()
