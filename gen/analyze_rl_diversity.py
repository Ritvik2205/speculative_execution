#!/usr/bin/env python3
"""analyze_rl_diversity.py — diversity audit for the oracle-RL loop
(gen/rl_from_oracle.py).

The loop's headline metric is validated-leak *yield* (fraction of realized
samples the oracle confirms LEAK). Yield alone cannot distinguish genuine
discovery (the generator learning new, distinct leaking shapes) from mode
collapse (the generator converging on one leaking shape and emitting copies
of it forever) — a yield of 1.000 built from 40 copies of the same gadget is
worthless as evidence of discovery.

This reads the per-sample JSONL sidecar `gen/rl_from_oracle.py --samples-out`
writes (one line per realized+validated sample: class, round, index,
gadget_id, token_sequence, realized_asm, verdict, reward) and reports, both
overall and per round:

  - total / unique (exact token-sequence dedup) samples, unique-rate
  - unique *leaking* samples (verdict == LEAK) and their rate — the number
    that actually matters for a discovery claim
  - the most frequent sequence and its multiplicity (top-5 table)
  - a cheap pairwise Ruzicka (multiset Jaccard) similarity summary over the
    unique leaking sequences, so near-duplicates (not just byte-identical
    copies) are visible
  - a per-round trend: does the unique-leak count grow/hold (discovery) or
    fall while yield rises (mode collapse)?

Writes `gen/rl_diversity.md` with an explicit verdict line: "discovery" or
"mode collapse". Pure stdlib — no torch, no Docker, no Spectector; it only
ever reads the JSONL a prior run already produced.
"""
from __future__ import annotations

import argparse
import json
import statistics
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Optional

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK  # noqa: E402 -- "leak" verdict string

# Cap on how many sequences enter the pairwise-similarity comparison: this is
# a cheap diversity *audit*, not exhaustive analysis, and pairwise cost is
# O(n^2). 200 sequences -> ~20k comparisons, still instant; a real run's
# per-class leaking set is expected to be well under that.
MAX_PAIRWISE = 200


# ---------------------------------------------------------------------------
# I/O
# ---------------------------------------------------------------------------

def load_samples(path) -> list:
    """Read gen/rl_from_oracle.py's --samples-out JSONL into a list of
    dicts. Blank lines are skipped (tolerates a trailing newline)."""
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            records.append(json.loads(line))
    return records


# ---------------------------------------------------------------------------
# similarity
# ---------------------------------------------------------------------------

def ruzicka_similarity(a: list, b: list) -> float:
    """Multiset (Ruzicka / weighted Jaccard) similarity between two token
    sequences treated as multisets: sum(min(count_a, count_b)) over
    sum(max(count_a, count_b)) across the union of tokens. 1.0 for identical
    multisets, 0.0 for disjoint ones. Cheaper than edit distance and, unlike
    a set-based Jaccard, sensitive to *how many times* a token repeats (an
    opcode-frequency signature), which is what distinguishes a genuine
    near-duplicate from two gadgets that merely share some opcodes."""
    ca, cb = Counter(a), Counter(b)
    keys = set(ca) | set(cb)
    if not keys:
        return 1.0
    inter = sum(min(ca[k], cb[k]) for k in keys)
    union = sum(max(ca[k], cb[k]) for k in keys)
    return inter / union if union else 1.0


def pairwise_similarity_summary(sequences: list) -> dict:
    """Mean/median Ruzicka similarity over all pairs drawn from the first
    MAX_PAIRWISE `sequences` (each a list of tokens). None mean/median if
    fewer than 2 sequences are available."""
    seqs = sequences[:MAX_PAIRWISE]
    n = len(seqs)
    if n < 2:
        return {"n_compared": n, "n_pairs": 0, "mean": None, "median": None,
                "truncated": len(sequences) > MAX_PAIRWISE}
    sims = [ruzicka_similarity(seqs[i], seqs[j])
            for i in range(n) for j in range(i + 1, n)]
    return {
        "n_compared": n,
        "n_pairs": len(sims),
        "mean": statistics.mean(sims),
        "median": statistics.median(sims),
        "truncated": len(sequences) > MAX_PAIRWISE,
    }


# ---------------------------------------------------------------------------
# core analysis
# ---------------------------------------------------------------------------

def _seq_key(record: dict) -> tuple:
    """Hashable exact-dedup key: the token sequence as a tuple."""
    return tuple(record.get("token_sequence") or [])


def _bucket_stats(recs: list) -> dict:
    total = len(recs)
    seq_counts = Counter(_seq_key(r) for r in recs)
    unique = len(seq_counts)
    leak_recs = [r for r in recs if r.get("verdict") == LEAK]
    unique_leak = len({_seq_key(r) for r in leak_recs})
    return {
        "total": total,
        "unique": unique,
        "unique_rate": (unique / total) if total else 0.0,
        "leak_total": len(leak_recs),
        "unique_leak": unique_leak,
        "unique_leak_rate": (unique_leak / total) if total else 0.0,
        "yield": (len(leak_recs) / total) if total else 0.0,
    }


def analyze(records: list) -> dict:
    """Compute the full diversity report from a flat list of sample records
    (as loaded by `load_samples`). Returns a dict with `overall` stats,
    per-`rounds` stats, a `top5` most-frequent-sequence table, global
    (cross-round) unique-leak counts, and a pairwise similarity summary over
    the unique leaking sequences."""
    overall = _bucket_stats(records)

    by_round: dict = defaultdict(list)
    for r in records:
        by_round[r.get("round")].append(r)
    rounds = {rnd: _bucket_stats(recs)
              for rnd, recs in sorted(by_round.items(), key=lambda kv: (kv[0] is None, kv[0]))}

    seq_counts = Counter(_seq_key(r) for r in records)
    top5 = seq_counts.most_common(5)

    leak_records = [r for r in records if r.get("verdict") == LEAK]
    unique_leak_seqs = list({_seq_key(r) for r in leak_records})
    pairwise = pairwise_similarity_summary([list(k) for k in unique_leak_seqs])

    return {
        "overall": overall,
        "rounds": rounds,
        "top5": top5,
        "unique_leak_seq_count_global": len(unique_leak_seqs),
        "leak_total_global": len(leak_records),
        "pairwise": pairwise,
    }


# ---------------------------------------------------------------------------
# verdict
# ---------------------------------------------------------------------------

def decide_verdict(report: dict) -> tuple:
    """Return (verdict, reasons) where verdict is "discovery" or "mode
    collapse".

    Two independent collapse signals, either one is sufficient:

    1. Low global diversity: the leaking set (pooled across all rounds)
       reduces to very few distinct sequences relative to its size — the
       "yield of 1.0 from 40 copies of one gadget" case from a single round,
       or a multi-round run that never diversifies.
    2. Trend collapse: the classic shape from the task brief — yield rises
       from the first analyzed round to the last while the unique-leak count
       *falls* over the same span. ("Grows or holds" -> discovery is the
       complement of this.)

    Neither signal fires -> discovery.
    """
    reasons = []

    leak_total = report["leak_total_global"]
    unique_leak_total = report["unique_leak_seq_count_global"]
    low_diversity = False
    if leak_total > 1 and unique_leak_total <= 1:
        low_diversity = True
        reasons.append(
            f"all {leak_total} leaking samples reduce to {unique_leak_total} "
            f"unique sequence(s) across the whole run")
    elif leak_total >= 5:
        rate = unique_leak_total / leak_total
        if rate < 0.25:
            low_diversity = True
            reasons.append(
                f"unique-leak rate over the whole run is only {rate:.2f} "
                f"({unique_leak_total}/{leak_total})")

    trend_collapse = False
    round_keys = sorted(report["rounds"].keys())
    if len(round_keys) >= 2:
        first, last = round_keys[0], round_keys[-1]
        yf, yl = report["rounds"][first]["yield"], report["rounds"][last]["yield"]
        ulf, ull = report["rounds"][first]["unique_leak"], report["rounds"][last]["unique_leak"]
        if yl > yf and ull < ulf:
            trend_collapse = True
            reasons.append(
                f"yield rose {yf:.3f} -> {yl:.3f} from round {first} to round {last} "
                f"while unique-leak count fell {ulf} -> {ull}")

    if low_diversity or trend_collapse:
        return "mode collapse", reasons
    return "discovery", (reasons or ["unique-leak count holds or grows across rounds "
                                      "and the leaking set is not dominated by a handful "
                                      "of duplicate sequences"])


# ---------------------------------------------------------------------------
# report writer
# ---------------------------------------------------------------------------

def write_report(report: dict, verdict: str, reasons: list, out_path, meta: Optional[dict] = None) -> None:
    meta = meta or {}
    ov = report["overall"]
    lines = [
        "# Oracle-RL diversity audit",
        "",
        f"- samples: `{meta.get('samples', '?')}`",
        "",
        f"## Verdict: {verdict}",
        "",
    ]
    lines += [f"- {r}" for r in reasons]
    lines += [
        "",
        "## Overall",
        "",
        "| metric | value |",
        "|---|---|",
        f"| total samples | {ov['total']} |",
        f"| unique samples | {ov['unique']} |",
        f"| unique-rate | {ov['unique_rate']:.3f} |",
        f"| leaking samples | {ov['leak_total']} |",
        f"| yield (leak/total) | {ov['yield']:.3f} |",
        f"| unique leaking samples (global, cross-round dedup) | {report['unique_leak_seq_count_global']} |",
        f"| unique-leak rate (unique leaks / total samples) | {ov['unique_leak_rate']:.3f} |",
        "",
        "## Per-round trend",
        "",
        "| round | total | unique | leak | unique-leak | yield | unique-leak-rate |",
        "|---|---|---|---|---|---|---|",
    ]
    for rnd in sorted(report["rounds"]):
        rs = report["rounds"][rnd]
        lines.append(f"| {rnd} | {rs['total']} | {rs['unique']} | {rs['leak_total']} | "
                     f"{rs['unique_leak']} | {rs['yield']:.3f} | {rs['unique_leak_rate']:.3f} |")

    lines += ["", "## Top-5 most frequent sequences", "",
              "| rank | multiplicity | sequence |", "|---|---|---|"]
    for i, (seq, count) in enumerate(report["top5"], start=1):
        seq_str = " ".join(seq) if seq else "(empty)"
        if len(seq_str) > 120:
            seq_str = seq_str[:117] + "..."
        lines.append(f"| {i} | {count} | `{seq_str}` |")

    pw = report["pairwise"]
    lines += ["", "## Pairwise similarity over unique leaking sequences (Ruzicka / multiset Jaccard)", ""]
    if pw["n_pairs"] == 0:
        lines.append(f"- not enough unique leaking sequences to compare (n={pw['n_compared']})")
    else:
        lines.append(f"- compared {pw['n_compared']} sequences ({pw['n_pairs']} pairs"
                      f"{', truncated to ' + str(MAX_PAIRWISE) if pw['truncated'] else ''})")
        lines.append(f"- mean similarity: {pw['mean']:.3f}")
        lines.append(f"- median similarity: {pw['median']:.3f}")
        lines.append("- 1.0 = identical multiset of tokens (near-duplicate); 0.0 = disjoint opcode sets")

    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines) + "\n")


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main(argv=None) -> int:
    ap = argparse.ArgumentParser(
        description="Diversity audit for gen/rl_from_oracle.py's samples JSONL: "
                    "is the reported validated-leak yield genuine discovery or mode "
                    "collapse? Reads --samples, writes --out.")
    ap.add_argument("--samples", default=str(ROOT / "gen" / "rl_samples.jsonl"))
    ap.add_argument("--out", default=str(ROOT / "gen" / "rl_diversity.md"))
    args = ap.parse_args(argv)

    samples_path = Path(args.samples)
    if not samples_path.exists():
        print(f"ERROR: samples file not found: {samples_path}\n"
              f"Run gen/rl_from_oracle.py with --samples-out {samples_path} first.",
              file=sys.stderr)
        return 1

    records = load_samples(samples_path)
    if not records:
        print(f"ERROR: {samples_path} has no records to analyze.", file=sys.stderr)
        return 1

    report = analyze(records)
    verdict, reasons = decide_verdict(report)
    write_report(report, verdict, reasons, args.out, meta={"samples": str(samples_path)})

    print(f"verdict: {verdict}")
    for r in reasons:
        print(f"  - {r}")
    print(f"wrote {args.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
