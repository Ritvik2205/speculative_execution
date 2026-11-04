"""bars.py — the non-learned fence bars every mitigation-awareness number is
reported next to (paper tab:hwscore). Moved verbatim from
eval/cluster/aggregate_results.py and eval/score_hwlabel_variants.py so the
scoreboard, the aggregate job and the flip probe all score the same rules.

Each *_pred returns "BENIGN" or the record's attack class (vuln_class, falling
back to label), i.e. the same vocabulary as the hardware label.
"""
from __future__ import annotations

import re
from typing import Callable

FENCE_TOKENS = ("lfence", "mfence", "sfence", "dsb", "isb", "csdb")


def _cls(r: dict) -> str:
    return r.get("vuln_class") or r["label"]


def fence_count(seq: list[str]) -> int:
    return sum(1 for l in seq if any(t in l.lower() for t in FENCE_TOKENS))


def fence_count_pred(rec: dict, threshold: float) -> str:
    """Position-blind floor: BENIGN iff the record has at least `threshold`
    fences (score_hwlabel_variants.py uses the per-class median)."""
    return "BENIGN" if fence_count(rec["sequence"]) >= threshold else _cls(rec)


def adjacent_fence_pred(r: dict) -> str:
    """Non-learned bar: BENIGN iff some lfence sits directly next to the class's
    boundary instruction (jcc for V1, any memory op otherwise), skipping a
    standalone `lock` line. Matches 702/806 HW labels (2026-10-07)."""
    seq, cls = r["sequence"], _cls(r)
    jcc = lambda x: bool(re.match(r"j(?!mp)[a-z]+\s", x))
    mem = lambda x: "(" in x and not x.split()[0].startswith("lea")
    bnd = jcc if cls == "SPECTRE_V1" else mem
    for i, x in enumerate(seq):
        if x != "lfence":
            continue
        nb = [seq[j] for j in (i - 1, i + 1) if 0 <= j < len(seq) and seq[j] not in ("lfence", "lock")]
        if i + 2 < len(seq) and seq[i + 1] == "lock":
            nb.append(seq[i + 2])
        if any(bnd(y) for y in nb):
            return "BENIGN"
    return cls


def interior_fence_pred(r: dict) -> str:
    """Non-learned bar: BENIGN iff some lfence is NOT in the leading/trailing
    lfence run, i.e. sits inside the sequence. Matches 799/806 HW labels
    (2026-10-08): the current variant set cannot tell structure from position."""
    seq = r["sequence"]
    i, j = 0, len(seq)
    while i < j and seq[i] == "lfence":
        i += 1
    while j > i and seq[j - 1] == "lfence":
        j -= 1
    return "BENIGN" if "lfence" in seq[i:j] else _cls(r)


BARS: dict[str, Callable[[dict], str]] = {
    "adjacent": adjacent_fence_pred,
    "interior": interior_fence_pred,
}
