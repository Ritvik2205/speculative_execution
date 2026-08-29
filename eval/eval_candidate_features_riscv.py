#!/usr/bin/env python3
"""eval_candidate_features_riscv.py — does the automated feature tier actually
PORT to a new ISA, or does it only look good on the ISAs it was tuned on?

This is the portability claim the paper rests on: a new ISA should be onboarded
by shipping a spec file, with no code change and no accuracy cliff. The
group-holdout result (`eval/eval_candidate_features.py`) shows the generated
candidate tier beating hand-58 on x86/arm — but hand-58 is ISA-locked, so that
comparison alone can't demonstrate portability.

Here: train on x86_64+arm64 ONLY, evaluate zero-shot on real RISC-V. The
candidate space is fitted on the training ISAs, so RISC-V contributes nothing
to which features exist — it is a genuinely held-out architecture.

hand-58 is included as the control. Its features are literal x86/ARM regexes
(`frac_movq`, `_X86_ONLY`), so it has no mechanism for reading RISC-V at all;
whatever it scores is the floor that "just use hand features on a new ISA"
buys you.

Run: python3 eval/eval_candidate_features_riscv.py [--seeds 42 1 7 13 21]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report, f1_score

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


def ci95(x):
    x = np.asarray(x, float)
    m = x.mean()
    if len(x) < 2:
        return m, 0.0
    return m, x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--stub-max", type=int, default=10,
                    help="records with <= this many instructions are degenerate stubs "
                         "(see eval/audit_riscv_labels.py check C)")
    args = ap.parse_args()

    tr = T.load(T.TRAIN)                       # x86_64 + arm64 only
    te = build_riscv_records()                 # real riscv64, held-out ISA
    engines = {a: load_engine(f) for a, f in ENGINES.items()}

    ytr = np.array([r["label"] for r in tr])
    yte = np.array([r["label"] for r in te])
    # Only classes the training pool actually contains can be predicted.
    known = set(ytr)
    keep_rows = [i for i, l in enumerate(yte) if l in known]
    te = [te[i] for i in keep_rows]
    yte = yte[keep_rows]
    print(f"train (x86+arm): {len(tr)}   test (riscv64, zero-shot): {len(te)}")
    print(f"train archs: {dict(Counter(r.get('arch') for r in tr))}")
    print(f"riscv class support: {dict(Counter(yte))}\n")

    def eng(r):
        return engines.get(r.get("arch", "unknown"), engines["unknown"])

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in te])
    Xtr_spec = np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in tr])
    Xte_spec = np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in te])

    # Candidate space fitted on the TRAINING ISAs only — RISC-V does not
    # influence which features exist.
    space = build_space(tr, load_engines())
    names = space.feature_names()
    Xtr_cand, Xte_cand = space.transform(tr), space.transform(te)
    print(f"candidate pool: {Xtr_cand.shape[1]} features (fitted on x86+arm only)")

    sel = select(Xtr_cand, ytr, names, seeds=(args.seeds[0],), verbose=False)
    keep = np.array(sel["keep_idx"], dtype=int)
    imp = np.where(np.array(sel["votes"]["impurity"]) == KEEP)[0]
    print(f"ensemble keeps {len(keep)}   impurity keeps {len(imp)}\n")

    configs = {
        "hand-58 (ISA-locked)": (Xtr_hand, Xte_hand),
        "spec-42": (Xtr_spec, Xte_spec),
        "cand-all": (Xtr_cand, Xte_cand),
        "cand-ensemble": (Xtr_cand[:, keep], Xte_cand[:, keep]),
        "cand-impurity": (Xtr_cand[:, imp], Xte_cand[:, imp]),
    }

    # Degenerate ("stub") records: the compiler deleted the gadget at -O2 but
    # the file kept its attack label. See eval/audit_riscv_labels.py — 11.5% of
    # the corpus, all -O2, hitting SPECTRE_V4 at 50% and L1TF at 27.8%.
    #
    # These are scored, then metrics are reported on three subsets of the SAME
    # predictions: all records, non-stubs only, and stubs only. Re-running with
    # a filtered test set instead would change the denominator and the class
    # balance, making the two accuracies incomparable — the same trap already
    # documented for the 64.24%/75.45% RISC-V figures.
    n_instr = np.array([len([l for l in r["sequence"]
                             if l.strip() and not l.strip().startswith(".")
                             and not l.strip().endswith(":")]) for r in te])
    is_stub = n_instr <= args.stub_max
    print(f"stubs (<= {args.stub_max} instrs): {int(is_stub.sum())}/{len(te)} "
          f"({100*is_stub.mean():.1f}%)  non-stubs: {int((~is_stub).sum())}")
    print(f"stub class mix: {dict(Counter(yte[is_stub]))}\n")

    acc, f1, preds = {}, {}, {}
    acc_ns, f1_ns, acc_stub = {}, {}, {}
    for name, (A, B) in configs.items():
        a_, f_, ans, fns, ast = [], [], [], [], []
        for sd in args.seeds:
            clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                         random_state=sd, class_weight="balanced")
            clf.fit(A, ytr)
            p = clf.predict(B)
            a_.append(accuracy_score(yte, p) * 100)
            f_.append(f1_score(yte, p, average="macro", zero_division=0) * 100)
            ans.append(accuracy_score(yte[~is_stub], p[~is_stub]) * 100)
            fns.append(f1_score(yte[~is_stub], p[~is_stub], average="macro",
                                zero_division=0) * 100)
            ast.append(accuracy_score(yte[is_stub], p[is_stub]) * 100
                       if is_stub.any() else float("nan"))
            if sd == args.seeds[0]:
                preds[name] = p
        acc[name], f1[name] = a_, f_
        acc_ns[name], f1_ns[name], acc_stub[name] = ans, fns, ast

    print(f"{'config':24s} {'dim':>5s} {'ALL (n=%d)' % len(te):>16s} "
          f"{'NON-STUB (n=%d)' % int((~is_stub).sum()):>18s} {'STUBS (n=%d)' % int(is_stub.sum()):>16s}")
    print("-" * 80)
    for name, (A, _) in configs.items():
        am, ah = ci95(acc[name]); nm, nh = ci95(acc_ns[name]); sm, sh = ci95(acc_stub[name])
        print(f"{name:24s} {A.shape[1]:5d} {am:8.2f}+/-{ah:4.2f} "
              f"{nm:11.2f}+/-{nh:4.2f} {sm:9.2f}+/-{sh:4.2f}")
    print(f"\n{'config':24s} {'macro-F1 ALL':>16s} {'macro-F1 NON-STUB':>20s}")
    print("-" * 62)
    for name in configs:
        fm, fh = ci95(f1[name]); gm, gh = ci95(f1_ns[name])
        print(f"{name:24s} {fm:9.2f}+/-{fh:4.2f} {gm:13.2f}+/-{gh:4.2f}")

    print(f"\n--- paired vs hand-58, the ISA-locked control ({len(args.seeds)} seeds) ---")
    base = np.array(acc["hand-58 (ISA-locked)"], float)
    for name in configs:
        if name.startswith("hand-58"):
            continue
        b = np.array(acc[name], float)
        d = b - base
        dm, dh = ci95(d)
        p = stats.ttest_rel(b, base).pvalue if d.std() > 0 else float("nan")
        sig = "significant" if (dm - dh > 0 or dm + dh < 0) else "ns"
        print(f"  {name:24s} {dm:+7.2f}pp  95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}  {sig}")

    best = max((n for n in configs if n.startswith("cand")), key=lambda n: np.mean(acc[n]))
    print(f"\nper-class recall on RISC-V, {best} (seed {args.seeds[0]}):")
    print(classification_report(yte, preds[best], zero_division=0))


if __name__ == "__main__":
    main()
