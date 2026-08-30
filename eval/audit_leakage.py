#!/usr/bin/env python3
"""audit_leakage.py — does anything in the training data let the model read the
label instead of the code?

Written because the generalisation objective makes this load-bearing: a
classifier that reads a leaked class name will look excellent on the ISAs where
the leak exists and collapse on a new one, which is exactly the failure profile
we are trying to distinguish from genuine transfer.

Checks, each independent:

  L1  Class-name tokens in the instruction stream.
      Function labels whose trailing ':' was lost are parsed as instructions,
      so a line like `mds_zombieload_pattern` enters the sequence verbatim. The
      class name is then literally a feature value.

  L2  Single-class identifier tokens more generally.
      A token that occurs in exactly one class and looks like an identifier
      rather than an opcode. L1 is the subset of these that names its class;
      L2 catches the rest (e.g. a helper function unique to one corpus family).
      Reported separately because a real opcode being class-correlated is
      legitimate signal, not leakage — `movntdqa` genuinely indicates MDS.

  L3  Train/test group overlap.
      The same `group` on both sides of the split means near-duplicates are
      being scored as held-out data.

  L4  Source-file overlap across the split, independent of `group`.

Run: python3 eval/audit_leakage.py [--data v54/data/v54_train.jsonl] [--verbose]
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

# An identifier-shaped token: letters/underscores, long enough not to be an
# opcode, and carrying no operand. Opcodes are short and rarely contain '_'.
_IDENT = re.compile(r"^[a-z_][a-z0-9_]{5,}$", re.I)

# Substrings that name a vulnerability class. Derived from the label set at
# runtime plus the short aliases the corpus actually uses in symbol names.
_ALIASES = {
    "MDS": ("mds",),
    "L1TF": ("l1tf", "foreshadow"),
    "SPECTRE_V1": ("spectre_v1", "spectre1", "_v1_"),
    "SPECTRE_V2": ("spectre_v2", "spectre2", "_v2_"),
    "SPECTRE_V4": ("spectre_v4", "spectre4", "v4_", "ssb"),
    "SPECTRE_RSB": ("rsb", "ret2spec"),
    "RETBLEED": ("retbleed",),
    "INCEPTION": ("inception",),
    "BRANCH_HISTORY_INJECTION": ("bhi", "branch_history"),
    "BENIGN": ("benign",),
}


def load(path):
    return [json.loads(l) for l in open(path) if l.strip()]


def instr_tokens(seq):
    for line in seq:
        s = line.strip()
        if not s or s.startswith(".") or s.endswith(":"):
            continue
        yield s, s.split(None, 1)[0].rstrip(":").lower()


def names_its_own_class(token: str, label: str) -> bool:
    """Alias must sit at a token boundary, not inside a longer word.

    Without this, the short alias "rsb" matches inside the real ARM
    instruction `ldursb`, and `ldursb` gets reported as a SPECTRE_RSB leak.
    That was a false positive in the first run of this audit.
    """
    for a in _ALIASES.get(label, ()):
        for m in re.finditer(re.escape(a), token):
            before = token[m.start() - 1] if m.start() else "_"
            after = token[m.end()] if m.end() < len(token) else "_"
            if not before.isalnum() and not after.isalnum():
                return True
    return False


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--data", default=str(ROOT / "v54" / "data" / "v54_train.jsonl"))
    ap.add_argument("--test-data", default=str(ROOT / "v54" / "data" / "v54_test.jsonl"))
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args()

    rows = load(args.data)
    print(f"records: {len(rows)}  from {Path(args.data).name}\n")

    # ---- L1: class-name tokens -----------------------------------------
    print("=" * 72)
    print("L1 — instruction-stream tokens that NAME their own class")
    print("=" * 72)
    hits = defaultdict(Counter)
    rec_hit = Counter()
    total_rec = 0
    for r in rows:
        lab = r["label"]
        seen = False
        for raw, tok in instr_tokens(r["sequence"]):
            if _IDENT.match(tok) and names_its_own_class(tok, lab):
                hits[lab][tok] += 1
                seen = True
        if seen:
            rec_hit[lab] += 1
            total_rec += 1
    if not hits:
        print("  none found")
    else:
        for lab in sorted(hits):
            toks = hits[lab]
            print(f"  {lab:28s} {rec_hit[lab]:4d} records, "
                  f"{sum(toks.values()):4d} occurrences, {len(toks)} distinct")
            if args.verbose:
                for t, n in toks.most_common(8):
                    print(f"        {t}  x{n}")
    pct = 100 * total_rec / max(len(rows), 1)
    print(f"\n  TOTAL: {total_rec}/{len(rows)} records ({pct:.2f}%) contain a token "
          f"naming their own class")
    print("  -> every one of these is a free label read for any model that sees "
          "the raw token")

    # ---- L2: single-class identifier tokens ----------------------------
    print()
    print("=" * 72)
    print("L2 — identifier-shaped tokens confined to a single class")
    print("=" * 72)
    tok_lab = defaultdict(Counter)
    for r in rows:
        for _, tok in instr_tokens(r["sequence"]):
            tok_lab[tok][r["label"]] += 1
    single, named = [], set()
    for tok, c in tok_lab.items():
        if len(c) == 1 and sum(c.values()) >= 3 and _IDENT.match(tok):
            lab = next(iter(c))
            single.append((tok, sum(c.values()), lab))
            if names_its_own_class(tok, lab):
                named.add(tok)
    single.sort(key=lambda t: -t[1])
    print(f"  single-class identifier tokens: {len(single)} "
          f"({len(named)} of them already caught by L1)")
    print(f"  {'token':34s} {'n':>5s}  class      names-its-class")
    for tok, n, lab in single[:20]:
        print(f"    {tok:32s} {n:5d}  {lab:26s} {'YES' if tok in named else '-'}")
    print("  NOTE: a real opcode confined to one class is legitimate signal, not")
    print("        leakage (movntdqa really does indicate MDS). Only the")
    print("        identifier-shaped ones, especially the 'YES' rows, are leaks.")

    # ---- L3/L4: split overlap ------------------------------------------
    print()
    print("=" * 72)
    print("L3/L4 — train/test overlap")
    print("=" * 72)
    tp = Path(args.test_data)
    if not tp.exists():
        print(f"  {tp} not found; skipped")
    else:
        te = load(tp)
        for field in ("group", "source_file"):
            a = {r.get(field) for r in rows if r.get(field)}
            b = {r.get(field) for r in te if r.get(field)}
            inter = a & b
            n_te = sum(1 for r in te if r.get(field) in inter)
            tag = "L3" if field == "group" else "L4"
            print(f"  {tag} {field:12s} train={len(a):5d} test={len(b):5d} "
                  f"shared={len(inter):4d}  -> {n_te} test records affected")
            if inter and args.verbose:
                print(f"       e.g. {sorted(x for x in inter if x)[:5]}")

    print()
    print("=" * 72)
    print("VERDICT")
    print("=" * 72)
    print(f"  L1 class-name leakage : {total_rec} records ({pct:.2f}%)")
    print("  L1 is the actionable one: those tokens are symbol names, not")
    print("  instructions, and neutralising them cannot remove real signal.")


if __name__ == "__main__":
    main()
