#!/usr/bin/env python3
"""FastSpec dataset (Tol et al., EuroS&P 2021): what separates "spectre" from
"benign" at the window level its detector works on?

Input: token streams from eval/replication/fastspec_tokens.py (a
re-implementation of FastSpec's preprocessing) for a random sample of files of
the four shipped folders. Windows follow list2tsv.py. All rules and models are
fitted on windows of the shipped TRAIN folders and scored on windows of the
shipped TEST folders, balanced accuracy.

  E1  single-token presence rules
  E2  bag of tokens (what a model with no order information gets)
  E3  the same after removing format: mnemonics only, AT&T size suffix
      stripped where the bare name exists, no operands / <UNK> / <imm>
  E4  provenance: how many test gadgets share (compiler family, base example)
      with a training gadget; and E2/E3 when whole base examples are held out
"""
from __future__ import annotations

import argparse
import json
import random
import re
import sys
from collections import Counter, defaultdict

PUNCT = {",", "(", ")", ":", "<imm>", "<label>", "<UNK>"}
MNEM = re.compile(r"^[a-z][a-z0-9]{1,11}$")


def bal_acc(pred, gold):
    out = []
    for c in (0, 1):
        idx = [i for i, g in enumerate(gold) if g == c]
        out.append(sum(pred[i] == c for i in idx) / len(idx) if idx else 0.0)
    return sum(out) / 2


def windows(toks, window, overlap=0):
    step = window - overlap
    out = [toks[i:i + window] for i in range(0, max(0, len(toks) - window + 1), step)]
    tail = toks[len(out) * step:]
    if len(tail) > 10 and len(tail) < window:
        out.append(tail)
    return out


def load(path, window, per_file_cap, rng):
    """{split: [(label, base, family, window tokens)]}"""
    data = defaultdict(list)
    for line in open(path):
        r = json.loads(line)
        ws = windows(r["tokens"], window)
        if len(ws) > per_file_cap:
            ws = rng.sample(ws, per_file_cap)
        lab = 1 if r["split"].startswith("spectre") else 0
        side = "train" if r["split"].endswith("train") else "test"
        for w in ws:
            data[side].append((lab, r.get("base"), r.get("family"), w))
    return data


def balance(rows, rng):
    by = {0: [r for r in rows if r[0] == 0], 1: [r for r in rows if r[0] == 1]}
    n = min(len(by[0]), len(by[1]))
    return rng.sample(by[0], n) + rng.sample(by[1], n)


def canon_bag(w, names):
    out = Counter()
    for t in w:
        if t in PUNCT or t.startswith("%") or not MNEM.match(t):
            continue
        out[t[:-1] if len(t) > 2 and t[-1] in "bwlq" and t[:-1] in names else t] += 1
    return out


def rf(train_bags, ytr, test_bags, yte, seed=0):
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.feature_extraction import DictVectorizer
    vec = DictVectorizer()
    clf = RandomForestClassifier(n_estimators=200, random_state=seed, n_jobs=-1).fit(
        vec.fit_transform(train_bags), ytr)
    return bal_acc(list(clf.predict(vec.transform(test_bags))), yte), (vec, clf)


def single_rules(tr, te, key, top=8):
    n = {c: sum(1 for r in tr if r[0] == c) for c in (0, 1)}
    df = {0: Counter(), 1: Counter()}
    for lab, _, _, w in tr:
        df[lab].update(set(key(w)))
    cand = sorted(set(df[0]) | set(df[1]), key=lambda t: -abs(df[1][t] / n[1] - df[0][t] / n[0]))[:top]
    out = []
    for t in cand:
        cls = 1 if df[1][t] / n[1] > df[0][t] / n[0] else 0
        acc = bal_acc([cls if t in set(key(w)) else 1 - cls for _, _, _, w in te], [r[0] for r in te])
        out.append((t, cls, df[0][t] / n[0], df[1][t] / n[1], acc))
    return out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("tokens")
    ap.add_argument("--window", type=int, default=80)
    ap.add_argument("--per-file-cap", type=int, default=6)
    ap.add_argument("--seed", type=int, default=0)
    a = ap.parse_args(argv)
    rng = random.Random(a.seed)
    data = load(a.tokens, a.window, a.per_file_cap, rng)
    tr, te = balance(data["train"], rng), balance(data["test"], rng)
    ytr, yte = [r[0] for r in tr], [r[0] for r in te]
    print(f"window {a.window} tokens, at most {a.per_file_cap} windows per file; balanced: "
          f"train {len(tr)} windows, test {len(te)} windows\n")

    print("## E1 single-token presence rules (tokens as FastSpec's preprocessing leaves them)\n")
    print("| token | share of benign windows | share of spectre windows | rule | test balanced accuracy |\n|---|---|---|---|---|")
    for t, cls, p0, p1, acc in single_rules(tr, te, lambda w: w):
        print(f"| `{t}` | {p0:.3f} | {p1:.3f} | present => {'spectre' if cls else 'benign'} | {acc:.4f} |")

    acc, _ = rf([Counter(w) for *_, w in tr], ytr, [Counter(w) for *_, w in te], yte)
    print(f"\n## E2 bag of tokens, random forest: test balanced accuracy {acc:.4f}\n")

    names = {t for *_, w in tr + te for t in w if MNEM.match(t)}
    ctr, cte = [canon_bag(w, names) for *_, w in tr], [canon_bag(w, names) for *_, w in te]
    acc3, model3 = rf(ctr, ytr, cte, yte)
    print("## E3 format removed (canonical mnemonics only)\n")
    print(f"- mnemonic-count random forest: test balanced accuracy {acc3:.4f}")
    print("- best single-mnemonic rules:")
    cano = lambda w: list(canon_bag(w, names))
    for t, cls, p0, p1, acc in single_rules(tr, te, cano, top=6):
        print(f"    `{t}` present => {'spectre' if cls else 'benign'}: benign {p0:.3f}, spectre {p1:.3f}, "
              f"test balanced accuracy {acc:.4f}")

    print("\n## E4 provenance\n")
    trp = {(f, b) for lab, b, f, _ in data["train"] if lab == 1 and f}
    tep = Counter((f, b) for lab, b, f, _ in data["test"] if lab == 1 and f)
    shared = sum(n for k, n in tep.items() if k in trp)
    print(f"- test spectre windows whose (compiler family, base example) also occurs in train: "
          f"{shared}/{sum(tep.values())} ({shared / sum(tep.values()):.3f})")
    bases = sorted({b.split(".")[0] for lab, b, f, _ in data["train"] + data["test"]
                    if lab == 1 and b and f not in (None, "sample")}, key=int)
    print(f"- base examples seen (integer part of the id in the file name): {len(bases)}: {' '.join(bases)}")
    held = set(bases[::2])                       # hold out every other base example
    in_held = lambda r: r[1] is not None and r[2] not in (None, "sample") and r[1].split(".")[0] in held
    tr_g = [r for r in data["train"] if r[0] == 0 or (r[0] == 1 and r[1] and r[2] not in (None, "sample")
                                                       and not in_held(r))]
    te_g = [r for r in data["test"] if r[0] == 0 or in_held(r)]
    tr_g, te_g = balance(tr_g, rng), balance(te_g, rng)
    accg, _ = rf([Counter(w) for *_, w in tr_g], [r[0] for r in tr_g],
                 [Counter(w) for *_, w in te_g], [r[0] for r in te_g])
    accgc, _ = rf([canon_bag(w, names) for *_, w in tr_g], [r[0] for r in tr_g],
                  [canon_bag(w, names) for *_, w in te_g], [r[0] for r in te_g])
    print(f"- held-out base examples ({len(held)} of {len(bases)}: {' '.join(sorted(held, key=int))}); "
          f"train {len(tr_g)}, test {len(te_g)} windows")
    print(f"    bag of tokens: {accg:.4f};  canonical mnemonics: {accgc:.4f}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
