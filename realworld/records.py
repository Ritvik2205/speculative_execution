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

MNEMONIC_MITIGATIONS = ("lfence", "mfence", "verw")   # x86_64
# M1: barrier mnemonics per arch, matched as the FIRST mnemonic. riscv `sb` is store-byte, so `sb`
# (arm64 speculation barrier) is only a barrier on arm64; an arch-less call uses x86 + the unambiguous rest.
ARCH_MITIGATIONS = {
    "x86_64": MNEMONIC_MITIGATIONS,
    "arm64": ("dsb", "isb", "csdb", "sb"),
    "riscv64": ("fence", "fence.i"),
}
ARCH_MITIGATIONS["aarch64"] = ARCH_MITIGATIONS["arm64"]
_ANY_ARCH = MNEMONIC_MITIGATIONS + ("dsb", "isb", "csdb", "fence", "fence.i")
SYMBOL_MITIGATIONS = (
    "array_index_nospec", "array_index_mask_nospec", "barrier_nospec",
    "__x86_indirect_thunk", "__x86_return_thunk",
)


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
    fn = rec.get("function", "")
    if rec.get("file"):
        fn = f"{rec['file']}:{fn}"
    return f"{p['url']}@{p['commit_or_version']}#{fn}"


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


def train_source_tokens(trows):
    """Lowercased external-source names seen in the train file: the `ext_<tool>_` prefix of
    `group` and every path component of `source_file`."""
    toks = set()
    for r in trows:
        m = re.match(r"ext_([a-z0-9]+)_", (r.get("group") or "").lower())
        if m:
            toks.add(m.group(1))
        toks.update(c.lower() for c in (r.get("source_file") or "").split("/") if c)
    return toks


def has_mitigation(seq, arch=None):
    mn = ARCH_MITIGATIONS.get(arch, _ANY_ARCH)
    for line in seq:
        toks = line.split()
        if toks and toks[0].lower() in mn:
            return True
        if any(m in line for m in SYMBOL_MITIGATIONS):
            return True
    return False
