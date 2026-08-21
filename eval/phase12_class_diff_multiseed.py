#!/usr/bin/env python3
"""phase12_class_diff_multiseed.py — Phase 1/2 gate check
(SPECDISCOVER_LEARNED_FEATURES_PLAN.md).

Pass/fail criterion from the plan: does hand+diffMLM / hand+prunedMLM /
hand+diff+prunedMLM stop SPECTRE_V2 recall from regressing vs hand+MLM,
without giving back RETBLEED's confirmed +3.20pp gain? Multi-seed (this
project doesn't trust single-seed deltas — see G11/G12 in
SPECDISCOVER_VERIFICATION_GAPS.md), with paired-by-seed CI and t-test
against the hand+MLM baseline specifically, since that's the row the
-11.82pp SPECTRE_V2 regression was measured on (eval/per_class_lift_results.json).

Run: python3 eval/phase12_class_diff_multiseed.py [--seeds 42 1 7 13 21]
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import defaultdict
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf                        # noqa: E402
from asm_tokenizer import AsmTokenizer               # noqa: E402
from isa_spec import load_engine                     # noqa: E402
import train_mlm as T                                # noqa: E402
from train_mlm import MlmEncoder                     # noqa: E402
from class_diff_features import (                    # noqa: E402
    build_class_representatives, diff_embed_sequence,
    pruned_embed_sequence, diff_pruned_embed_sequence,
)

WATCH_CLASSES = ["SPECTRE_V2", "L1TF", "RETBLEED", "BENIGN"]


def ci95(x):
    x = np.asarray(x, dtype=float)
    n = len(x)
    m = x.mean()
    if n < 2:
        return m, 0.0
    se = x.std(ddof=1) / np.sqrt(n)
    return m, se * stats.t.ppf(0.975, n - 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mlm-path", default=str(ROOT / "spec" / "mlm_large.pt"))
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    args = ap.parse_args()

    mlm = MlmEncoder.load(args.mlm_path)
    # Tokenize the way this checkpoint's vocabulary was built, or every lookup
    # misses (canonical vocabularies are per-ISA op names, not mnemonics).
    from asm_tokenizer import MultiArchTokenizer
    marc = MultiArchTokenizer(mode=getattr(mlm, "tokenizer_mode", "mnemonic"))
    print(f"checkpoint={args.mlm_path}  tokenizer_mode={marc.mode}")

    tr, te = T.load(T.TRAIN), T.load(T.TEST)
    labels = sorted({r["label"] for r in tr} | {r["label"] for r in te})
    ytr = np.array([r["label"] for r in tr])
    yte = np.array([r["label"] for r in te])

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in te])

    tr_tok = [marc.tokenize_record(r) for r in tr]
    te_tok = [marc.tokenize_record(r) for r in te]

    Xtr_mlm = np.vstack([mlm.embed_sequence(t) for t in tr_tok])
    Xte_mlm = np.vstack([mlm.embed_sequence(t) for t in te_tok])

    benign_repr = build_class_representatives(tr, tr_tok, mlm).get("BENIGN")
    benign_repr_H = (mlm.embed_instructions(benign_repr) if benign_repr is not None
                     else np.zeros((0, mlm.dim), dtype=np.float32))

    Xtr_diff = np.vstack([diff_embed_sequence(t, mlm, benign_repr_H) for t in tr_tok])
    Xte_diff = np.vstack([diff_embed_sequence(t, mlm, benign_repr_H) for t in te_tok])
    Xtr_pruned = np.vstack([pruned_embed_sequence(t, mlm) for t in tr_tok])
    Xte_pruned = np.vstack([pruned_embed_sequence(t, mlm) for t in te_tok])
    Xtr_dp = np.vstack([diff_pruned_embed_sequence(t, mlm, benign_repr_H) for t in tr_tok])
    Xte_dp = np.vstack([diff_pruned_embed_sequence(t, mlm, benign_repr_H) for t in te_tok])

    def cat(*m):
        return np.hstack(m)

    configs = {
        "hand-58": (Xtr_hand, Xte_hand),
        "hand+MLM": (cat(Xtr_hand, Xtr_mlm), cat(Xte_hand, Xte_mlm)),
        "hand+diffMLM": (cat(Xtr_hand, Xtr_diff), cat(Xte_hand, Xte_diff)),
        "hand+prunedMLM": (cat(Xtr_hand, Xtr_pruned), cat(Xte_hand, Xte_pruned)),
        "hand+diff+prunedMLM": (cat(Xtr_hand, Xtr_dp), cat(Xte_hand, Xte_dp)),
    }

    # per_seed[config][class] -> list of recalls across seeds
    per_seed = {name: defaultdict(list) for name in configs}
    acc_seed = {name: [] for name in configs}
    f1_seed = {name: [] for name in configs}

    for sd in args.seeds:
        for name, (Xtr, Xte) in configs.items():
            clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                         random_state=sd, class_weight="balanced")
            clf.fit(Xtr, ytr)
            pred = clf.predict(Xte)
            rep = classification_report(yte, pred, labels=labels,
                                        output_dict=True, zero_division=0)
            acc_seed[name].append(rep["accuracy"] * 100)
            f1_seed[name].append(rep["macro avg"]["f1-score"] * 100)
            for c in WATCH_CLASSES:
                per_seed[name][c].append(rep.get(c, {}).get("recall", 0.0) * 100)
        print(f"seed {sd} done")

    print(f"\n{'config':22s} {'test-acc':>18s} {'macro-F1':>18s}")
    print("-" * 62)
    for name in configs:
        am, ah = ci95(acc_seed[name])
        fm, fh = ci95(f1_seed[name])
        print(f"{name:22s} {am:6.2f}% +/- {ah:4.2f}pp   {fm:6.2f}% +/- {fh:4.2f}pp")

    print(f"\nper-class recall (mean +/- 95%CI over {len(args.seeds)} seeds):")
    header = f"{'config':22s}" + "".join(f"{c:>22s}" for c in WATCH_CLASSES)
    print(header)
    print("-" * len(header))
    for name in configs:
        row = f"{name:22s}"
        for c in WATCH_CLASSES:
            m, h = ci95(per_seed[name][c])
            row += f"{m:6.2f}% +/-{h:5.2f}pp".rjust(22)
        print(row)

    print("\n--- paired-by-seed vs hand+MLM baseline (the row -11.82pp SPECTRE_V2 was measured on) ---")
    base = "hand+MLM"
    results_out = {"seeds": args.seeds, "configs": {}}
    for name in configs:
        if name == base:
            continue
        print(f"\n{name} vs {base}:")
        cfg_out = {}
        for c in WATCH_CLASSES:
            a = np.asarray(per_seed[base][c], dtype=float)
            b = np.asarray(per_seed[name][c], dtype=float)
            diff = b - a
            dm, dh = ci95(diff)
            t, p = stats.ttest_rel(b, a) if len(a) > 1 else (float("nan"), float("nan"))
            sig = "significant" if (dm - dh > 0 or dm + dh < 0) else "not significant"
            print(f"  {c:28s} diff={dm:+6.2f}pp  95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}  {sig}")
            cfg_out[c] = {"diff_mean": dm, "ci95": [dm - dh, dm + dh], "p": p, "significant": sig == "significant"}
        results_out["configs"][name] = cfg_out

    out_path = ROOT / "eval" / "phase12_results.json"
    with open(out_path, "w") as f:
        json.dump({
            "acc": {n: {"mean": ci95(acc_seed[n])[0], "ci95": ci95(acc_seed[n])[1]} for n in configs},
            "macro_f1": {n: {"mean": ci95(f1_seed[n])[0], "ci95": ci95(f1_seed[n])[1]} for n in configs},
            "per_class_recall": {n: {c: {"mean": ci95(per_seed[n][c])[0], "ci95": ci95(per_seed[n][c])[1]}
                                     for c in WATCH_CLASSES} for n in configs},
            "vs_hand_mlm": results_out["configs"],
        }, f, indent=2)
    print(f"\nsaved -> {out_path}")


if __name__ == "__main__":
    main()
