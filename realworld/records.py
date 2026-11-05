"""Shared record, window and dedupe helpers for real-world data collectors."""
import hashlib
import re
import sys
from pathlib import Path

_ROOT = Path(__file__).resolve().parent.parent
if str(_ROOT / "v54") not in sys.path:
    sys.path.insert(0, str(_ROOT / "v54"))

from build_dataset import _neutralize, clean_seq  # noqa: E402

WIN_LO = 25
WIN_HI = 45
STRIDE = 10

REQUIRED_PROVENANCE = ("url", "commit_or_version", "licence", "retrieved")
PROVENANCE_KEYS = REQUIRED_PROVENANCE + ("cve", "paper")

MITIGATIONS = (
    "lfence", "mfence", "verw", "array_index_nospec",
    "array_index_mask_nospec", "barrier_nospec",
    "__x86_indirect_thunk", "__x86_return_thunk",
)
_MIT_RE = re.compile("|".join(re.escape(m) for m in MITIGATIONS))


def make_record(sequence, label, arch, group, source, provenance, **extra):
    for k in REQUIRED_PROVENANCE:
        if not provenance.get(k):
            raise ValueError(f"provenance missing or empty: {k}")
    prov = {k: provenance.get(k) for k in PROVENANCE_KEYS}
    rec = dict(sequence=list(sequence), label=label, arch=arch, group=group,
               source=source, provenance=prov)
    rec.update(extra)
    return rec


def windows(seq, lo=WIN_LO, hi=WIN_HI, stride=STRIDE):
    seq = list(seq)
    if len(seq) < lo or len(seq) <= hi:
        return [seq]
    out = [seq[i:i + hi] for i in range(0, len(seq) - hi + 1, stride)]
    if (len(seq) - hi) % stride:
        out.append(seq[-hi:])
    return out


def normalise(asm_lines):
    return clean_seq(_neutralize(list(asm_lines)))


def source_key(rec):
    p = rec["provenance"]
    return f"{p['url']}@{p['commit_or_version']}#{rec.get('function', '')}"


def _seq_hash(rec):
    seq = normalise(rec["sequence"])
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


def split_leaks(train, evals):
    leaks = []
    tkeys = {source_key(r) for r in train}
    thash = {_seq_hash(r) for r in train}
    for r in evals:
        k = source_key(r)
        if (k in tkeys or _seq_hash(r) in thash) and k not in leaks:
            leaks.append(k)
    return leaks


def has_mitigation(seq):
    return any(_MIT_RE.search(line) for line in seq)
