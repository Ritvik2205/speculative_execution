#!/usr/bin/env python3
"""Score any leak scorer on the pair benchmark.

A scorer maps an instruction sequence to a number, higher = more likely to leak.
Primary measure: over pairs, how often the leaking side scores higher (a tie
counts half; reported as `auc`, with wins and ties shown). A scorer that cannot
see the difference between the two sides ties and gets 0.5. Programs with many
pairs would dominate, so `auc_by_base` averages within a program first.
Secondary: accuracy at a cutoff fixed on training data, both sides.

    python3 -m eval.pairs.score [--scores NAME=file.jsonl ...]

A scores file (for models run elsewhere) holds {"pair_id", "side", "score"} lines.
"""
from __future__ import annotations

import argparse
import json
import statistics as st
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))
DATA = ROOT / "eval" / "pairs" / "data"
MIN_SUPPORT = 20


def pair_metrics(pairs: list[dict], scorer) -> dict:
    wins = ties = 0
    by = defaultdict(list)
    for p in pairs:
        a, b = scorer(p["leak"]), scorer(p["safe"])
        o = 1.0 if a > b else 0.5 if a == b else 0.0
        wins += o == 1.0
        ties += o == 0.5
        by[p["base"]].append(o)
    n = len(pairs)
    return {"n": n, "wins": wins, "ties": ties, "losses": n - wins - ties,
            "win_rate": wins / n if n else float("nan"),
            "auc": (wins + 0.5 * ties) / n if n else float("nan"),
            "auc_by_base": st.mean(st.mean(v) for v in by.values()) if by else float("nan"),
            "bases": len(by)}


def threshold_accuracy(pairs: list[dict], scorer, cutoff: float) -> dict:
    """Call a side LEAK when its score is above the cutoff."""
    l = [scorer(p["leak"]) > cutoff for p in pairs]
    s = [not scorer(p["safe"]) > cutoff for p in pairs]
    n = len(pairs)
    return {"leak_recall": sum(l) / n, "safe_specificity": sum(s) / n,
            "balanced": (sum(l) + sum(s)) / (2 * n),
            "both_right": sum(a and b for a, b in zip(l, s)) / n}


_ARM_BARRIER = {"csdb", "sb", "dsb", "isb"}


def _barrier(line: str) -> bool:
    """x86 *fence, or an arm64 barrier (csdb is spelled `hint #20` by older kernels)."""
    t = line.lower().split()
    if not t:
        return False
    return "fence" in t[0] or t[0] in _ARM_BARRIER or (t[0] == "hint" and t[1:2] == ["#20"])


def _fences(seq):
    return sum(map(_barrier, seq))


def _interior(seq):
    from eval.mechanism.bars import interior_fence_pred
    return float(interior_fence_pred({"sequence": [x.strip() for x in seq], "label": "X"}) != "BENIGN")


def _mechanism(cls):
    from eval.mechanism.hybrid import hybrid_pred

    def f(seq):
        p = hybrid_pred({"sequence": [x.strip() for x in seq], "vuln_class": cls, "label": cls})
        return 0.5 if p is None else float(p != "BENIGN")
    return f


SCORERS = {"length": len,
           "shorter": lambda s: -len(s),
           "fewer fences": lambda s: -_fences(s),
           "no interior fence": _interior}


def opcode_features(seq, bigrams=False):
    """Opcode counts in the spelling the v57 training data uses; optional adjacent pairs."""
    from v57 import neardup
    from v57.build import canonical_spelling
    ops = [o for x in canonical_spelling(list(seq)) for o in neardup.opcodes([x])]
    f = Counter(ops)
    if bigrams:
        f.update(f"{a}>{b}" for a, b in zip(ops, ops[1:]))
    return dict(f)


def train_gbm(train: list[dict], seed: int, bigrams: bool):
    from sklearn.ensemble import HistGradientBoostingClassifier
    from sklearn.feature_extraction import DictVectorizer
    feats = [opcode_features(r["sequence"], bigrams) for r in train]
    seen = Counter(k for f in feats for k in f)
    keep = {k for k, n in seen.items() if n >= MIN_SUPPORT}     # features in >= 20 training records
    vec = DictVectorizer(sparse=False)
    X = vec.fit_transform([{k: v for k, v in f.items() if k in keep} for f in feats])
    clf = HistGradientBoostingClassifier(random_state=seed, max_iter=200).fit(
        X, [r["label"] == "LEAK" for r in train])
    cache = {}

    def scorer(seq):
        return cache[tuple(seq)]

    def prime(seqs):
        todo = list({tuple(q) for q in seqs} - set(cache))
        if todo:
            pr = clf.predict_proba(vec.transform([opcode_features(q, bigrams) for q in todo]))[:, 1]
            cache.update(zip(todo, map(float, pr)))
    scorer.prime = prime
    return scorer


def file_scorer(path):
    m = {}
    for l in open(path):
        if l.strip():
            x = json.loads(l)
            m[(x["pair_id"], x["side"])] = x["score"]
    return m


def score_files(groups: dict, specs: list[str]) -> dict:
    """`NAME=file` specs -> {NAME: {group: [metrics per file]}}. Files that share a NAME are
    seeds of one model. A pair counts only if the file scores both of its sides."""
    out = defaultdict(lambda: defaultdict(list))
    for spec in specs:
        name, _, path = spec.partition("=")
        m = file_scorer(path)
        for g, ps in groups.items():
            have = [p for p in ps if (p["pair_id"], "leak") in m and (p["pair_id"], "safe") in m]
            if have:
                look = {tuple(p[s]): m[(p["pair_id"], s)] for p in have for s in ("leak", "safe")}
                out[name][g].append(pair_metrics(have, lambda s: look[tuple(s)]))
    return out


def _load(p):
    return [json.loads(l) for l in open(p) if l.strip()]


def _fmt(ms: list[dict]) -> str:
    """One cell: mean over seeds of auc (wins/ties share), auc_by_base."""
    g = lambda k: st.mean(m[k] for m in ms)
    n = ms[0]["n"]
    spread = f" ± {st.stdev(m['auc'] for m in ms):.3f} ({len(ms)} seeds)" if len(ms) > 1 else ""
    return f"{g('auc'):.3f}{spread} | {g('wins') / n:.2f} / {g('ties') / n:.2f} | {g('auc_by_base'):.3f}"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--seeds", type=int, nargs="+", default=[0],
                    help="the boosted models are deterministic at this data size; more seeds repeat the number")
    ap.add_argument("--train", default=str(ROOT / "v57" / "data" / "v57_leak_train.jsonl"))
    ap.add_argument("--scores", nargs="*", default=[])
    ap.add_argument("--out", default=str(ROOT / "eval" / "pairs" / "PAIRS.md"))
    a = ap.parse_args(argv)
    pairs = [p for f in sorted(DATA.glob("pairs_*.jsonl")) for p in _load(f)]
    groups = defaultdict(list)
    for p in pairs:
        groups[(p["set"], "all")].append(p)
        if p["set"] == "injected":
            groups[(p["set"], p["kind"])].append(p)
        elif not p["set"].startswith("linux"):
            groups[(p["set"], p["cls"])].append(p)
    train = _load(a.train)
    rows = defaultdict(dict)            # scorer -> group -> [metrics per seed]
    thr = defaultdict(dict)
    for name, f in SCORERS.items():
        for g, ps in groups.items():
            rows[name][g] = [pair_metrics(ps, f)]
    for g, ps in groups.items():
        by_cls = defaultdict(list)
        for p in ps:
            by_cls[p["cls"]].append(p)
        ms = [(pair_metrics(q, _mechanism(c)), len(q)) for c, q in by_cls.items()]
        tot = sum(n for _, n in ms)
        rows["mechanism rule"][g] = [{
            "n": tot, "wins": sum(m["wins"] for m, _ in ms), "ties": sum(m["ties"] for m, _ in ms),
            "auc": sum(m["auc"] * n for m, n in ms) / tot,
            "auc_by_base": sum(m["auc_by_base"] * m["bases"] for m, _ in ms) / sum(m["bases"] for m, _ in ms)}]
    for bigrams, name in ((False, "opcode counts, boosted (v57)"), (True, "opcode counts + bigrams, boosted (v57)")):
        for seed in a.seeds:
            f = train_gbm(train, seed, bigrams)
            f.prime([p[k] for p in pairs for k in ("leak", "safe")])
            for g, ps in groups.items():
                rows[name].setdefault(g, []).append(pair_metrics(ps, f))
                thr[name].setdefault(g, []).append(threshold_accuracy(ps, f, 0.5))
    for name, per_group in score_files(groups, a.scores).items():
        rows[name].update(per_group)
    md = ["# Pair benchmark", "",
          "Each pair: a leaking sequence and a non-leaking one that share everything except the "
          "property. Cell = `auc | wins / ties | auc averaged per program`; auc is the share of "
          "pairs where the leaking side scores higher, a tie counting half. 0.5 = cannot tell.",
          f"Trained scorers: v57 leak/safe training split, {len(a.seeds)} seed(s) (deterministic at this size).", ""]
    md += ["## Summary (auc)", "", "| set | pairs | " + " | ".join(rows) + " |",
           "|---|---|" + "---|" * len(rows)]
    for g in sorted(groups):
        if g[1] == "all" or g[0] == "injected":
            md.append(f"| {g[0]} {g[1]} | {len(groups[g])} | " + " | ".join(
                f"{st.mean(m['auc'] for m in rows[n][g]):.3f}" if g in rows[n] else "–" for n in rows) + " |")
    md.append("")
    for g in sorted(groups):
        ps = groups[g]
        md += [f"## {g[0]} — {g[1]} ({len(ps)} pairs, {len({p['base'] for p in ps})} programs)", "",
               "| scorer | auc | wins / ties | auc per program |", "|---|---|---|---|"]
        md += [f"| {name} | {_fmt(rows[name][g])} |" for name in rows if g in rows[name]]
        if any(g in thr[n] for n in thr):
            md += ["", "| at cutoff 0.5 | leak recall | safe specificity | both sides right |", "|---|---|---|---|"]
            for n in thr:
                t = thr[n][g]
                md.append(f"| {n} | {st.mean(x['leak_recall'] for x in t):.3f} | "
                          f"{st.mean(x['safe_specificity'] for x in t):.3f} | "
                          f"{st.mean(x['both_right'] for x in t):.3f} |")
        md.append("")
    Path(a.out).write_text("\n".join(md))
    print("\n".join(md))
    return 0


if __name__ == "__main__":
    sys.exit(main())
