#!/usr/bin/env python3
"""
splits.py — leakage-controlled generalization splits (Arp et al. 'Data Snooping'
+ 'Sampling Bias'; Chakraborty et al. group-hold-out).

NOTE (see SPECDISCOVER_VERIFICATION_GAPS.md, G4): the *locked* v54_train/v54_test
files are NOT what "random" below reproduces. Direct check of the locked files
found 0 overlapping `group` values and 0 exact-duplicate `sequence` values
between them — they are already group-disjoint. The "random" condition here is
a SYNTHETIC re-split: this script recombines v54_train+v54_test into one pool
and re-splits it randomly at the record level, which *does* leak augmentation
groups (rename_registers / insert_nops / ... share a `group`) across the
resulting train/test — that's a real, general risk this script demonstrates,
but it is not a description of the actual locked split's methodology. Whether
the real locked split's accuracy survives group-holdout is answered separately
by `eval/group_holdout_full.py` (splits the real locked pool by group and
retrains the full production model, not this compact proxy). This compares
three splits with the same compact GINE (hand node features):

  random : record-level, SYNTHETIC re-split of the combined pool (leaks augmentation groups)
  group  : hold out whole `group`s (no base gadget in both train and test)
  opt    : train on O0/O1/O2/Os, test on O3 (cross-optimization generalization)

The accuracy DROP from random -> group/opt shows the general leakage risk of
record-level random splitting; it does not by itself indict the locked split.

Run:  python3 eval/splits.py --seeds 42 1 7 13 21 --epochs 25
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                  # noqa: E402
from asm_tokenizer import AsmTokenizer             # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from train_mlm import MlmEncoder                   # noqa: E402
import gine_experiment as ge                       # noqa: E402

_OPT_RE = re.compile(r'(O[0123s])')


def opt_level(r):
    m = _OPT_RE.search(r["group"] + " " + r.get("source_file", ""))
    return m.group(1) if m else "NA"


def build_with_meta(rows, builders, tok, mlm, label_id):
    """ge.build_graphs but returns parallel metadata (group, opt, label)."""
    graphs, meta = [], []
    for r in rows:
        g = ge.build_graphs([r], builders, tok, mlm, label_id)
        if g:
            graphs.append(g[0])
            meta.append({"group": r["group"], "opt": opt_level(r),
                         "label": r["label"]})
    return graphs, meta


def class_weights(train_g, num_classes):
    cnt = Counter(g["y"] for g in train_g)
    w = np.array([1.0 / np.sqrt(max(cnt.get(i, 1), 1)) for i in range(num_classes)])
    return torch.tensor(w / w.mean(), dtype=torch.float32)


def run_split(name, tr_idx, te_idx, graphs, meta, num_classes, seeds, epochs, rng):
    """Carve a val fold from tr_idx (group-disjoint), train hand-GINE per seed."""
    tr_groups = list({meta[i]["group"] for i in tr_idx})
    rng.shuffle(tr_groups)
    n_val_g = max(1, int(0.12 * len(tr_groups)))
    val_groups = set(tr_groups[:n_val_g])
    val_idx = [i for i in tr_idx if meta[i]["group"] in val_groups]
    fit_idx = [i for i in tr_idx if meta[i]["group"] not in val_groups]

    tr_g = [graphs[i] for i in fit_idx]
    val_g = [graphs[i] for i in val_idx]
    te_g = [graphs[i] for i in te_idx]
    cw = class_weights(tr_g, num_classes)

    accs, f1s = [], []
    for sd in seeds:
        acc, f1, _ = ge.run_config("hand", 41, tr_g, val_g, te_g, cw,
                                   num_classes, seed=sd, standardize=True,
                                   epochs=epochs)
        accs.append(acc * 100); f1s.append(f1 * 100)
    accs, f1s = np.array(accs), np.array(f1s)
    return accs, f1s, (len(tr_g), len(val_g), len(te_g))


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return x.mean(), 0.0
    return x.mean(), x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--epochs", type=int, default=25)
    ap.add_argument("--spec-window", type=int, default=20)
    args = ap.parse_args()

    engines = {a: load_engine(f) for a, f in ge.ENGINES.items()}
    builders = {a: SpecBackedPDGBuilder(e, speculative_window=args.spec_window)
                for a, e in engines.items()}
    tok = AsmTokenizer(engines["unknown"])
    mlm = MlmEncoder.load(ROOT / "spec" / "mlm.pt")

    rows = ge.load(ge.TRAIN) + ge.load(ge.TEST)
    labels = sorted({r["label"] for r in rows})
    label_id = {c: i for i, c in enumerate(labels)}
    num_classes = len(labels)

    print(f"building graphs for all {len(rows)} records...")
    graphs, meta = build_with_meta(rows, builders, tok, mlm, label_id)
    n = len(graphs)
    idx = np.arange(n)
    rng = np.random.default_rng(0)
    print(f"graphs={n} classes={num_classes} seeds={len(args.seeds)}\n")

    results = {}

    # 1. random record-level split (optimistic baseline)
    perm = rng.permutation(n)
    cut = int(0.77 * n)
    results["random"] = run_split("random", perm[:cut].tolist(),
                                  perm[cut:].tolist(), graphs, meta,
                                  num_classes, args.seeds, args.epochs, rng)

    # 2. group hold-out (no base gadget in both sides)
    groups = list({m["group"] for m in meta})
    rng.shuffle(groups)
    gcut = int(0.77 * len(groups))
    test_groups = set(groups[gcut:])
    tr_idx = [i for i in idx if meta[i]["group"] not in test_groups]
    te_idx = [i for i in idx if meta[i]["group"] in test_groups]
    results["group"] = run_split("group", tr_idx, te_idx, graphs, meta,
                                 num_classes, args.seeds, args.epochs, rng)

    # 3. optimization-level hold-out: train O0/O1/O2/Os, test O3
    tr_idx = [i for i in idx if meta[i]["opt"] in ("O0", "O1", "O2", "Os")]
    te_idx = [i for i in idx if meta[i]["opt"] == "O3"]
    results["opt(O3 held out)"] = run_split("opt", tr_idx, te_idx, graphs, meta,
                                            num_classes, args.seeds, args.epochs, rng)

    print(f"{'split':18s} {'sizes(tr/val/te)':18s} {'test-acc':>16s} {'macro-F1':>16s}")
    print("-" * 72)
    base_acc = None
    for name, (accs, f1s, sizes) in results.items():
        am, ah = ci(accs); fm, fh = ci(f1s)
        drop = "" if base_acc is None else f"  (Δ{am-base_acc:+.2f}pp)"
        if base_acc is None:
            base_acc = am
        print(f"{name:18s} {str(sizes):18s} {am:6.2f} ± {ah:4.2f}   "
              f"{fm:6.2f} ± {fh:4.2f}{drop}")

    print("\nInterpretation: a large random->group/opt drop = the locked random"
          "\ntest overstated generalization (augmentation + optimization leakage).")


if __name__ == "__main__":
    main()
