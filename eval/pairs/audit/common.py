"""Shared loaders for the pair-split audit. Read-only on the repo."""
import json, re, sys, hashlib
from pathlib import Path
from collections import Counter, defaultdict
ROOT = Path.cwd()
sys.path.insert(0, str(ROOT))
from v57 import neardup, checks, task
from v57.build import canonical_spelling

def load(p):
    return [json.loads(l) for l in open(ROOT / p) if l.strip()]

def pairs():
    ps = []
    for f in ("pairs_hw", "pairs_injected", "pairs_linux"):
        ps += load(f"eval/pairs/data/{f}.jsonl")
    for p in ps:
        p["arch"] = "arm64" if p["set"] == "linux_arm64" else "x86_64"
        p["sk"] = p["set"] + (":" + p["kind"] if p["set"] == "injected" else "")
    return ps

_ws = re.compile(r"\s+")
def e1(seq):                      # repo canonicalisation only
    return tuple(canonical_spelling(list(seq)))
def e2(seq):                      # + strip, collapse whitespace, lower case
    return tuple(_ws.sub(" ", l.strip()).lower() for l in canonical_spelling(list(seq)) if l.strip())
def ops(seq):                     # ordered mnemonics, repo's opcode reader
    return tuple(o for l in canonical_spelling(list(seq)) for o in neardup.opcodes([l]))
def viol(s):
    m = re.search(r"violation-\d{6}-\d{6}", s or "")
    return m.group(0) if m else None
def sides(ps, which=("leak", "safe")):
    """distinct side records (arch, sequence, label) of a list of pairs"""
    seen, out = set(), []
    for p in ps:
        for w in which:
            k = (w, e1(p[w]))
            if k not in seen:
                seen.add(k)
                out.append({"arch": p["arch"], "sequence": list(p[w]), "side": w, "base": p["base"],
                            "label": "LEAK" if w == "leak" else "SAFE", "cls": p["cls"], "sk": p["sk"]})
    return out
