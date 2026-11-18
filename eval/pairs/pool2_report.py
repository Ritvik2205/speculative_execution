"""Second hardware pool: the rules on the pairs built from the i5 step 4a labels, beside the
first pool. Writes eval/pairs/POOL2.md.

Only rules are scored. The programs of this pool are in the training data of the graph model
and of the opcode models, so a trained scorer's number here would not be a held-out number;
`seen_in_training` reports how many. A language model that was never trained on them can be
scored on this pool with the same files.

    python3 -m eval.pairs.build hw2 && python3 -m eval.pairs.pool2_report
"""
import json
import random
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

from eval.pairs import score

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "eval" / "pairs" / "data"
_ID = re.compile(r"violation-\d{6}-\d{6}")
RULES = ("fewer fences", "no interior fence", "mechanism rule")


def seen_in_training(pairs: list[dict], train: list[dict]) -> tuple[int, int]:
    """(programs of these pairs that the training file names, programs)."""
    named = {m.group(0) for r in train for m in [_ID.search(r.get("group") or "")] if m}
    progs = {_ID.search(p["base"]).group(0) for p in pairs}
    return len(progs & named), len(progs)


def _outcomes(pairs: list[dict], rule: str) -> dict:
    by = defaultdict(list)
    for p in pairs:
        f = score._mechanism(p["cls"]) if rule == "mechanism rule" else score.SCORERS[rule]
        a, b = f(p["leak"]), f(p["safe"])
        by[p["base"]].append(1.0 if a > b else 0.5 if a == b else 0.0)
    return by


def _interval(by: dict, draws=2000, seed=0):
    """95% interval, resampling programs: pairs of one program are not independent."""
    progs, rng, xs = sorted(by), random.Random(seed), []
    for _ in range(draws):
        o = [v for b in rng.choices(progs, k=len(progs)) for v in by[b]]
        xs.append(sum(o) / len(o))
    xs.sort()
    return xs[int(0.025 * draws)], xs[int(0.975 * draws) - 1]


def rule_cells(pairs: list[dict]) -> dict:
    out = {}
    for rule in RULES:
        by = _outcomes(pairs, rule)
        flat = [v for vs in by.values() for v in vs]
        out[rule] = {"auc": sum(flat) / len(flat), "n": len(flat), "programs": len(by),
                     "interval": _interval(by)}
    return out


def _load(p):
    return [json.loads(l) for l in open(p) if l.strip()]


def main() -> int:
    first, second = _load(DATA / "pairs_hw.jsonl"), _load(DATA / "pool2" / "pairs_hw_pool2.jsonl")
    seen, progs = seen_in_training(second, _load(ROOT / "v57" / "data" / "v57_leak_train.jsonl"))
    seen1, progs1 = seen_in_training(first, _load(ROOT / "v57" / "data" / "v57_leak_train.jsonl"))
    shared = {p["base"] for p in first} & {p["base"] for p in second}
    cell = lambda c: f"{c['auc']:.3f} [{c['interval'][0]:.3f}, {c['interval'][1]:.3f}]"
    md = ["# Second hardware pool", "",
          f"First pool: {len(first)} pairs from {progs1} programs. Second pool: {len(second)} pairs "
          f"from {progs} programs (labels of i5 step 4a, commit `1430d42b` on the `cluster` branch). "
          f"Programs in both pools: {len(shared)}.", "",
          f"{seen} of the {progs} second-pool programs are named in the leak/safe training file "
          f"(`v57_leak_train.jsonl`); for the first pool the count is {seen1} of {progs1}. The graph "
          "model and the opcode models are therefore not scored on the second pool.", "",
          "Cell: share of pairs where the leaking side scores higher, a tie counting half, with a "
          "95% interval from resampling programs.", "",
          "| set | pool | pairs | programs | " + " | ".join(RULES) + " |", "|---|---|---|---|" + "---|" * len(RULES)]
    groups = []
    for name in ("variants", "counterfactual", "nofence"):
        groups.append((name, "all", "first", [p for p in first if p["set"] == name]))
        groups.append((name, "all", "second", [p for p in second if p["set"] == name + "_pool2"]))
    for cls in sorted({p["cls"] for p in first + second}):
        groups.append(("counterfactual", cls, "first", [p for p in first if p["set"] == "counterfactual" and p["cls"] == cls]))
        groups.append(("counterfactual", cls, "second", [p for p in second if p["set"] == "counterfactual_pool2" and p["cls"] == cls]))
    for name, sub, pool, ps in groups:
        if not ps:
            continue
        c = rule_cells(ps)
        md.append(f"| {name}{'' if sub == 'all' else ', ' + sub} | {pool} | {len(ps)} | "
                  f"{c[RULES[0]]['programs']} | " + " | ".join(cell(c[r]) for r in RULES) + " |")
    md += ["", "## Kinds of pair in the counterfactual sets", "", "| kind (leaking side \\| safe side) | first | second |", "|---|---|---|"]
    k1 = Counter((p["cls"], p["kind"]) for p in first if p["set"] == "counterfactual")
    k2 = Counter((p["cls"], p["kind"]) for p in second if p["set"] == "counterfactual_pool2")
    for k in sorted(set(k1) | set(k2)):
        md.append(f"| {k[0]}: {k[1].replace('|', ' \\| ')} | {k1[k]} | {k2[k]} |")
    (ROOT / "eval" / "pairs" / "POOL2.md").write_text("\n".join(md) + "\n")
    print("\n".join(md))
    return 0


if __name__ == "__main__":
    sys.exit(main())
