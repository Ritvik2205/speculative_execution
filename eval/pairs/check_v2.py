#!/usr/bin/env python3
"""Shortcut checks on the version-2 injected pairs. Writes eval/pairs/data/v2/CHECKS.md.

A pair set is fit to train on only if nothing simple separates its sides. Every bar below is
fitted on the train part and scored on the val and test parts, per kind. Cell = share of pairs
where the leaking side scores higher (tie = half); 0.5 = the bar cannot tell.

    python3 -m eval.pairs.check_v2 [--dir eval/pairs/data/v2]
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

from eval.pairs import score

ROOT = Path(__file__).resolve().parents[2]
_TOK = re.compile(r"%?[A-Za-z_.][\w.]*|\$?-?\d+|[(),:]")


def tokens(seq):
    return [t for line in seq for t in _TOK.findall(line.lower())]


def _first(seq, pred):
    return next((i for i, x in enumerate(seq) if pred(x)), len(seq))


FEATURES = {
    "length": len,
    "barriers": score._fences,
    "interior fence rule": score.SCORERS["no interior fence"],
    "memory operands": lambda s: sum("(" in x for x in s),
    "index of first fence": lambda s: _first(s, lambda x: x.strip() == "lfence"),
    "index of first use of %r15": lambda s: _first(s, lambda x: "%r15" in x),
    "distinct registers": lambda s: len({t for t in tokens(s) if t.startswith("%")}),
}


def auc(pairs, f):
    if not pairs:
        return float("nan")
    return sum(1.0 if f(p["leak"]) > f(p["safe"]) else 0.5 if f(p["leak"]) == f(p["safe"]) else 0.0
               for p in pairs) / len(pairs)


def fitted(train, f):
    """The feature with the sign that does better on train."""
    return f if auc(train, f) >= 0.5 else (lambda s: -f(s))


def best_token(train):
    """The single token whose presence best separates the sides on train: (token, sign, train auc)."""
    cache = {}

    def bag(s):
        k = tuple(s)
        if k not in cache:
            cache[k] = set(tokens(s))
        return cache[k]
    cand = Counter(t for p in train for t in bag(p["leak"]) ^ bag(p["safe"]))
    best = ("-", 1, 0.5)
    for t in cand:
        a = auc(train, lambda s: t in bag(s))
        for sign, v in ((1, a), (-1, 1 - a)):
            if v > best[2]:
                best = (t, sign, v)
    return best


def token_gbm(train, bigrams, seed=0, min_support=5):
    from sklearn.ensemble import HistGradientBoostingClassifier
    from sklearn.feature_extraction import DictVectorizer

    def feats(s):
        t = tokens(s)
        f = Counter(t)
        if bigrams:
            f.update(f"{a} {b}" for a, b in zip(t, t[1:]))
        return f
    rows = [(feats(p[side]), side == "leak") for p in train for side in ("leak", "safe")]
    seen = Counter(k for f, _ in rows for k in f)
    keep = {k for k, n in seen.items() if n >= min_support}
    vec = DictVectorizer(sparse=False)
    X = vec.fit_transform([{k: v for k, v in f.items() if k in keep} for f, _ in rows])
    clf = HistGradientBoostingClassifier(random_state=seed, max_iter=200).fit(X, [y for _, y in rows])
    cache = {}

    def scorer(s):
        k = tuple(s)
        if k not in cache:
            cache[k] = float(clf.predict_proba(vec.transform([{a: b for a, b in feats(s).items() if a in keep}]))[0, 1])
        return cache[k]
    return scorer


def sides(pairs):
    return [{"sequence": p[s], "label": "LEAK" if s == "leak" else "SAFE"} for p in pairs for s in ("leak", "safe")]


def overlap(train, other):
    """Share of the other part's pairs whose host cluster or core template also occurs in train."""
    h, t = {p["host_cluster"] for p in train}, {p["template"] for p in train}
    return sum(p["host_cluster"] in h or p["template"] in t for p in other) / len(other) if other else float("nan")


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--dir", default=str(ROOT / "eval" / "pairs" / "data" / "v2"))
    a = ap.parse_args(argv)
    d = Path(a.dir)
    part = {}
    for name in ("train", "val", "test"):
        f = d / f"pairs_injected2_{name}.jsonl"
        ps = [json.loads(l) for l in f.read_text().splitlines()] if f.exists() else []
        part[name] = list({p["pair_id"]: p for p in ps}.values())
    train = part["train"]
    if not train:
        print("no train pairs yet")
        return 1
    out = ["# Version-2 injected pairs: shortcut checks", "",
           "Every bar is fitted on the train part only. Cell = share of pairs where the leaking side "
           "scores higher (tie = half); 0.5 = cannot tell. A bar well above 0.5 on val or test is a "
           "shortcut a trained model could use in place of the property.", "",
           "## Sizes", "", "| part | kind | pairs | hosts | host clusters | core templates | distinct cores |",
           "|---|---|---|---|---|---|---|"]
    groups = {}
    for name in ("train", "val", "test"):
        by = defaultdict(list)
        for p in part[name]:
            by[p["kind"]].append(p)
        for k in sorted(by):
            g = by[k]
            groups[(name, k)] = g
            out.append(f"| {name} | {k} | {len(g)} | {len({p['base'] for p in g})} | "
                       f"{len({p['host_cluster'] for p in g})} | {len({p['template'] for p in g})} | "
                       f"{len({tuple(p['core']) for p in g})} |")
    out += ["", f"Pairs in val whose host cluster or core template occurs in train: {overlap(train, part['val']):.3f}; "
            f"in test: {overlap(train, part['test']):.3f} (must be 0).",
            f"Sequences that are a leaking side in one pair and a safe side in another: "
            f"{len({tuple(p['leak']) for ps in part.values() for p in ps} & {tuple(p['safe']) for ps in part.values() for p in ps})}.",
            ""]
    tok = best_token(train)
    bars = {n: fitted(train, f) for n, f in FEATURES.items()}
    bars[f"best single token on train (`{tok[0]}` {'=> leak' if tok[1] > 0 else '=> safe'}, train {tok[2]:.3f})"] = \
        lambda s, t=tok: t[1] * (t[0] in set(tokens(s)))
    tr_sides = sides(train)
    for bi in (False, True):
        g = score.train_gbm(tr_sides, 0, bi)
        g.prime([p[k] for ps in part.values() for p in ps for k in ("leak", "safe")])
        bars["opcode counts" + (" + adjacent pairs" if bi else "") + ", boosted"] = g
    for bi in (False, True):
        bars["all tokens" + (" + adjacent pairs" if bi else "") + ", boosted"] = token_gbm(train, bi)
    cols = [k for k in sorted(groups) if k[0] != "train"] + [k for k in sorted(groups) if k[0] == "train"]
    out += ["## Bars", "", "| bar | " + " | ".join(f"{n} {k} ({len(groups[(n, k)])})" for n, k in cols) + " |",
            "|---|" + "---|" * len(cols)]
    worst = 0.5
    for name, f in bars.items():
        cells = []
        for c in cols:
            v = auc(groups[c], f)
            if c[0] != "train":
                worst = max(worst, v, 1 - v)
            cells.append(f"{v:.3f}")
        out.append(f"| {name} | " + " | ".join(cells) + " |")
    out += ["", "The train columns show what each bar fits; the boosted bars memorise train, so only val and "
            "test columns count.", "",
            f"Largest distance from 0.5 on val or test, either direction: {abs(worst - 0.5):.3f} "
            "(sampling alone moves a cell by about ±0.05 at 400 pairs and ±0.10 at 100).", "",
            "Reading the `%r15` row: `%r15` is the victim's tainted pointer and every core uses it. In "
            "this victim any fence before the core protects it, so \"a fence precedes every use of "
            "`%r15`\" is the leak condition itself, not a construction artefact; a leaking side with such "
            "a fence cannot exist. The risk is the fixed name: rename the pointer consistently on both "
            "sides at training time so a model cannot learn `%r15` itself. On `reorder` (test only) the "
            "first `%r15` use moves later on the safe side when it moves at all; that is the reordering."]
    (d / "CHECKS.md").write_text("\n".join(out) + "\n")
    print("\n".join(out))
    return 0


if __name__ == "__main__":
    sys.exit(main())
