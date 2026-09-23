#!/usr/bin/env python3
"""
compare_generators.py — the supervisor's "same-prompt, run 3x, compare two
models" diagnostic (Phase 2, pre-RL).

The oracle-RL loop (gen/rl_from_oracle.py) reports validated-leak *yield*,
but yield saturates as RL fine-tunes the generator toward whatever the
oracle rewards -- if pretraining quietly hurt generation quality, RL can
mask that by climbing yield anyway. To isolate a pretraining effect
independent of RL, this script gives the BASE generator and the PRETRAINED
generator the exact same prompt (class + arch), samples a few times each
(stochastic, so it repeats across several seeds -- the "run 3x"), and
compares raw generation quality directly: does the original model already
produce more diverse, longer, more-often-realizable output than the
pretrained one, or not?

Metrics per model, aggregated across seeds (mean +/- spread):
  - total samples drawn
  - unique-rate: exact dedup on the raw token sequence
  - mean pairwise Ruzicka (multiset Jaccard) similarity over the unique set
    -- reuses gen/analyze_rl_diversity.py's exact similarity notion, not a
    reinvention
  - mean sequence length
  - (opt-in, --realize) realize-rate: fraction of samples that realize to a
    PDG-parseable ("runnable") gadget -- a cheap validity proxy, no oracle

Writes a side-by-side base-vs-pretrained table plus a one-line verdict to
--out (default gen/generator_ab.md).

The pure aggregation/report-building helpers (aggregate_sequences,
aggregate_across_seeds, decide_ab_verdict, render_ab_table, build_report_md)
import nothing but the stdlib + gen.analyze_rl_diversity's similarity
helpers, so `import gen.compare_generators` and testing them needs no
torch, no checkpoint, no spec. Only run_model() / main() -- the actual
sampling (and, if --realize, the spec-backed realizer/PDG builder) --
import torch/generator/spec lazily, mirroring gen/rl_from_oracle.py's
"heavy imports deferred" pattern.

Run:
    python3 gen/compare_generators.py
    python3 gen/compare_generators.py --realize
"""

from __future__ import annotations

import argparse
import statistics
import sys
from pathlib import Path
from typing import Dict, List, Optional, Sequence

ROOT = Path(__file__).resolve().parent.parent
# Mirrors gen/decode.py's sys.path setup (needed both when this file is run
# as a script and when imported as `gen.compare_generators`, e.g. by tests).
# Pure list mutation -- no import is triggered, so this stays torch-free.
for _p in (ROOT / "v54", ROOT / "spec", ROOT / "gen", ROOT):
    sys.path.insert(0, str(_p))

from gen.analyze_rl_diversity import pairwise_similarity_summary  # noqa: E402

DEFAULT_A = str(ROOT / "gen" / "generator.pt")
DEFAULT_B = str(ROOT / "gen" / "generator_pretrained.pt")

# "clearly differ" threshold for the verdict -- a metric must move by at
# least this much (on a 0..1 scale) to count as a signal rather than noise.
VERDICT_THRESHOLD = 0.10


# ---------------------------------------------------------------------------
# pure aggregation
# ---------------------------------------------------------------------------

def aggregate_sequences(sequences: Sequence[List[str]]) -> Dict:
    """Pure aggregation over one model's (one seed's) sampled token
    sequences: total, exact-dedup unique-rate, mean pairwise Ruzicka
    similarity over the unique set, and mean sequence length.

    mean_sim is None when there is nothing to compare (0 or 1 total
    samples). When every sample collapsed onto exactly one repeated
    sequence (unique == 1, total > 1), similarity is defined as 1.0 --
    duplicates ARE maximally similar, not "undefined" -- rather than falling
    through pairwise_similarity_summary's "need >= 2 items" guard.
    """
    total = len(sequences)
    if total == 0:
        return {"total": 0, "unique": 0, "unique_rate": 0.0,
                "mean_sim": None, "mean_len": 0.0}

    seq_tuples = [tuple(s) for s in sequences]
    unique_tuples = list(dict.fromkeys(seq_tuples))  # dedup, order-preserving
    unique = len(unique_tuples)
    mean_len = statistics.mean(len(s) for s in sequences)

    if unique >= 2:
        mean_sim = pairwise_similarity_summary([list(t) for t in unique_tuples])["mean"]
    elif unique == 1 and total > 1:
        mean_sim = 1.0
    else:
        mean_sim = None  # single total sample, nothing to compare

    return {"total": total, "unique": unique, "unique_rate": unique / total,
            "mean_sim": mean_sim, "mean_len": mean_len}


def aggregate_across_seeds(per_seed_aggs: Sequence[Dict]) -> Dict:
    """Combine per-seed aggregate_sequences() dicts into mean +/- spread
    (population stdev) across seeds -- the "run 3x" half of the diagnostic.
    `total` is summed (total samples drawn across all seeds); the other
    metrics are averaged with a spread. `realize_rate` is folded in the same
    way if any per-seed dict carries it (i.e. --realize was used)."""

    def _mean_spread(key):
        vals = [a[key] for a in per_seed_aggs if a.get(key) is not None]
        if not vals:
            return None, None
        mean = statistics.mean(vals)
        spread = statistics.pstdev(vals) if len(vals) > 1 else 0.0
        return mean, spread

    ur_mean, ur_spread = _mean_spread("unique_rate")
    sim_mean, sim_spread = _mean_spread("mean_sim")
    len_mean, len_spread = _mean_spread("mean_len")

    out = {
        "n_seeds": len(per_seed_aggs),
        "total": sum(a["total"] for a in per_seed_aggs),
        "unique_total": sum(a["unique"] for a in per_seed_aggs),
        "unique_rate_mean": ur_mean, "unique_rate_spread": ur_spread,
        "mean_sim_mean": sim_mean, "mean_sim_spread": sim_spread,
        "mean_len_mean": len_mean, "mean_len_spread": len_spread,
    }
    if any("realize_rate" in a for a in per_seed_aggs):
        rr_mean, rr_spread = _mean_spread("realize_rate")
        out["realize_rate_mean"] = rr_mean
        out["realize_rate_spread"] = rr_spread
    return out


# ---------------------------------------------------------------------------
# verdict
# ---------------------------------------------------------------------------

# (summary key, display name, higher_is_better)
_CORE_METRICS = [
    ("unique_rate_mean", "unique-rate", True),
    ("mean_sim_mean", "mean pairwise similarity", False),
]
_REALIZE_METRIC = ("realize_rate_mean", "realize-rate", True)


def decide_ab_verdict(a_label: str, a_summary: Dict, b_label: str, b_summary: Dict,
                       realize: bool = False, threshold: float = VERDICT_THRESHOLD) -> str:
    """One-line verdict: which model "looks better" on diversity (and, if
    --realize was used, validity), or "indistinguishable" if no metric
    differs by at least `threshold`. This is the whole point of the
    diagnostic -- measured before any RL, so RL's yield-saturation can't
    hide a pretraining effect."""
    metrics = list(_CORE_METRICS)
    if realize:
        metrics.append(_REALIZE_METRIC)

    votes = {a_label: 0, b_label: 0}
    reasons = []
    for key, name, higher_is_better in metrics:
        av, bv = a_summary.get(key), b_summary.get(key)
        if av is None or bv is None:
            continue
        diff = av - bv
        if abs(diff) < threshold:
            continue
        a_is_better = (diff > 0) if higher_is_better else (diff < 0)
        winner = a_label if a_is_better else b_label
        votes[winner] += 1
        reasons.append(f"{name} ({a_label}={av:.3f} vs {b_label}={bv:.3f})")

    if votes[a_label] == votes[b_label]:
        return (f"indistinguishable: {a_label} and {b_label} do not differ clearly "
                f"(threshold {threshold:.2f}) on unique-rate/similarity"
                f"{'/realize-rate' if realize else ''} -- no pretraining effect "
                f"visible in generation quality alone, before any RL.")

    winner = a_label if votes[a_label] > votes[b_label] else b_label
    return (f"{winner} looks better on {'; '.join(reasons)} -- this isolates a "
            f"pretraining effect independent of RL (measured before any RL "
            f"fine-tuning, so RL's yield-saturation can't hide it).")


# ---------------------------------------------------------------------------
# report rendering
# ---------------------------------------------------------------------------

def _fmt_mean_spread(mean: Optional[float], spread: Optional[float]) -> str:
    if mean is None:
        return "n/a"
    return f"{mean:.3f} +/- {spread:.3f}"


def render_ab_table(a_label: str, a_summary: Dict, b_label: str, b_summary: Dict,
                     realize: bool = False) -> List[str]:
    """Markdown table lines (no leading/trailing blank lines) comparing the
    two models' aggregate_across_seeds() summaries side by side."""
    rows = [
        ("total samples", str(a_summary["total"]), str(b_summary["total"])),
        ("unique-rate",
         _fmt_mean_spread(a_summary["unique_rate_mean"], a_summary["unique_rate_spread"]),
         _fmt_mean_spread(b_summary["unique_rate_mean"], b_summary["unique_rate_spread"])),
        ("mean pairwise similarity (Ruzicka)",
         _fmt_mean_spread(a_summary["mean_sim_mean"], a_summary["mean_sim_spread"]),
         _fmt_mean_spread(b_summary["mean_sim_mean"], b_summary["mean_sim_spread"])),
        ("mean sequence length",
         _fmt_mean_spread(a_summary["mean_len_mean"], a_summary["mean_len_spread"]),
         _fmt_mean_spread(b_summary["mean_len_mean"], b_summary["mean_len_spread"])),
    ]
    if realize:
        rows.append((
            "realize-rate",
            _fmt_mean_spread(a_summary.get("realize_rate_mean"), a_summary.get("realize_rate_spread")),
            _fmt_mean_spread(b_summary.get("realize_rate_mean"), b_summary.get("realize_rate_spread")),
        ))

    lines = [f"| metric | {a_label} | {b_label} |", "|---|---|---|"]
    for name, av, bv in rows:
        lines.append(f"| {name} | {av} | {bv} |")
    return lines


def build_report_md(meta: Dict, a_label: str, a_summary: Dict, b_label: str, b_summary: Dict,
                     realize: bool = False) -> str:
    lines = [
        "# Generator A/B: base vs pretrained (before RL)",
        "",
        "Same-prompt, multi-seed diagnostic: isolates whether pretraining "
        "changed generation quality independent of any RL fine-tuning.",
        "",
        f"- class: `{meta.get('class')}`  arch: `{meta.get('arch')}`",
        f"- samples per seed: {meta.get('n')}  seeds: {meta.get('seeds')}",
        f"- temperature: {meta.get('temperature')}  top_k: {meta.get('top_k')}",
        f"- {a_label}: `{meta.get('a_path')}`",
        f"- {b_label}: `{meta.get('b_path')}`",
        "",
        "## Side-by-side (mean +/- spread across seeds)",
        "",
    ]
    lines += render_ab_table(a_label, a_summary, b_label, b_summary, realize=realize)
    lines += [
        "",
        "## Verdict",
        "",
        decide_ab_verdict(a_label, a_summary, b_label, b_summary, realize=realize),
    ]
    return "\n".join(lines) + "\n"


# ---------------------------------------------------------------------------
# realize-rate proxy (optional, off by default)
# ---------------------------------------------------------------------------

def _build_realize_ctx(arch: str):
    """Lazily builds the spec-backed realizer + PDG builder used as the
    cheap validity proxy (mirrors gen/decode.py's --n demo loop: realize,
    build a PDG, and call it "runnable" if it has >= 2 nodes). Heavy
    (non-torch but still spec-loading) imports deferred to here."""
    from isa_spec import load_engine, load_spec  # noqa
    from realize import Realizer  # noqa
    from spec_pdg_builder import SpecBackedPDGBuilder  # noqa

    spec = load_spec(f"{arch}.json")
    realizer = Realizer(spec, seed=0)
    builder = SpecBackedPDGBuilder(load_engine(f"{arch}.json"), speculative_window=20)
    return realizer, builder


def _realize_rate(sequences: Sequence[List[str]], realize_ctx) -> float:
    realizer, builder = realize_ctx
    if not sequences:
        return 0.0
    ok = 0
    for seq in sequences:
        concrete = realizer.realize_sequence(seq)
        pdg = builder.build(concrete)
        if len(pdg.nodes) >= 2:
            ok += 1
    return ok / len(sequences)


# ---------------------------------------------------------------------------
# model driving (torch deferred)
# ---------------------------------------------------------------------------

def run_model(path: str, cls: str, arch: str, n: int, seeds: Sequence[int],
              temperature: float, top_k: int, realize: bool = False) -> Dict:
    """Loads one checkpoint, draws `n` samples per seed (reseeding
    torch/numpy/random each seed so each run is reproducible -- mirrors
    gen/rl_from_oracle.py's --seed seeding), and returns
    aggregate_across_seeds() over the per-seed aggregate_sequences() dicts.
    Torch/generator (and, if `realize`, spec) imports are deferred to here
    so importing this module for the pure helpers above never needs torch.
    """
    import random as _random

    import numpy as _np
    import torch as _torch
    from generator import CondTransformerLM

    model = CondTransformerLM.load(path)
    realize_ctx = _build_realize_ctx(arch) if realize else None

    per_seed = []
    for seed in seeds:
        _random.seed(seed)
        _np.random.seed(seed)
        _torch.manual_seed(seed)
        sequences = [model.sample(cls, arch, temperature=temperature, top_k=top_k)
                     for _ in range(n)]
        agg = aggregate_sequences(sequences)
        if realize_ctx is not None:
            agg["realize_rate"] = _realize_rate(sequences, realize_ctx)
        per_seed.append(agg)

    return aggregate_across_seeds(per_seed)


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main(argv=None) -> int:
    ap = argparse.ArgumentParser(
        description="Same-prompt, run-3x diagnostic: compare the BASE generator vs "
                    "the PRETRAINED generator on raw generation quality, BEFORE any "
                    "RL, so RL's yield-saturation can't hide a pretraining effect.")
    ap.add_argument("--a", default=DEFAULT_A, help="checkpoint A (default: base)")
    ap.add_argument("--b", default=DEFAULT_B, help="checkpoint B (default: pretrained)")
    ap.add_argument("--a-label", default="base")
    ap.add_argument("--b-label", default="pretrained")
    ap.add_argument("--class", dest="cls", default="SPECTRE_V1")
    ap.add_argument("--arch", default="x86_64", choices=["x86_64", "arm64"])
    ap.add_argument("--n", type=int, default=40, help="samples drawn per seed")
    ap.add_argument("--seeds", type=int, nargs="+", default=[1, 2, 3],
                     help="the 'run 3x' the supervisor asked for")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--top-k", type=int, default=20)
    ap.add_argument("--realize", action="store_true", default=False,
                     help="also realize each sample and report the fraction that "
                          "realize to a PDG-parseable ('runnable') gadget -- a cheap "
                          "validity proxy, no oracle. Off by default: pure "
                          "generation-quality metrics only, no spec/PDG deps needed.")
    ap.add_argument("--out", default=str(ROOT / "gen" / "generator_ab.md"))
    args = ap.parse_args(argv)

    print(f"[compare] class={args.cls} arch={args.arch} n={args.n} seeds={args.seeds} "
          f"realize={args.realize}")

    a_summary = run_model(args.a, args.cls, args.arch, args.n, args.seeds,
                           args.temperature, args.top_k, realize=args.realize)
    print(f"[compare] {args.a_label} ({args.a}): {a_summary}")

    b_summary = run_model(args.b, args.cls, args.arch, args.n, args.seeds,
                           args.temperature, args.top_k, realize=args.realize)
    print(f"[compare] {args.b_label} ({args.b}): {b_summary}")

    meta = {"class": args.cls, "arch": args.arch, "n": args.n, "seeds": args.seeds,
            "temperature": args.temperature, "top_k": args.top_k,
            "a_path": args.a, "b_path": args.b}
    report = build_report_md(meta, args.a_label, a_summary, args.b_label, b_summary,
                              realize=args.realize)

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(report)

    verdict = decide_ab_verdict(args.a_label, a_summary, args.b_label, b_summary,
                                realize=args.realize)
    print(verdict)
    print(f"wrote {args.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
