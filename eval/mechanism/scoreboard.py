"""scoreboard.py — score every scorer on hardware-labelled variant sets.

Scorers: the non-learned bars (eval/mechanism/bars.py: fence-count, adjacent,
interior), the mechanism rule (eval/mechanism/spec_window.py), and any number of
dumped model predictions (`eval/score_hwlabel_variants.py --dump-preds`).
Data sets: the pinned dev-806 (eval/data/revizor_hwlabel_variants.jsonl) and the
hardware-labelled counterfactuals (eval/data/revizor_hwlabel_cf_heldout.jsonl).

Uncertainty: variants of one base gadget share body and sandboxing, so they are
not independent. Every CI resamples BASES (eval/group_stats.cluster_bootstrap_ci),
and scorer comparisons are paired (same records, per-record correctness diff).

    python3 -m eval.mechanism.scoreboard --data <jsonl>... \
        [--preds NAME=PATH ...] [--out eval/mechanism/scoreboard.md]

A preds file holds {"data": <data-file stem>, "group", "variant", "pred"} lines;
the same NAME may be given several times (merged). Plan:
docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md (H0/H1/H2).
"""
from __future__ import annotations

import argparse
import json
import re
import statistics
import sys
from collections import defaultdict
from pathlib import Path
from typing import Optional

ROOT = Path(__file__).resolve().parents[2]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from eval.group_stats import cluster_bootstrap_ci  # noqa: E402
from eval.mechanism.bars import BARS, fence_count, fence_count_pred  # noqa: E402
from eval.mechanism.spec_window import mechanism_pred  # noqa: E402

_BASE_RE = re.compile(r"violation-\d{6}-\d{6}")
UNCONFIRMED = {"MDS"}   # hardware replay 0/6 (paper sec:replay): never headline
REFERENCES = ("interior", "always-attack")   # H1 must beat both (review C1)


def base_id(rec: dict) -> str:
    m = _BASE_RE.search(rec.get("src_path") or rec.get("group") or "")
    tag = m.group(0) if m else (rec.get("group") or "?")
    return f"{rec['vuln_class']}::{tag}"


def _leak(p: Optional[str]) -> Optional[bool]:
    return None if p is None else p != "BENIGN"


def score(recs: list[dict], preds: list[Optional[str]]) -> dict:
    """acc = exact label match (an abstain, None, is wrong); vuln_recall /
    mitig_spec = leak-vs-benign call on the vulnerable / mitigated arm (abstain
    wrong); flip = share of bases with both arms whose mean leak call is higher
    on the vulnerable arm (abstains left out of the means)."""
    assert len(recs) == len(preds)
    ok = [p == r["label"] for r, p in zip(recs, preds)]
    vuln = [(_leak(p) is True) for r, p in zip(recs, preds) if r["label"] != "BENIGN"]
    mitig = [(_leak(p) is False) for r, p in zip(recs, preds) if r["label"] == "BENIGN"]
    byvar: dict[str, list[bool]] = defaultdict(list)
    for r, k in zip(recs, ok):
        byvar[r["variant"]].append(k)
    bybase: dict[str, list[tuple[bool, Optional[bool]]]] = defaultdict(list)
    for r, p in zip(recs, preds):
        bybase[base_id(r)].append((r["label"] != "BENIGN", _leak(p)))
    both = sep = 0
    for g in bybase.values():
        v = [m for hw, m in g if hw and m is not None]
        b = [m for hw, m in g if not hw and m is not None]
        if not (v and b):
            continue
        both += 1
        sep += statistics.mean(v) > statistics.mean(b)
    mean = lambda xs: sum(xs) / len(xs) if xs else float("nan")
    return dict(acc=mean(ok), vuln_recall=mean(vuln), mitig_spec=mean(mitig),
                abstain=sum(p is None for p in preds),
                per_variant={k: mean(v) for k, v in sorted(byvar.items())},
                flip=sep / both if both else float("nan"))


def paired_bootstrap(recs, preds_a, preds_b, n: int = 2000, seed: int = 0) -> tuple[float, float, float]:
    """acc(a) - acc(b) with a base-clustered 95% percentile CI. One base -> CI nan."""
    d = [float(a == r["label"]) - float(b == r["label"]) for r, a, b in zip(recs, preds_a, preds_b)]
    return cluster_bootstrap_ci(d, [base_id(r) for r in recs], n_boot=n, seed=seed)


def rule_preds(recs: list[dict]) -> dict[str, list[Optional[str]]]:
    by_cls: dict[str, list[int]] = defaultdict(list)
    for r in recs:
        by_cls[r["vuln_class"]].append(fence_count(r["sequence"]))
    med = {c: statistics.median(v) for c, v in by_cls.items()}
    out = {"always-attack": [r["vuln_class"] for r in recs],
           "always-benign": ["BENIGN" for _ in recs],
           "fence-count": [fence_count_pred(r, med[r["vuln_class"]]) for r in recs]}
    out.update({k: [f(r) for r in recs] for k, f in BARS.items()})
    out["mechanism"] = [mechanism_pred(r, mode="all") for r in recs]
    out["mechanism-any"] = [mechanism_pred(r, mode="any") for r in recs]
    return out


def load_preds(specs: list[str], stem: str, recs: list[dict]) -> dict[str, list[Optional[str]]]:
    rows: dict[str, dict[tuple[str, str], str]] = defaultdict(dict)
    for spec in specs:
        name, _, path = spec.partition("=")
        for line in open(path):
            if line.strip():
                x = json.loads(line)
                if x.get("data", stem) == stem:
                    rows[name][(x["group"], x["variant"])] = x["pred"]
    out = {}
    for name, m in rows.items():
        missing = sum((r["group"], r["variant"]) not in m for r in recs)
        if missing:
            print(f"warning: {name} has no prediction for {missing}/{len(recs)} records of {stem}"
                  " (counted as abstain)", file=sys.stderr)
        out[name] = [m.get((r["group"], r["variant"])) for r in recs]
    return out


def _f(x: float) -> str:
    return "n/a" if x != x else f"{x:.3f}"


def _table(recs, scorers) -> tuple[list[str], dict]:
    L = ["| scorer | all | vuln | mitig | flip | abstain |", "|---|---|---|---|---|---|"]
    S = {k: score(recs, p) for k, p in scorers.items()}
    for k, s in S.items():
        L.append(f"| {k} | {_f(s['acc'])} | {_f(s['vuln_recall'])} | {_f(s['mitig_spec'])} "
                 f"| {_f(s['flip'])} | {s['abstain']} |")
    return L, S


_SEED_RE = re.compile(r"^(.*)_s\d+$")


def _arm_means(S: dict) -> list[str]:
    """Scorers named <arm>_s<seed> (one per checkpoint) -> mean ± sample std of
    headline acc per arm, the number H2 is read on (plan: 5 seeds)."""
    arms: dict[str, list[float]] = defaultdict(list)
    for k, s in S.items():
        m = _SEED_RE.match(k)
        if m:
            arms[m.group(1)].append(s["acc"])
    if not arms:
        return []
    L = ["", "| arm | acc mean ± std |", "|---|---|"]
    for arm, xs in arms.items():
        sd = statistics.stdev(xs) if len(xs) > 1 else float("nan")
        L.append(f"| {arm} ({len(xs)} seeds) | {sum(xs) / len(xs):.3f} ± {_f(sd)} |")
    return L


def render(stem: str, recs: list[dict], scorers: dict[str, list[Optional[str]]]) -> list[str]:
    # Headline (table, paired diffs, per variant) over hardware-confirmed
    # classes only; MDS gets its own table (review I1).
    keep = [i for i, r in enumerate(recs) if r["vuln_class"] not in UNCONFIRMED]
    all_recs, all_scorers = recs, scorers
    recs = [all_recs[i] for i in keep]
    scorers = {k: [p[i] for i in keep] for k, p in all_scorers.items()}
    excl = sorted({r["vuln_class"] for r in all_recs} & UNCONFIRMED)
    L = [f"## {stem} (n={len(recs)}, bases={len({base_id(r) for r in recs})}"
         + (f"; headline excludes {', '.join(excl)})" if excl else ")"), ""]
    T, S = _table(recs, scorers)
    L += T
    L += _arm_means(S)
    for ref in REFERENCES:
        if ref not in scorers:
            continue
        L += ["", f"### Paired difference vs {ref} (acc, base-clustered 95% CI)", "",
              "| scorer | diff | lo | hi |", "|---|---|---|---|"]
        for k, p in scorers.items():
            if k != ref:
                d, lo, hi = paired_bootstrap(recs, p, scorers[ref])
                L.append(f"| {k} | {d:+.3f} | {_f(lo)} | {_f(hi)} |")
    for c in excl:
        idx = [i for i, r in enumerate(all_recs) if r["vuln_class"] == c]
        L += ["", f"### {c} (unconfirmed hardware replay; not in the headline, n={len(idx)})", ""]
        L += _table([all_recs[i] for i in idx], {k: [p[i] for i in idx] for k, p in all_scorers.items()})[0]
    recs, scorers = all_recs, all_scorers
    L += ["", "### Per class (acc)", ""]
    classes = sorted({r["vuln_class"] for r in recs})
    L += ["| scorer | " + " | ".join(c + (" †" if c in UNCONFIRMED else "") for c in classes) + " |",
          "|---|" + "---|" * len(classes)]
    for k, p in scorers.items():
        cells = []
        for c in classes:
            idx = [i for i, r in enumerate(recs) if r["vuln_class"] == c]
            cells.append(_f(score([recs[i] for i in idx], [p[i] for i in idx])["acc"]))
        L.append(f"| {k} | " + " | ".join(cells) + " |")
    if UNCONFIRMED & set(classes):
        L.append("\n† hardware replay unconfirmed (paper sec:replay) — report separately, not in the headline.")
    variants = sorted({r["variant"] for r in recs})
    L += ["", "### Per variant (acc)", "", "| scorer | " + " | ".join(variants) + " |",
          "|---|" + "---|" * len(variants)]
    for k, s in S.items():   # S = headline (confirmed classes)
        L.append(f"| {k} | " + " | ".join(_f(s["per_variant"].get(v, float("nan"))) for v in variants) + " |")
    return L + [""]


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("--data", nargs="+", required=True)
    ap.add_argument("--preds", action="append", default=[], metavar="NAME=PATH")
    ap.add_argument("--out", default=str(ROOT / "eval/mechanism/scoreboard.md"))
    a = ap.parse_args(argv)
    L = ["# Mechanism-vs-shape scoreboard", "",
         "Bars and the mechanism rule use no learning. acc = exact hardware-label match;"
         " abstain counts wrong.", ""]
    for d in a.data:
        recs = [json.loads(l) for l in open(d) if l.strip()]
        stem = Path(d).stem
        scorers = rule_preds(recs)
        scorers.update(load_preds(a.preds, stem, recs))
        L += render(stem, recs, scorers)
    Path(a.out).write_text("\n".join(L))
    print("wrote", a.out)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
