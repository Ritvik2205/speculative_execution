#!/usr/bin/env python3
"""Ticket 06 table: does training on pairs lift held-out pairs? Writes eval/pairs/TRAIN_ARMS.md.

    python3 -m eval.pairs.train_report --llm eval/cluster_out/train_llm --gine eval/cluster_out

Reads `<llm>/<arm>_seed<k>.jsonl` (train_llm.py) and `<gine>/v2_<arm>_s<k>/pair_scores.jsonl`
(submit_v2_pairs.sh). A row is one set of held-out pairs; hardware sets are shown for all
mechanisms and for Spectre V1 alone, because every training pair is Spectre V1.
"""
from __future__ import annotations

import argparse
import json
import re
import statistics as st
import sys
from collections import defaultdict
from pathlib import Path

from eval.pairs import score, score_llm_local as local, train_data

ROOT = Path(__file__).resolve().parents[2]
HARDWARE = ("counterfactual", "nofence", "variants")
LLM_ARMS = ("zero", "fewshot", "lora", "pairwise")
GINE_ARMS = ("plain", "labels", "pairwise")


def rows_of(pairs):
    """{row name: pairs}. Hardware sets: all mechanisms, then Spectre V1 alone. Version-2 injected
    pairs: by part and kind."""
    out = defaultdict(list)
    for s in HARDWARE:
        for p in pairs:
            if p["set"] == s:
                out[f"{s}, all"].append(p)
        for p in pairs:
            if p["set"] == s and p["cls"] == "SPECTRE_V1":
                out[f"{s}, Spectre V1"].append(p)
    for p in pairs:
        if p["set"] == "injected2":
            out[f"injected v2 {p['part']}, {p['kind']}"].append(p)
    return dict(out)


def cell(pairs, tables):
    """One arm on one row. `tables` = one {(pair_id, side): score} per seed. rank = share of pairs
    with the leaking side higher (tie half), mean over seeds; both = share with both sides on the
    right side of 0.5; spread = sd of rank over seeds; interval = 95% over programs, on each
    pair's outcome averaged over seeds."""
    ranks, boths, mean_out = [], [], defaultdict(float)
    for t in tables:
        missing = [p["pair_id"] for p in pairs if (p["pair_id"], "leak") not in t or (p["pair_id"], "safe") not in t]
        if missing:
            raise ValueError(f"{len(missing)} of {len(pairs)} pairs not scored, e.g. {missing[0]}")
        o = {p["pair_id"]: (lambda l, s: 1.0 if l > s else 0.5 if l == s else 0.0)(
            t[(p["pair_id"], "leak")], t[(p["pair_id"], "safe")]) for p in pairs}
        ranks.append(sum(o.values()) / len(pairs))
        boths.append(sum(t[(p["pair_id"], "leak")] > 0.5 >= t[(p["pair_id"], "safe")] for p in pairs) / len(pairs))
        for k, v in o.items():
            mean_out[k] += v / len(tables)
    return {"rank": st.mean(ranks), "both": st.mean(boths), "seeds": len(tables),
            "spread": st.stdev(ranks) if len(ranks) > 1 else None,
            "interval": _interval(pairs, mean_out)}


def _interval(pairs, outcome, draws=2000, seed=0):
    import random
    by = defaultdict(list)
    for p in pairs:
        by[p["base"]].append(outcome[p["pair_id"]])
    progs = sorted(by)
    if len(progs) < 2:
        return None
    rng = random.Random(seed)
    xs = sorted(st.mean(v for b in rng.choices(progs, k=len(progs)) for v in by[b]) for _ in range(draws))
    return xs[int(0.025 * draws)], xs[int(0.975 * draws) - 1]


def passes(m, rule, untrained) -> bool:
    """The bar fixed in the spec: ranking above the mechanism rule and both-sides-right above the
    untrained model."""
    return m["rank"] > rule and m["both"] > untrained["both"]


def _tables(files):
    by = defaultdict(list)
    for f in sorted(files):
        t = {}
        for l in open(f):
            if l.strip():
                x = json.loads(l)
                t[(x["pair_id"], x["side"])] = x["score"]
        by[f.parent.name if f.name == "pair_scores.jsonl" else f.stem].append(t)
    return by


def _fmt(m):
    s = f"{m['rank']:.3f}"
    if m["spread"] is not None:
        s += f" ± {m['spread']:.3f}"
    if m["interval"]:
        s += f" [{m['interval'][0]:.2f}–{m['interval'][1]:.2f}]"
    return s + f" / {m['both']:.2f}"


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--llm", default=str(ROOT / "eval" / "cluster_out" / "train_llm"))
    ap.add_argument("--gine", default=str(ROOT / "eval" / "cluster_out"))
    ap.add_argument("--out", default=str(ROOT / "eval" / "pairs" / "TRAIN_ARMS.md"))
    a = ap.parse_args(argv)
    pairs = local.load_pairs(0, exclude_public=True) + train_data.load("val")[0] + train_data.load("test")[0]
    rows = rows_of(pairs)
    models = {}
    llm = defaultdict(list)
    for f in Path(a.llm).glob("*_seed*.jsonl"):
        llm[re.sub(r"_seed\d+$", "", f.stem)] += _tables([f])[f.stem]
    models["language model"] = {arm: llm[arm] for arm in LLM_ARMS if llm.get(arm)}
    gine = defaultdict(list)
    for f in Path(a.gine).glob("v2_*_s*/pair_scores.jsonl"):
        gine[re.sub(r"^v2_|_s\d+$", "", f.parent.name)] += _tables([f])[f.parent.name]
    models["graph model"] = {arm: gine[arm] for arm in GINE_ARMS if gine.get(arm)}

    md = ["# Training on pairs: held-out pairs by arm", "",
          "Cell = share of pairs with the leaking side scored higher (tie = half), mean over seeds "
          "± sd over seeds, [95% interval over programs], then / share of pairs with both sides on "
          "the right side of 0.5. Training pairs are version-2 injected pairs (Spectre V1 only); no "
          "hardware pair is used for training or selection.", ""]
    for model, arms in models.items():
        if not arms:
            continue
        base = next(iter(arms))                    # first listed arm = no training on pairs
        md += [f"## {model}", "", "Seeds: " + ", ".join(f"{k} {len(v)}" for k, v in arms.items()) + ".", "",
               "| row | pairs | programs | mechanism rule | " + " | ".join(arms) + " | bar |",
               "|---|---|---|---|" + "---|" * (len(arms) + 1)]
        for name, ps in rows.items():
            try:
                cells = {arm: cell(ps, ts) for arm, ts in arms.items()}
            except ValueError as e:
                md.append(f"| {name} | {len(ps)} | | | not complete: {e} |")
                continue
            hw = ps[0]["set"] in HARDWARE
            rule = score.mechanism_metrics(ps)["auc"] if hw else None
            bar = "–"
            if name.startswith("counterfactual"):
                bar = ", ".join(f"{arm}: {'pass' if passes(c, rule, cells[base]) else 'fail'}"
                                for arm, c in cells.items() if arm != base) or "–"
            md.append(f"| {name} | {len(ps)} | {len({p['base'] for p in ps})} | "
                      f"{f'{rule:.3f}' if rule is not None else '–'} | "
                      + " | ".join(_fmt(c) for c in cells.values()) + f" | {bar} |")
        md.append("")
    md += ["Bar (fixed before running, spec section 4): on `counterfactual`, ranking above the "
           "mechanism rule and both-sides-right above the arm with no training on pairs. `nofence` is "
           "reported whatever it is. A failure on non-V1 rows cannot separate \"training on pairs does "
           "not help\" from \"wrong mechanism in training\"."]
    Path(a.out).write_text("\n".join(md) + "\n")
    print("\n".join(md))
    return 0


if __name__ == "__main__":
    sys.exit(main())
