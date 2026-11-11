"""Near-duplicate clustering by opcode multiset.

Two records are near-duplicates when the Jaccard overlap of their opcode
multisets is >= threshold (0.8 in the plan). A split is built from whole
clusters -- connected components of "near-duplicate OR same `group`" within
one ISA -- so neither an augmentation twin nor a re-windowed copy of a
training record can sit in the test set.
"""
from __future__ import annotations

import re
from collections import Counter, defaultdict
from typing import Dict, List

_PREFIX = {"lock", "rep", "repe", "repz", "repne", "repnz", "notrack", "bnd", "data16"}
_SKIP = re.compile(r"^\s*(\.|#|;|//|$)|:\s*(#.*)?$")


def opcodes(seq: List[str]) -> Dict[str, int]:
    c = Counter()
    for line in seq:
        if _SKIP.search(line):
            continue
        toks = line.strip().lower().split()
        while toks and toks[0] in _PREFIX:
            toks = toks[1:]
        if toks:
            c[toks[0]] += 1
    return dict(c)


def jaccard(a: Dict[str, int], b: Dict[str, int]) -> float:
    keys = set(a) | set(b)
    den = sum(max(a.get(k, 0), b.get(k, 0)) for k in keys)
    return sum(min(a.get(k, 0), b.get(k, 0)) for k in keys) / den if den else 0.0


class _DSU:
    def __init__(self, n):
        self.p = list(range(n))

    def find(self, x):
        while self.p[x] != x:
            self.p[x] = self.p[self.p[x]]
            x = self.p[x]
        return x

    def union(self, a, b):
        a, b = self.find(a), self.find(b)
        if a != b:
            self.p[max(a, b)] = min(a, b)


def _pairs(bags, sizes, idx, threshold):
    """Index pairs within `idx` with Jaccard >= threshold. J >= t needs the
    smaller multiset to be at least t times the larger, so records are sorted
    by size and each is compared only inside that band."""
    order = sorted(idx, key=lambda i: sizes[i])
    lo = 0
    for k, i in enumerate(order):
        while sizes[order[lo]] < threshold * sizes[i]:
            lo += 1
        for j in order[lo:k]:
            if jaccard(bags[i], bags[j]) >= threshold:
                yield i, j


def clusters(records: List[dict], threshold: float = 0.8) -> List[int]:
    """Cluster id per record (the smallest member index)."""
    n = len(records)
    bags = [opcodes(r["sequence"]) for r in records]
    sizes = [sum(b.values()) for b in bags]
    dsu = _DSU(n)
    by_group, by_arch = defaultdict(list), defaultdict(list)
    for i, r in enumerate(records):
        by_arch[r.get("arch")].append(i)
        if r.get("group") is not None:
            by_group[(r.get("arch"), r["group"])].append(i)
    for members in by_group.values():
        for m in members[1:]:
            dsu.union(members[0], m)
    for idx in by_arch.values():
        idx = [i for i in idx if sizes[i]]
        # identical multisets first: collapses exact twins before the banded scan
        same = defaultdict(list)
        for i in idx:
            same[frozenset(bags[i].items())].append(i)
        reps = []
        for members in same.values():
            for m in members[1:]:
                dsu.union(members[0], m)
            reps.append(members[0])
        for i, j in _pairs(bags, sizes, reps, threshold):
            dsu.union(i, j)
    return [dsu.find(i) for i in range(n)]


def leak_rate(train: List[dict], test: List[dict], threshold: float = 0.8) -> float:
    """Share of test records with a near-duplicate (same ISA) in train."""
    if not test:
        return 0.0
    by_arch = defaultdict(list)
    for r in train:
        b = opcodes(r["sequence"])
        by_arch[r.get("arch")].append((sum(b.values()), b))
    for v in by_arch.values():
        v.sort(key=lambda t: t[0])
    hit = 0
    for r in test:
        b = opcodes(r["sequence"])
        s = sum(b.values())
        for ts, tb in by_arch.get(r.get("arch"), ()):
            if ts > s / threshold:
                break
            if ts >= threshold * s and jaccard(b, tb) >= threshold:
                hit += 1
                break
    return hit / len(test)


def thin(records: List[dict], threshold: float = 0.8) -> List[dict]:
    """Greedy thinning: keep a record only if no already-kept record of the
    same ISA is a near-duplicate. Order is preserved, so shuffle first if the
    choice of representative should be random. Afterwards no two kept records
    of one ISA are near-duplicates, so near-duplicate chains cannot weld
    unrelated groups (e.g. whole packages) into one cluster."""
    kept, index = [], defaultdict(lambda: defaultdict(list))   # arch -> size -> bags
    for r in records:
        b = opcodes(r["sequence"])
        s = sum(b.values())
        if not s:
            continue
        sizes = index[r.get("arch")]
        lo, hi = int(threshold * s), int(s / threshold) + 1
        if any(jaccard(b, o) >= threshold for n in range(lo, hi + 1) for o in sizes.get(n, ())):
            continue
        sizes[s].append(b)
        kept.append(r)
    return kept
