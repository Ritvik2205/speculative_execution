#!/usr/bin/env python3
"""extract_spectector_table.py — extract Spectector's own x86 instruction table
out of the pinned container into a JSON file, with provenance.

Why this exists: the pre-oracle filter (`gen/precheck.py`) must predict whether
Spectector can *rule on* a gadget. The honest way to do that is to use
Spectector's own acceptance rule, not a list we guessed or (worse) fitted to the
verdicts we later evaluate against. Spectector's x86 front end accepts an
instruction iff its mnemonic resolves against the `ins/4` facts in
`muasm_translator/src/x86_table.pl` with a matching operand count
(`gas_parser.pl:92-107`), so that table IS the allow-list.

Mnemonic resolution (reimplemented in `gen/precheck.py`, defined in
`muasm_translator/src/parser_aux.pl:91-105`): `insname` is an alphabetic
character followed by alphanumerics, then up to TWO optional size-suffix
characters, each from {s,q,b,l,w,t,d}. The parser backtracks over the splits, so
`movq` resolves to `ins(mov,...)` with suffix `q`, and `movzbl` to
`ins(movz,...)` with suffixes `b` and `l`. The chosen split must also satisfy
`length(Operands, N)` for that fact's arity N.

Output: `oracle/data/spectector_x86_table.json`
    {"provenance": {...}, "instructions": [{"name": ..., "arity": ...}, ...],
     "suffix_chars": [...], "max_suffixes": 2}

Run (needs Docker and the pinned image):
    python3 oracle/extract_spectector_table.py
    python3 oracle/extract_spectector_table.py --image specdiscover-spectector:pinned
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_IMAGE = "specdiscover-spectector:pinned"
TABLE_PATH = "/root/ciao/muasm_translator/src/x86_table.pl"
PARSER_AUX_PATH = "/root/ciao/muasm_translator/src/parser_aux.pl"
DEFAULT_OUT = REPO_ROOT / "oracle" / "data" / "spectector_x86_table.json"

# `ins(Name, Fmt, Arity, Semantics).` -- Name may be quoted ('cmps'), Arity is
# an integer. Commented-out facts (leading %) are deliberately NOT matched:
# Spectector does not load them, so they are not supported.
# Arity is either an integer or the Prolog variable `_`, which unifies with any
# operand count (`ins(nop, o, _, skip).`). `_` is recorded as arity null.
_INS_RE = re.compile(r"^\s*ins\(\s*'?([A-Za-z][A-Za-z0-9_]*)'?\s*,\s*[^,]+,\s*(\d+|_)\s*,")
# `suffix(N) --> "c".` in parser_aux.pl; the empty alternative is handled
# separately by `max_suffixes`.
_SUFFIX_RE = re.compile(r'^\s*suffix\(\s*\w+\s*\)\s*-->\s*"([a-z])"')
# `insname(...) --> alpha(X), insname_(Cs), suffix(_S1), suffix(_S2).`
_INSNAME_RE = re.compile(r"^\s*insname\(")


def container_file(image: str, path: str) -> str:
    """Read one file out of the image (no volumes, no network)."""
    out = subprocess.run(
        ["docker", "run", "--rm", "--network", "none", "--entrypoint", "cat", image, path],
        capture_output=True, text=True, timeout=300,
    )
    if out.returncode != 0:
        raise RuntimeError(f"could not read {path} from {image}: {out.stderr.strip()[:300]}")
    return out.stdout


def image_id(image: str) -> str:
    out = subprocess.run(["docker", "image", "inspect", "--format", "{{.Id}}", image],
                         capture_output=True, text=True, timeout=120)
    return out.stdout.strip() if out.returncode == 0 else "unknown"


def parse_table(text: str) -> list[dict]:
    """Every uncommented `ins/4` fact, as {name, arity}, deduplicated.

    A mnemonic can appear at several arities (`imul` at 1, 2 and 3); each is a
    separate entry, because the parser requires the operand count to match.
    `arity: null` means the fact's arity field is the Prolog variable `_`, which
    matches any operand count (`nop`, `npad`).
    """
    seen, out = set(), []
    for line in text.splitlines():
        if line.lstrip().startswith("%"):
            continue
        m = _INS_RE.match(line)
        if not m:
            continue
        arity = m.group(2)
        key = (m.group(1), None if arity == "_" else int(arity))
        if key in seen:
            continue
        seen.add(key)
        out.append({"name": key[0], "arity": key[1]})
    return out


def parse_suffixes(text: str) -> tuple[list[str], int]:
    """Suffix characters, and how many may follow a stem (how many `suffix(_)`
    calls `insname` makes)."""
    chars = sorted({m.group(1) for line in text.splitlines()
                    if (m := _SUFFIX_RE.match(line))})
    max_suffixes = 0
    for line in text.splitlines():
        if _INSNAME_RE.match(line) and not line.lstrip().startswith("%"):
            max_suffixes = max(max_suffixes, line.count("suffix("))
    return chars, max_suffixes


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--image", default=DEFAULT_IMAGE)
    ap.add_argument("--out", type=Path, default=DEFAULT_OUT)
    a = ap.parse_args(argv)

    table_src = container_file(a.image, TABLE_PATH)
    aux_src = container_file(a.image, PARSER_AUX_PATH)

    instructions = parse_table(table_src)
    suffix_chars, max_suffixes = parse_suffixes(aux_src)
    if not instructions:
        print("FATAL: no ins/4 facts parsed", file=sys.stderr)
        return 1
    if not suffix_chars or max_suffixes == 0:
        print("FATAL: could not parse the suffix grammar", file=sys.stderr)
        return 1

    doc = {
        "provenance": {
            "image": a.image,
            "image_id": image_id(a.image),
            "table_path": TABLE_PATH,
            "table_sha256": hashlib.sha256(table_src.encode()).hexdigest(),
            "parser_aux_path": PARSER_AUX_PATH,
            "parser_aux_sha256": hashlib.sha256(aux_src.encode()).hexdigest(),
            "extracted_at": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
            "note": "Spectector's own x86 front-end allow-list; see module docstring.",
        },
        "suffix_chars": suffix_chars,
        "max_suffixes": max_suffixes,
        "instructions": instructions,
    }
    a.out.parent.mkdir(parents=True, exist_ok=True)
    a.out.write_text(json.dumps(doc, indent=1) + "\n")
    names = {i["name"] for i in instructions}
    print(f"{len(instructions)} ins/4 facts ({len(names)} distinct mnemonics), "
          f"suffixes {''.join(suffix_chars)} x{max_suffixes} -> {a.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
