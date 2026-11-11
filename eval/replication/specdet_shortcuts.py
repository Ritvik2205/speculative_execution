#!/usr/bin/env python3
"""SPECDET (Biringa, Baye, Kul, HASP'22; arXiv:2210.14452) -- does the shipped
gadget-detection data separate its classes by file format?

Reads the pickles shipped in the SPECDET repository (the exact samples its 1D-CNN
uses; token lists made by its own `wrangle` + whitespace split, so these are the
tokens the model sees). Reports
  1. class balance per split;
  2. single-token rules: "token present => class", chosen on train, scored on
     test (balanced accuracy), for the best tokens;
  3. format-only features: assembler directives (.cfi_*, .text ...), objdump
     address / byte-column tokens;
  4. what is left after normalising both classes to bare mnemonics: an
     opcode-count model, and how many test samples share their mnemonic
     multiset with a training sample of the same class.

Nothing from the SPECDET repository is copied into this repository; pass the
path of a local clone.  python3 eval/replication/specdet_shortcuts.py <clone>
"""
from __future__ import annotations

import argparse
import pickle
import re
import sys
from collections import Counter
from pathlib import Path

HEX16 = re.compile(r"^[0-9a-f]{16}$")
ADDR = re.compile(r"^[0-9a-f]{3,16}:$")
BYTE = re.compile(r"^[0-9a-f]{2}$")
DIRECTIVE = re.compile(r"^\.[a-zA-Z_]")
LABEL = re.compile(r"^[.\w$@]+:$|^<.*>:?$")
MNEMONIC = re.compile(r"^[a-z][a-z0-9]{1,9}$")
REG_OR_OPERAND = re.compile(r"[%$(),]")


def load(d: Path, name: str):
    with open(d / name, "rb") as f:
        return pickle.load(f)          # scanned beforehand: lists / str / int only


def bal_acc(pred, gold):
    out = []
    for c in (0, 1):
        idx = [i for i, g in enumerate(gold) if g == c]
        out.append(sum(pred[i] == c for i in idx) / len(idx) if idx else 0.0)
    return sum(out) / 2


def mnemonics(tokens):
    """Bare mnemonics: drop directives (and their arguments on the same
    logical line is not recoverable from a flat token list, so drop only the
    directive token), addresses, byte columns, labels and operands."""
    out = []
    for t in tokens:
        t = t.lower()
        if DIRECTIVE.match(t) or HEX16.match(t) or ADDR.match(t) or BYTE.match(t) or LABEL.match(t):
            continue
        if REG_OR_OPERAND.search(t) or not MNEMONIC.match(t):
            continue
        out.append(t)
    return out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("clone")
    ap.add_argument("--top", type=int, default=12)
    a = ap.parse_args(argv)
    d = Path(a.clone) / "src" / "SGDetector" / "data"
    X = {s: load(d, f"{s}_set.pickle") for s in ("training", "validation", "test")}
    y = {s: load(d, f"{s}_set_labels.pickle") for s in X}
    print("## Splits\n\n| split | samples | benign (0) | spectre (1) | median tokens |\n|---|---|---|---|---|")
    for s in X:
        L = sorted(len(x) for x in X[s])
        print(f"| {s} | {len(X[s])} | {y[s].count(0)} | {y[s].count(1)} | {L[len(L) // 2]} |")
    assert all(len(X[s]) == len(y[s]) for s in X)

    tr_sets = [set(x) for x in X["training"]]
    te_sets = [set(x) for x in X["test"]]
    n0, n1 = y["training"].count(0), y["training"].count(1)
    df = {0: Counter(), 1: Counter()}
    for s, lab in zip(tr_sets, y["training"]):
        df[lab].update(s)
    score = {}
    for t in set(df[0]) | set(df[1]):
        p0, p1 = df[0][t] / n0, df[1][t] / n1
        score[t] = (abs(p1 - p0), 1 if p1 > p0 else 0, p0, p1)
    best = sorted(score, key=lambda t: -score[t][0])[: a.top]
    print("\n## Single-token rules (chosen on train, scored on test)\n\n"
          "| token | in benign train | in spectre train | rule | test balanced accuracy |\n|---|---|---|---|---|")
    for t in best:
        _, cls, p0, p1 = score[t]
        pred = [cls if t in s else 1 - cls for s in te_sets]
        print(f"| `{t}` | {p0:.3f} | {p1:.3f} | present => {'spectre' if cls else 'benign'} | "
              f"{bal_acc(pred, y['test']):.4f} |")

    print("\n## Format-only features (share of samples containing at least one)\n\n"
          "| feature | benign train | spectre train | benign test | spectre test |\n|---|---|---|---|---|")
    feats = {"assembler directive (.xxx)": lambda x: any(DIRECTIVE.match(t) for t in x),
             ".cfi_startproc": lambda x: ".cfi_startproc" in x,
             "16-hex-digit token (objdump symbol address)": lambda x: any(HEX16.match(t) for t in x),
             "address column token (hex:)": lambda x: any(ADDR.match(t) for t in x),
             "byte-column token (two hex digits)": lambda x: any(BYTE.match(t) for t in x)}
    for name, fn in feats.items():
        row = []
        for s in ("training", "test"):
            for c in (0, 1):
                xs = [x for x, lab in zip(X[s], y[s]) if lab == c]
                row.append(sum(fn(x) for x in xs) / len(xs))
        print(f"| {name} | {row[0]:.3f} | {row[1]:.3f} | {row[2]:.3f} | {row[3]:.3f} |")

    from sklearn.ensemble import RandomForestClassifier
    from sklearn.feature_extraction import DictVectorizer
    # canonical mnemonics: both classes reduced to instruction names, with the
    # AT&T size suffix removed where the bare name also occurs in the data
    # (compiler output writes `movq`, objdump writes `mov`)
    raw = {s_: [mnemonics(x) for x in X[s_]] for s_ in X}
    names = {m for xs in raw.values() for x in xs for m in x}

    def canon(m):
        return m[:-1] if len(m) > 2 and m[-1] in "bwlq" and m[:-1] in names else m
    M = {s_: [Counter(canon(m) for m in x) for x in raw[s_]] for s_ in X}

    def length_rule(tr, ytr, te, yte):
        best = max(((t, d) for t in sorted(set(tr)) for d in (0, 1)),
                   key=lambda td: bal_acc([td[1] if n >= td[0] else 1 - td[1] for n in tr], ytr))
        return best, bal_acc([best[1] if n >= best[0] else 1 - best[1] for n in te], yte)

    (t, dcls), acc = length_rule([len(x) for x in X["training"]], y["training"],
                                 [len(x) for x in X["test"]], y["test"])
    print("\n## Length alone (tokens as the model sees them)\n")
    print(f"- rule fitted on train: >= {t} tokens => {'spectre' if dcls else 'benign'}; "
          f"test balanced accuracy {acc:.4f}")
    lb = sorted(len(x) for x, lab in zip(X["test"], y["test"]) if lab == 0)
    ls = sorted(len(x) for x, lab in zip(X["test"], y["test"]) if lab == 1)
    print(f"- test median tokens: benign {lb[len(lb) // 2]}, spectre {ls[len(ls) // 2]}")

    print("\n## After reducing both classes to canonical mnemonics\n")
    vec = DictVectorizer()
    clf = RandomForestClassifier(n_estimators=200, random_state=0, n_jobs=-1,
                                 class_weight="balanced").fit(vec.fit_transform(M["training"]), y["training"])
    pred = list(clf.predict(vec.transform(M["test"])))
    print(f"- mnemonic-count random forest: test balanced accuracy {bal_acc(pred, y['test']):.4f}")
    n0, n1 = y["training"].count(0), y["training"].count(1)
    dfm = {0: Counter(), 1: Counter()}
    for m, lab in zip(M["training"], y["training"]):
        dfm[lab].update(set(m))
    cand = sorted(set(dfm[0]) | set(dfm[1]), key=lambda k: -abs(dfm[1][k] / n1 - dfm[0][k] / n0))[:6]
    print("- best single-mnemonic rules (presence), chosen on train:")
    for k in cand:
        cls = 1 if dfm[1][k] / n1 > dfm[0][k] / n0 else 0
        acc = bal_acc([cls if k in m else 1 - cls for m in M["test"]], y["test"])
        print(f"    `{k}` present => {'spectre' if cls else 'benign'}: in benign {dfm[0][k] / n0:.3f}, "
              f"in spectre {dfm[1][k] / n1:.3f}, test balanced accuracy {acc:.4f}")
    (t, dcls), acc = length_rule([sum(m.values()) for m in M["training"]], y["training"],
                                 [sum(m.values()) for m in M["test"]], y["test"])
    print(f"- instruction-count rule: >= {t} => {'spectre' if dcls else 'benign'}; "
          f"test balanced accuracy {acc:.4f}")
    seen = {c: {frozenset(m.items()) for m, lab in zip(M["training"], y["training"]) if lab == c} for c in (0, 1)}
    for c, name in ((0, "benign"), (1, "spectre")):
        te = [m for m, lab in zip(M["test"], y["test"]) if lab == c]
        dup = sum(frozenset(m.items()) in seen[c] for m in te)
        print(f"- {name} test samples whose mnemonic multiset also occurs in {name} train: "
              f"{dup}/{len(te)} ({dup / len(te):.3f})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
