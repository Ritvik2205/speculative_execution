#!/usr/bin/env python3
"""riscv_family_holdout.py — is the RISC-V transfer number generalisation, or
is the model recognising a program it already saw compiled to another ISA?

The RISC-V corpus is built from the SAME c_vulns sources that were compiled to
x86_64/arm64 and put in the training pool. So a record like
`enhanced_variants/l1tf_arm64_gen_0.c` can appear twice: compiled to x86 in
TRAIN, and compiled to RISC-V in TEST. Nothing in the existing setup prevents
that — the group-holdout machinery splits the x86/ARM data, and RISC-V is
scored entirely zero-shot, so no split controls this axis at all.

If the model is exploiting it, the reported cross-ISA number is partly program
recognition rather than attack detection, and it will collapse when the
overlapping source families are withheld from training.

Experiment: for each feature tier, train twice on x86/ARM —
  FULL     : the normal training pool
  HELD-OUT : the same pool minus every record whose SOURCE FAMILY also appears
             in the RISC-V test set
— and score both on RISC-V. A large drop means the number was memorisation.

Stubs (see eval/audit_riscv_labels.py check C) are reported separately, since
those are already known to be scored by compiler artifact.

Run: python3 eval/riscv_family_holdout.py [--seeds 42 1 7 13 21]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

import inline_features as hf                        # noqa: E402
from isa_spec import load_engine                     # noqa: E402
from spec_features import compute_spec_features      # noqa: E402
from candidate_features import build_space, load_engines   # noqa: E402
from select_features import select, KEEP             # noqa: E402
import train_mlm as T                                # noqa: E402
from eval_riscv_real import build_riscv_records      # noqa: E402
from group_stats import family, _DIR_PREFIXES        # noqa: E402,F401

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "riscv64": "riscv.json",
           "unknown": "base.json"}

# family() / _DIR_PREFIXES (source-family name normalisation: collapse
# _gen_N variants, arch suffixes, compiler/opt decoration) now live in
# eval/group_stats.py — imported above, not duplicated. See that module's
# docstring for why (group_stats.py needs to stay stdlib+numpy/scipy only,
# so the definitions moved there rather than this module's heavy spec/v54
# import chain moving the other way).


def ci95(x):
    x = np.asarray(x, float)
    m = x.mean()
    if len(x) < 2:
        return m, 0.0
    return m, x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--stub-max", type=int, default=10)
    args = ap.parse_args()

    tr = T.load(T.TRAIN)
    te = build_riscv_records()
    engines = {a: load_engine(f) for a, f in ENGINES.items()}
    ytr_all = np.array([r["label"] for r in tr])
    known = set(ytr_all)
    te = [r for r in te if r["label"] in known]
    yte = np.array([r["label"] for r in te])

    te_families = {family(r["group"]) for r in te}
    print(f"riscv test: {len(te)} records -> {len(te_families)} source families")

    def tr_family(r):
        sf = r.get("source_file") or ""
        return family(sf.split("/")[-1]) if "c_vulns" in sf else None

    overlap_idx = [i for i, r in enumerate(tr)
                   if (f := tr_family(r)) is not None and f in te_families]
    shared = sorted({tr_family(tr[i]) for i in overlap_idx})
    print(f"training records sharing a source family with the riscv test set: "
          f"{len(overlap_idx)}/{len(tr)} ({100*len(overlap_idx)/len(tr):.1f}%)")
    print(f"shared families ({len(shared)}): {shared}\n")
    if not overlap_idx:
        print("No overlap found — nothing to hold out. Check the family() "
              "normalisation before trusting this as a negative result.")
        return

    keep_mask = np.ones(len(tr), dtype=bool)
    keep_mask[overlap_idx] = False
    print(f"FULL pool     : {len(tr)} records")
    print(f"HELD-OUT pool : {int(keep_mask.sum())} records "
          f"(-{len(overlap_idx)})")
    print(f"  class mix removed: {dict(Counter(ytr_all[~keep_mask]))}\n")

    def eng(r):
        return engines.get(r.get("arch", "unknown"), engines["unknown"])

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in te])
    Xtr_spec = np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in tr])
    Xte_spec = np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in te])

    space = build_space(tr, load_engines())
    names = space.feature_names()
    Xtr_cand, Xte_cand = space.transform(tr), space.transform(te)
    sel = select(Xtr_cand, ytr_all, names, seeds=(args.seeds[0],), verbose=False)
    imp = np.where(np.array(sel["votes"]["impurity"]) == KEEP)[0]

    n_instr = np.array([len([l for l in r["sequence"]
                             if l.strip() and not l.strip().startswith(".")
                             and not l.strip().endswith(":")]) for r in te])
    non_stub = n_instr > args.stub_max

    # CONTROL: withholding 827 records also shrinks training by 15%, which on
    # its own could cost accuracy. This removes the SAME NUMBER of records with
    # the SAME per-class counts, chosen at random from non-overlapping families,
    # so any difference between HELD-OUT and RAND-CTRL is attributable to the
    # shared families specifically rather than to sample size.
    # Two controls, because neither can satisfy both constraints at once and
    # the objection differs:
    #   RAND-CLASS : same per-class counts as the holdout. Cannot always reach
    #                the same TOTAL, because some classes do not have enough
    #                non-overlapping records left to draw from.
    #   RAND-SIZE  : same TOTAL count, making up any shortfall from other
    #                classes. Matches size exactly, at the cost of drifting the
    #                class mix.
    # If the held-out-vs-control delta is null under BOTH, neither "it was the
    # class mix" nor "it was the sample size" survives as an explanation.
    n_target = int((~keep_mask).sum())
    removed_per_class = Counter(ytr_all[~keep_mask])
    eligible = np.where(keep_mask)[0]

    rng = np.random.RandomState(0)
    rand_mask = np.ones(len(tr), dtype=bool)
    for cls, n_rm in removed_per_class.items():
        pool_idx = eligible[ytr_all[eligible] == cls]
        n_take = min(n_rm, len(pool_idx))
        if n_take:
            rand_mask[rng.choice(pool_idx, n_take, replace=False)] = False

    rng2 = np.random.RandomState(1)
    size_mask = rand_mask.copy()
    shortfall = n_target - int((~size_mask).sum())
    if shortfall > 0:
        remaining = np.array([i for i in eligible if size_mask[i]])
        take = rng2.choice(remaining, min(shortfall, len(remaining)), replace=False)
        size_mask[take] = False

    print(f"HOLD-OUT   removed {n_target}")
    print(f"RAND-CLASS removed {len(tr)-int(rand_mask.sum())} "
          f"(class-matched; short by {n_target-(len(tr)-int(rand_mask.sum()))})")
    print(f"RAND-SIZE  removed {len(tr)-int(size_mask.sum())} (size-matched)")
    print(f"  RAND-SIZE class mix: {dict(Counter(ytr_all[~size_mask]))}\n")

    configs = {
        "hand-58": (Xtr_hand, Xte_hand),
        "spec-42": (Xtr_spec, Xte_spec),
        "cand-impurity": (Xtr_cand[:, imp], Xte_cand[:, imp]),
    }

    print(f"{'config':16s} {'pool':>10s} {'riscv ALL':>16s} {'riscv NON-STUB':>18s} "
          f"{'macro-F1 NS':>14s}")
    print("-" * 78)
    results = {}
    for name, (A, B) in configs.items():
        for pool, mask in (("FULL", np.ones(len(tr), dtype=bool)),
                           ("HELD-OUT", keep_mask),
                           ("RAND-CLASS", rand_mask),
                           ("RAND-SIZE", size_mask)):
            a_, ns_, f_ = [], [], []
            for sd in args.seeds:
                clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                             random_state=sd, class_weight="balanced")
                clf.fit(A[mask], ytr_all[mask])
                p = clf.predict(B)
                a_.append(accuracy_score(yte, p) * 100)
                ns_.append(accuracy_score(yte[non_stub], p[non_stub]) * 100)
                f_.append(f1_score(yte[non_stub], p[non_stub], average="macro",
                                   zero_division=0) * 100)
            results[(name, pool)] = (a_, ns_, f_)
            am, ah = ci95(a_); nm, nh = ci95(ns_); fm, fh = ci95(f_)
            print(f"{name:16s} {pool:>10s} {am:9.2f}+/-{ah:4.2f} "
                  f"{nm:11.2f}+/-{nh:4.2f} {fm:8.2f}+/-{fh:4.2f}")

    print(f"\n--- HELD-OUT minus FULL, paired ({len(args.seeds)} seeds), "
          f"non-stub accuracy ---")
    def paired(name, x, y, label):
        a = np.array(results[(name, x)][1], float)
        b = np.array(results[(name, y)][1], float)
        d = b - a
        dm, dh = ci95(d)
        p = stats.ttest_rel(b, a).pvalue if d.std() > 0 else float("nan")
        sig = "significant" if (dm - dh > 0 or dm + dh < 0) else "ns"
        print(f"  {name:16s} {label:26s} {dm:+7.2f}pp  "
              f"95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}  {sig}")

    for name in configs:
        paired(name, "FULL", "HELD-OUT", "held-out - full")
        paired(name, "FULL", "RAND-CLASS", "rand-class - full")
        paired(name, "FULL", "RAND-SIZE", "rand-size - full")
        paired(name, "RAND-CLASS", "HELD-OUT", "held-out - rand-class  <--")
        paired(name, "RAND-SIZE", "HELD-OUT", "held-out - rand-size   <--")
        print()
    print("The last two rows are the ones that matter: they compare withholding")
    print("the SHARED families against withholding comparable random data.")
    print("Null under both = the drop was sample size, not program recognition.")


if __name__ == "__main__":
    main()
