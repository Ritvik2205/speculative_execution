#!/usr/bin/env python3
"""LLM baseline report: every scorer on the SAME sampled pairs. Writes eval/pairs/LLM.md.

    python3 -m eval.pairs.llm_report
"""
from __future__ import annotations

import json
import statistics as st
import sys
from collections import Counter, defaultdict
from pathlib import Path

from eval.pairs import score, score_llm

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "eval" / "pairs" / "data"
TAG = "opus55"


def _auc(pairs, table):
    o = [1.0 if table[(p["pair_id"], "leak")] > table[(p["pair_id"], "safe")] else
         0.5 if table[(p["pair_id"], "leak")] == table[(p["pair_id"], "safe")] else 0.0
         for p in pairs if (p["pair_id"], "leak") in table and (p["pair_id"], "safe") in table]
    return (st.mean(o), len(o)) if o else (float("nan"), 0)


def _per_repeat(pairs, protocol, ledger, reps):
    """One score table per repeat, read from the paid-call ledger."""
    tables = []
    for r in range(reps):
        def complete(system, prompt, r=r):
            row = ledger.get(score_llm.job_key(score_llm.MODEL, "low", system, prompt, r))
            return row["text"] if row else None
        fn = score_llm.run_single if protocol == "single" else score_llm.run_choice
        rows, _ = fn(pairs, complete)
        if rows:
            tables.append({(x["pair_id"], x["side"]): x["score"] for x in rows})
    return tables


def _spread(g, tables):
    xs = [x for x, n in (_auc(g, t) for t in tables) if n == len(g)]
    if len(xs) < 2:
        return f"{xs[0]:.3f}" if xs else "—"
    return f"{st.mean(xs):.3f} ± {st.stdev(xs):.3f} [{min(xs):.2f}–{max(xs):.2f}]"


def main() -> int:
    allp = [json.loads(l) for f in sorted(DATA.glob("pairs_*.jsonl")) for l in open(f) if l.strip()]
    single = score.file_scorer(DATA / f"llm_single_{TAG}.jsonl")
    choice = score.file_scorer(DATA / f"llm_choice_{TAG}.jsonl")
    pairs = [p for p in allp if (p["pair_id"], "leak") in single]
    groups = defaultdict(list)
    for p in pairs:
        groups[p["set"] + (" " + p["kind"] if p["set"] == "injected" else "")].append(p)
    gine = {a: [score.file_scorer(f) for f in sorted((ROOT / "eval" / "cluster_out").glob(f"v57_{a}_s*/pair_scores.jsonl"))]
            for a in ("plain", "cfg")}
    ledger = score_llm.Ledger(DATA / "llm_ledger.jsonl", 0)
    reps = {pr: _per_repeat(pairs, pr, ledger, 5) for pr in ("single", "choice")}
    nrep = min(len(v) for v in reps.values())
    led = [json.loads(l) for l in open(DATA / "llm_ledger.jsonl")]
    served = Counter(r["model"] for r in led)
    out = ["# LLM baseline on the pair benchmark", "",
           f"Model asked: `{score_llm.MODEL}`, effort low, no training on our data, {nrep} repeat(s). "
           f"Sample: {len(pairs)} pairs, 30 per set (seeded). Every column below is computed on these "
           "same pairs, so the columns are comparable with each other but not with `PAIRS.md`.", "",
           f"Calls: {len(led)}, cost ${sum(r['cost'] for r in led):.2f}. Served by: "
           + ", ".join(f"`{m}` {n}" for m, n in served.most_common())
           + ". A call served by another model is a server-side fallback after the first model declined; "
           "the row is therefore a mix of the two models.", "",
           "Cell = share of pairs where the leaking side scores higher (tie = half). 0.5 = cannot tell. "
           "With 30 pairs, one pair is 0.033 and a 95% interval around 0.8 is roughly ±0.15. "
           "LLM cells: mean ± standard deviation over repeats [lowest–highest repeat]; the spread is "
           "run-to-run change on the same pairs, not sampling error.", "",
           "| set | pairs | shorter | fewer barriers | graph model (10 seeds) | graph model, branch edges (10 seeds) | LLM single side | LLM forced choice |",
           "|---|---|---|---|---|---|---|---|"]
    for k in sorted(groups):
        g = groups[k]
        cells = [f"{score.pair_metrics(g, score.SCORERS[n])['auc']:.3f}" for n in ("shorter", "fewer fences")]
        for a in ("plain", "cfg"):
            xs = [x for x, n in (_auc(g, t) for t in gine[a]) if n == len(g)]
            cells.append(f"{st.mean(xs):.3f} ({len(xs)})" if xs else "—")
        cells += [_spread(g, reps["single"]), _spread(g, reps["choice"])]
        out.append(f"| {k} | {len(g)} | " + " | ".join(cells) + " |")
    out += ["", "The number in brackets is how many seeds have scores for that set (ARM pairs: fewer until the "
            "remaining cluster jobs are in).", "",
            "## Single side at cutoff 0.5 (score = mean over repeats)", "",
            "| set | leaking sides called leaking | safe sides called safe | both right |", "|---|---|---|---|"]
    for k in sorted(groups):
        g = groups[k]
        l = [single[(p["pair_id"], "leak")] > 0.5 for p in g]
        s = [single[(p["pair_id"], "safe")] <= 0.5 for p in g]
        out.append(f"| {k} | {sum(l)}/{len(g)} | {sum(s)}/{len(g)} | {sum(a and b for a, b in zip(l, s))}/{len(g)} |")
    out += ["", "## Reading it", "",
            "- `linux` and `linux_arm64` are public kernel commits: the model may have seen them. The other "
            "sets are not public.",
            "- Forced choice tells the model that exactly one side leaks; single side does not. Single side is "
            "the like-for-like comparison with the other detectors.",
            "- Hardware labels (`variants`, `counterfactual`, `nofence`) are what one CPU (i5-8300H) did. The "
            "model answers from general knowledge of the patterns.",
            "- Thinking is always on for this model and it accepts no temperature, so repeats are plain "
            "re-asks of the same prompt."]
    (ROOT / "eval" / "pairs" / "LLM.md").write_text("\n".join(out) + "\n")
    print("\n".join(out[8:20]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
