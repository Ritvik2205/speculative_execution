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
import re
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

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "riscv64": "riscv.json",
           "unknown": "base.json"}

# Directory prefixes flattened into the RISC-V group name. Stripping them puts
# both sides into the same namespace as the v54 basenames, which carry no
# directory component.
_DIR_PREFIXES = ("enhanced_variants_", "generated_variants_", "expanded_variants_",
                 "retbleed_variants_", "generated_", "c_code_")


def family(name: str) -> str:
    """Source family shared by every _gen_N variant, arch and opt level."""
    s = name
    s = re.sub(r"^c_vulns_c_code_", "", s)
    for p in _DIR_PREFIXES:
        if s.startswith(p):
            s = s[len(p):]
    s = re.sub(r"\.(c|s)$", "", s)
    s = re.sub(r"[._](clang|gcc)[._]O[0-9s]+$", "", s)
    s = re.sub(r"\.(x86_64|arm64|aarch64)(\..*)?$", "", s)
    s = re.sub(r"_gen_\d+$", "", s)
    s = re.sub(r"_(x86_64|arm64|aarch64)$", "", s)
    return s


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
    rng = np.random.RandomState(0)
    rand_mask = np.ones(len(tr), dtype=bool)
    removed_per_class = Counter(ytr_all[~keep_mask])
    eligible = np.where(keep_mask)[0]
    for cls, n_rm in removed_per_class.items():
        pool_idx = eligible[ytr_all[eligible] == cls]
        n_take = min(n_rm, len(pool_idx))
        if n_take:
            rand_mask[rng.choice(pool_idx, n_take, replace=False)] = False
    print(f"RAND-CTRL pool: {int(rand_mask.sum())} records "
          f"(-{len(tr)-int(rand_mask.sum())}, same per-class counts, random families)\n")

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
                           ("RAND-CTRL", rand_mask)):
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
        paired(name, "FULL", "RAND-CTRL", "random-ctrl - full")
        paired(name, "RAND-CTRL", "HELD-OUT", "held-out - random-ctrl  <-- ")
        print()
    print("The third row is the one that matters: it compares withholding the")
    print("SHARED families against withholding the same amount of random data.")
    print("If it is null, the drop was sample size, not program recognition.")


if __name__ == "__main__":
    main()
