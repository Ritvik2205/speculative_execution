#!/usr/bin/env python3
"""Token streams for FastSpec dataset files, following FastSpec's published
preprocessing rules (FastSpec/asm_parser.py, reducer.py, list2tsv.py at commit
813230aa of github.com/vernamlab/FastSpec).

This is a RE-IMPLEMENTATION written from reading those files, not their code:
none of it is imported or executed. Only `word_dict.txt` (their vocabulary) is
read, as data. The rules kept:
  - objdump "Disassembly" lines and function-header lines are dropped;
  - comments (#...) and lines with a double quote are dropped;
  - an instruction is its lower-cased mnemonic followed by operand tokens, with
    `,` `(` `)` and a segment `:` as separate tokens;
  - objdump targets `<sym+off>` and anything containing `.L`, and the operand of
    a call, become `<label>`;
  - anything containing `$` or `0x` becomes `<imm>`;
  - a token outside the vocabulary becomes `<UNK>`  (assembler directives and
    program symbols such as `.cfi_startproc` or `array1` end up here);
  - tokens containing `..`, and after the above any token still containing `.`,
    are dropped; the first two tokens of a file are dropped.
Differences from their code are possible in corner cases (their parser has
several special paths); the write-up says so.

  python3 -I eval/replication/fastspec_tokens.py <fastspec clone> <sample dir> <out.jsonl>
"""
import json
import os
import re
import sys

NAME = re.compile(r"^\d+__(?P<family>[a-zA-Z]+?)(?P<base>\d+(?:\.\d+)?)(?P<tail>gcc)?_(?P<n1>\d+)_")
SAMPLE = re.compile(r"^\d+__sample_(?P<a>\d+)_(?P<b>\d+)")
_HEADER = re.compile(r"^[0-9a-f]{6,}\s+<")
_SPLIT = re.compile(r"([,()])")
_SEG = re.compile(r"^(%[a-z]s):(.+)$")


def provenance(fname: str) -> dict:
    m = NAME.match(fname)
    if m:
        return {"family": m.group("family") + (m.group("tail") or ""), "base": m.group("base"),
                "depth": int(m.group("n1"))}
    m = SAMPLE.match(fname)
    if m:
        return {"family": "sample", "base": m.group("a"), "depth": None}
    return {"family": None, "base": None, "depth": None}


def _operand_tokens(ops: str):
    out = []
    for part in _SPLIT.split(ops.replace(" ", "")):
        if not part:
            continue
        m = _SEG.match(part)
        if m:
            out += [m.group(1), ":", m.group(2)]
        else:
            out.append(part)
    return out


def tokens(text: str, vocab, drop_first: int = 2):
    raw = []
    for line in text.splitlines():
        if "Disassembly" in line or '"' in line:
            continue
        line = line.split("#", 1)[0].strip()
        if not line or _HEADER.match(line):
            continue
        line = re.sub(r"<[^>]*>", " <label> ", line)           # objdump targets
        parts = line.split(None, 1)
        mnem = parts[0].lower()
        toks = [mnem] + (_operand_tokens(parts[1]) if len(parts) > 1 else [])
        prev_call = False
        for i, t in enumerate(toks):
            if ".." in t:
                continue
            if t == "<label>" or ".L" in t or (prev_call and i > 0):
                raw.append("<label>")
            elif "$" in t or "0x" in t:
                raw.append("<imm>")
            elif t not in vocab:
                raw.append("<UNK>")
            else:
                raw.append(t)
            if i == 0:
                prev_call = t.startswith("call")
    return [t for t in raw if "." not in t][drop_first:]


def windows(toks, window: int = 80, overlap: int = 0):
    """list2tsv.py: step = window - overlap; the last partial window is kept
    only if it has more than 10 tokens."""
    step = window - overlap
    out = []
    for i in range(len(toks) // step + 1):
        w = toks[step * i: step * i + window] if i < len(toks) // step else toks[step * i:]
        if i == len(toks) // step:
            if len(w) > 10:
                out.append(w)
        else:
            out.append(w)
    return out


def main():
    clone, sample, out = sys.argv[1:4]
    vocab = {l.rstrip("\n") for l in open(os.path.join(clone, "FastSpec", "word_dict.txt"))}
    n = 0
    with open(out, "w") as f:
        for split in sorted(os.listdir(sample)):
            for fname in sorted(os.listdir(os.path.join(sample, split))):
                text = open(os.path.join(sample, split, fname), errors="replace").read()
                f.write(json.dumps({"split": split, "name": fname, **provenance(fname),
                                    "tokens": tokens(text, vocab)}) + "\n")
                n += 1
    print(f"wrote {n} files to {out}")


if __name__ == "__main__":
    main()
