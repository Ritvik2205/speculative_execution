#!/usr/bin/env python3
"""Open-weight model without training, on the non-public pairs. Writes eval/pairs/LLM_OPEN.md.

    python3 -m eval.pairs.llm_local_report

Reads the shard ledgers merged by `score_llm_local --collect` (`data/llm_{single,choice}_<TAG>.ledger.jsonl`).
"""
from __future__ import annotations

import json
import random
import statistics as st
import sys
from collections import Counter, defaultdict
from pathlib import Path

from eval.pairs import score, score_llm, score_llm_local as local
from eval.pairs.llm_report import _auc

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "eval" / "pairs" / "data"
TAG = "glmz1_30k"
CAP = 30000
HARDWARE = ("counterfactual", "nofence", "variants")


def program_interval(pairs, table, draws=2000, seed=0):
    """95% interval of the pair statistic, resampling programs (`base`), not pairs: pairs built from
    one program are not independent. Returns (low, high), or None with fewer than two programs."""
    by = defaultdict(list)
    for p in pairs:
        if (p["pair_id"], "leak") in table and (p["pair_id"], "safe") in table:
            l, s = table[(p["pair_id"], "leak")], table[(p["pair_id"], "safe")]
            by[p["base"]].append(1.0 if l > s else 0.5 if l == s else 0.0)
    progs = sorted(by)
    if len(progs) < 2:
        return None
    rng = random.Random(seed)
    xs = []
    for _ in range(draws):
        o = [v for b in rng.choices(progs, k=len(progs)) for v in by[b]]
        xs.append(sum(o) / len(o))
    xs.sort()
    return xs[int(0.025 * draws)], xs[int(0.975 * draws) - 1]


def _table(path):
    return {(r["pair_id"], r["side"]): r["score"] for r in map(json.loads, open(path)) if r["score"] is not None}


def _cell(g, t):
    a, n = _auc(g, t)
    ci = program_interval(g, t)
    return f"{a:.3f}" + (f" [{ci[0]:.2f}–{ci[1]:.2f}]" if ci else "") + (f" ({n})" if n != len(g) else "")


def main() -> int:
    man = json.loads(local.MANIFEST.read_text())
    name = f"{man['repo']}@{man['revision'][:12]}"
    effort = local.effort_for("vllm", CAP)
    pairs = local.load_pairs(0, exclude_public=True)
    groups = defaultdict(list)
    for p in pairs:
        groups[p["set"] + (" " + p["kind"] if p["set"] == "injected" else "")].append(p)
    single, choice = _table(DATA / f"llm_single_{TAG}.jsonl"), _table(DATA / f"llm_choice_{TAG}.jsonl")
    led = {pr: score_llm.Ledger(DATA / f"llm_{pr}_{TAG}.ledger.jsonl", 0) for pr in ("single", "choice")}
    reps = []
    for r in range(3):
        def complete(system, prompt, r=r):
            row = led["single"].get(score_llm.job_key(name, effort, system, prompt, r))
            return row["text"] if row else None
        rows, _ = score_llm.run_single(pairs, complete)
        reps.append({(x["pair_id"], x["side"]): x["score"] for x in rows})
    rows = {pr: list(led[pr].rows.values()) for pr in led}
    capped = {pr: sum(r.get("finish_reason") == "length" for r in rows[pr]) for pr in rows}
    unparsed = {"single": sum(score_llm.parse_probability(r["text"]) is None for r in rows["single"]),
                "choice": sum(score_llm.parse_choice(r["text"]) is None for r in rows["choice"])}
    picks = Counter(score_llm.parse_choice(r["text"]) for r in rows["choice"])
    opus = _table(DATA / "llm_single_opus55.jsonl")
    opus_c = _table(DATA / "llm_choice_opus55.jsonl")

    out = ["# Open-weight model without training, on the non-public pairs", "",
           f"Model: `{name}` (9.4 B parameters, weights checked against the publisher's sha256), vLLM, the "
           f"model card's sampling settings, answer cap {CAP:,} tokens. Same system text, prompts and parser "
           "as the closed-model pilot (`LLM.md`). No training on our data.", "",
           f"Pairs: {len(pairs)} (all sets except the two Linux sets, which are public). Single side: "
           f"{len(rows['single'])} answers (3 repeats, score = mean over repeats), {capped['single']} cut off "
           f"at the cap, {unparsed['single']} with no readable probability. Forced choice: "
           f"{len(rows['choice'])} answers (1 repeat, both orders), {capped['choice']} cut off, "
           f"{unparsed['choice']} with no readable answer; picked A {picks['A']}, B {picks['B']}.", "",
           "Cell = share of pairs where the leaking side scores higher (tie = half); 0.5 = cannot tell. "
           "Square brackets: 95% interval from resampling programs (hosts for the injected sets), not "
           "pairs. Round brackets: pairs scored, when fewer than all.", "",
           "| set | pairs | programs | single side | single side, each repeat | forced choice |",
           "|---|---|---|---|---|---|"]
    for k in sorted(groups):
        g = groups[k]
        each = ", ".join(f"{_auc(g, t)[0]:.3f}" for t in reps)
        out.append(f"| {k} | {len(g)} | {len({p['base'] for p in g})} | {_cell(g, single)} | {each} | {_cell(g, choice)} |")
    out += ["", "## Single side at cutoff 0.5", "",
            "| set | leaking sides called leaking | safe sides called safe | both right | mean score, leaking / safe | equal scores |",
            "|---|---|---|---|---|---|"]
    for k in sorted(groups):
        g = [p for p in groups[k] if (p["pair_id"], "leak") in single and (p["pair_id"], "safe") in single]
        l = [single[(p["pair_id"], "leak")] for p in g]
        s = [single[(p["pair_id"], "safe")] for p in g]
        out.append(f"| {k} | {sum(x > 0.5 for x in l)}/{len(g)} | {sum(x <= 0.5 for x in s)}/{len(g)} | "
                   f"{sum(a > 0.5 and b <= 0.5 for a, b in zip(l, s))}/{len(g)} | {st.mean(l):.2f} / {st.mean(s):.2f} | "
                   f"{sum(a == b for a, b in zip(l, s))} |")
    out += ["", "## Beside the closed model, on the closed model's own pairs", "",
            "The closed-model pilot scored 30 pairs per set. Both columns of a row use those same pairs. "
            "With 30 pairs a 95% interval is roughly ±0.15.", "",
            "| set | pairs | open, single side | closed, single side | open, forced choice | closed, forced choice |",
            "|---|---|---|---|---|---|"]
    for k in sorted(groups):
        g = [p for p in groups[k] if (p["pair_id"], "leak") in opus]
        if g:
            out.append(f"| {k} | {len(g)} | " + " | ".join(
                f"{_auc(g, t)[0]:.3f}" for t in (single, opus, choice, opus_c)) + " |")
    out += ["", "## Reading it", "",
            "- Single side: no hardware set is ranked. Every interval on `counterfactual`, `nofence` and "
            "`variants` contains 0.5, and the model calls nearly every sequence leaking (mean score about 0.8 "
            "on both sides).",
            "- Forced choice tells the model that exactly one side leaks. It then ranks `injected inject` "
            "and `injected fence` (the leaking side is longer, or lacks the fence) and `variants`, and is "
            "below 0.5 on `counterfactual`: it picks the mitigated side more often than the leaking one.",
            "- `nofence` and `injected reorder` are at 0.5 under both protocols.",
            "- The answer cap changed forced choice, not single side: at the first cap of 4,096 tokens "
            "1,946 of 4,240 forced-choice answers were cut off (ticket 02, 2026-11-14).",
            "- The closed model's row is a 30-pair pilot and partly a mix of two models (`LLM.md`); the "
            "comparison above is indicative only."]
    (ROOT / "eval" / "pairs" / "LLM_OPEN.md").write_text("\n".join(out) + "\n")
    print("\n".join(out[8:]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
