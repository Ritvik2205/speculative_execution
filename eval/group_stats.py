#!/usr/bin/env python3
"""group_stats.py — group-aware (cluster) uncertainty for the RISC-V corpus.

Why this exists: the RISC-V corpus is 496 records drawn from only ~22 source
families (each source compiled at multiple opt levels, plus large
`_gen_0 ... _gen_N` near-duplicate blocks — see spec/eval_riscv_real.py and
c_vulns/enhanced_variants/*). Treating every record as an independent draw
(the ordinary record-level t-distribution CI used elsewhere in eval/) makes
every interval far too narrow: SPECTRE_V4 is 1 group / 12 records, so there is
exactly ONE independent data point behind that class, not twelve.

This module resamples GROUPS (source families), not records — a cluster
("block") bootstrap — and reports the Kish effective sample size so a caller
can see how much independent evidence actually exists.

`family()` / `_DIR_PREFIXES` (the source-family name normalisation: collapse
`_gen_N` variants, arch suffixes, compiler/opt decoration) live here and are
imported back by eval/riscv_family_holdout.py, which used to define them
first — moved here rather than duplicated, so this module stays pure
stdlib + numpy/scipy (no torch/sklearn pulled in just to compute a group
key), and riscv_family_holdout.py (which already depends on the heavy
spec/v54 training stack) is unaffected.

Run:  python3 eval/group_stats.py
"""
from __future__ import annotations

import math
import re
import sys
from pathlib import Path
from typing import Dict, List, Sequence, Tuple

import numpy as np
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent

# ---------------------------------------------------------------------------
# Source-family grouping (moved from eval/riscv_family_holdout.py — see
# module docstring for why. riscv_family_holdout.py imports these two names
# from here.)
# ---------------------------------------------------------------------------

# Directory prefixes flattened into the RISC-V group name. Stripping them puts
# both sides into the same namespace as the v54 basenames, which carry no
# directory component.
_DIR_PREFIXES = ("enhanced_variants_", "generated_variants_", "expanded_variants_",
                  "retbleed_variants_", "generated_", "c_code_")


def family(name: str) -> str:
    """Source family shared by every _gen_N variant, arch and opt level."""
    s = name
    s = re.sub(r"^c_vulns_c_code_", "", s)
    for p in _DIR_PREFIXES:
        if s.startswith(p):
            s = s[len(p):]
    s = re.sub(r"\.(c|s)$", "", s)
    s = re.sub(r"[._](clang|gcc)[._]O[0-9s]+$", "", s)
    s = re.sub(r"\.(x86_64|arm64|aarch64)(\..*)?$", "", s)
    s = re.sub(r"_gen_\d+$", "", s)
    s = re.sub(r"_(x86_64|arm64|aarch64)$", "", s)
    return s


def group_of(record: dict) -> str:
    """Source-family group for any record dict carrying a `group` field —
    riscv64 records from spec/eval_riscv_real.py::build_riscv_records(), and
    equally x86_64/arm64 records from v54/data/*.jsonl, which carry the same
    `group` field (see eval/leave_one_isa_out.py, which applies this to all
    three ISAs). Normalises the record's `group` field via family() — this is
    the grouping key the statistics below cluster on."""
    return family(record["group"])


# ---------------------------------------------------------------------------
# Naive (record-level) CI — the thing this module argues is too narrow.
# Same shape as the `ci95` helper duplicated throughout eval/ (e.g.
# eval/riscv_family_holdout.py, eval/equivalence_tost.py): mean +/- t-based
# half-width, treating every record as an independent draw.
# ---------------------------------------------------------------------------

def ci95(x) -> Tuple[float, float]:
    """(mean, half-width) of a 95% CI over records, ordinary t-distribution.
    This is the naive baseline that ignores clustering."""
    x = np.asarray(x, dtype=float)
    if len(x) == 0:
        return float("nan"), float("nan")
    m = float(x.mean())
    if len(x) < 2:
        return m, 0.0
    return m, float(x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1))


# ---------------------------------------------------------------------------
# Group-aware (cluster bootstrap) uncertainty
# ---------------------------------------------------------------------------

def effective_n(groups: Sequence) -> float:
    """Kish effective sample size given the group-size distribution.

    Treats each record's group membership as a clustering weight and applies
    Kish's design-effect formula n_eff = (sum n_g)^2 / sum(n_g^2) to the
    vector of group sizes n_g. This is the standard worst-case (rho=1)
    cluster design-effect approximation: it answers "how many *independent*
    records' worth of evidence is here", given that a giant near-duplicate
    block reduces to roughly one independent observation regardless of how
    many records it contains.

    Properties (see tests/eval/test_group_stats.py):
      - all groups size 1 (no clustering)  -> effective_n == n records
      - one group of size N (total clustering) -> effective_n == 1
      - effective_n <= n_groups <= n_records always
    """
    groups = np.asarray(list(groups))
    if len(groups) == 0:
        return 0.0
    _, counts = np.unique(groups, return_counts=True)
    counts = counts.astype(float)
    total = counts.sum()
    return float(total * total / np.sum(counts * counts))


def cluster_bootstrap_ci(
    values: Sequence[float],
    groups: Sequence,
    n_boot: int = 10000,
    seed: int = 0,
    alpha: float = 0.05,
) -> Tuple[float, float, float]:
    """Cluster (block) bootstrap CI for the mean of `values`.

    Resamples GROUPS with replacement (not records): each bootstrap replicate
    draws len(unique_groups) group-keys with replacement and pools every
    record belonging to the drawn groups (a group drawn twice contributes its
    records twice). This is the textbook cluster/block bootstrap, and is the
    correct resampling unit whenever records within a group are not
    independent (near-duplicate `_gen_N` variants, multiple opt levels of the
    same source, etc.).

    Returns (point_estimate, lo, hi) for a (1 - alpha) percentile interval.

    Degenerate cases (handled explicitly, per spec — must not silently return
    a 0-width interval that implies false certainty):
      - 0 records            -> (nan, nan, nan)
      - 1 unique group       -> (point_estimate, nan, nan): with only one
        group there is no between-group variance to resample, so the CI is
        genuinely undefined, not zero.
    """
    values = np.asarray(values, dtype=float)
    groups = np.asarray(list(groups))
    if len(values) != len(groups):
        raise ValueError(
            f"values and groups must be the same length "
            f"(got {len(values)} and {len(groups)})"
        )
    if len(values) == 0:
        return float("nan"), float("nan"), float("nan")

    point = float(values.mean())
    unique_groups = np.unique(groups)
    n_groups = len(unique_groups)
    if n_groups < 2:
        # No between-group variance is observable with a single cluster.
        # Returning 0.0 here would misrepresent "no evidence" as "no
        # uncertainty" — report the CI as explicitly undefined instead.
        return point, float("nan"), float("nan")

    # Vectorised: precompute per-group sum and count, then for every
    # bootstrap replicate draw n_groups group-indices with replacement and
    # take the (weighted) mean of the pooled records. Equivalent to actually
    # concatenating resampled records' values, but O(n_boot * n_groups)
    # instead of O(n_boot * n_records).
    group_sums = np.array([values[groups == g].sum() for g in unique_groups])
    group_ns = np.array([np.count_nonzero(groups == g) for g in unique_groups])

    rng = np.random.RandomState(seed)
    idx = rng.randint(0, n_groups, size=(n_boot, n_groups))
    boot_sums = group_sums[idx].sum(axis=1)
    boot_ns = group_ns[idx].sum(axis=1)
    boot_means = boot_sums / boot_ns

    lo, hi = np.percentile(boot_means, [100 * alpha / 2, 100 * (1 - alpha / 2)])
    return point, float(lo), float(hi)


def group_aware_accuracy_ci(y_true, y_pred, groups, **kw) -> Tuple[float, float, float]:
    """Convenience: accuracy with a cluster-bootstrapped CI, grouped by
    source family. Returns (accuracy, lo, hi) as fractions in [0, 1]."""
    y_true = np.asarray(list(y_true))
    y_pred = np.asarray(list(y_pred))
    correct = (y_true == y_pred).astype(float)
    return cluster_bootstrap_ci(correct, groups, **kw)


# ---------------------------------------------------------------------------
# CLI: re-state the real RISC-V corpus's per-class uncertainty honestly.
# ---------------------------------------------------------------------------

def _n_instructions(seq: List[str]) -> int:
    """Same "is this a real instruction line" filter used elsewhere in
    eval/ (e.g. riscv_family_holdout.py's non_stub check): drop blank lines,
    directives, and bare labels."""
    return len([
        l for l in seq
        if l.strip() and not l.strip().startswith(".") and not l.strip().endswith(":")
    ])


def _load_riscv_records():
    sys.path.insert(0, str(ROOT / "spec"))
    sys.path.insert(0, str(ROOT / "v54"))
    from eval_riscv_real import build_riscv_records  # noqa: E402
    return build_riscv_records()


def main() -> None:
    records = _load_riscv_records()

    by_class: Dict[str, List[dict]] = {}
    for r in records:
        by_class.setdefault(r["label"], []).append(r)

    print(f"\nRISC-V corpus: {len(records)} records total\n")
    header = (f"{'class':24s} {'n_rec':>6s} {'n_grp':>6s} {'eff_n':>7s} "
              f"{'record-CI +/-':>15s} {'group-CI +/-':>15s} {'inflation':>10s}")
    print(header)
    print("-" * len(header))

    all_values = np.array([_n_instructions(r["sequence"]) for r in records], dtype=float)
    all_groups = np.array([group_of(r) for r in records])

    def row(label: str, recs: List[dict]):
        values = np.array([_n_instructions(r["sequence"]) for r in recs], dtype=float)
        groups = np.array([group_of(r) for r in recs])
        n_grp = len(np.unique(groups))
        eff_n = effective_n(groups)
        _, rec_hw = ci95(values)
        _, glo, ghi = cluster_bootstrap_ci(values, groups)
        if math.isnan(glo):
            grp_hw_str = "undefined"
            inflation_str = "n/a"
        else:
            point = values.mean()
            grp_hw = max(point - glo, ghi - point)
            grp_hw_str = f"{grp_hw:.3f}"
            inflation_str = f"{grp_hw / rec_hw:.1f}x" if rec_hw > 0 else "n/a"
        print(f"{label:24s} {len(recs):6d} {n_grp:6d} {eff_n:7.2f} "
              f"{rec_hw:15.3f} {grp_hw_str:>15s} {inflation_str:>10s}")

    for label in sorted(by_class):
        row(label, by_class[label])
    print("-" * len(header))
    row("ALL", records)

    print("\nStatistic bootstrapped: mean instruction count per record.")
    print("record-CI = ordinary 95% t-interval over records (naive, treats")
    print("  every record as an independent draw).")
    print("group-CI  = 95% cluster-bootstrap interval, resampling source")
    print("  families (group_of()) with replacement, not records.")
    print("inflation = group-CI half-width / record-CI half-width: how much")
    print("  wider the honest interval is than the naive one.")
    print("eff_n     = Kish effective sample size given the group-size")
    print("  distribution — how much independent evidence actually exists.")
    print("'undefined'/'n/a': the class has < 2 source-family groups, so")
    print("  between-group variance cannot be estimated at all (e.g.")
    print("  SPECTRE_V4/SPECTRE_RSB/BENIGN below, each 1 group).")


if __name__ == "__main__":
    main()
