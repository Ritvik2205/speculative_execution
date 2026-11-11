#!/usr/bin/env python3
"""build_labels_corpus.py — label-keeping function sequences from the local
assembly sources (step 5 of docs/NEXT_STEPS_2026-11-10.md).

v54_train/v54_test cannot be rebuilt with labels: they are an accretion of
earlier versions' already label-stripped records (v53 <- v52 <- ...), most x86
records point at source files that no longer exist (`/tmp/phase7_*.s`), and the
augmented ones cannot be matched back to their source lines. This script is the
opt-in path over the sources that DO exist: every function of every
`c_vulns/asm_code/*.s` (and, with --benign-glob, any other .s files as BENIGN),
neutralised exactly like build_dataset.py, with assembler-local labels kept as
`name:` marker lines so direct branches resolve.

It writes WHOLE FUNCTIONS, unaugmented and unsplit — source material for a
label-keeping window/augmentation/split pass, not a drop-in v54_train. Class
comes from the file name (same rule as scripts/augment_asm_windows.py).

  python3 v54/build_labels_corpus.py                       # -> v54/data/cvulns_functions_labels.jsonl
  python3 v54/build_labels_corpus.py --benign-glob 'githubCrawl/benign_asm/x86_64/**/*.s' --out ...
"""
from __future__ import annotations

import argparse
import glob
import json
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(ROOT / "scripts"))

import build_dataset as bd  # noqa: E402

DEFAULT_OUT = HERE / "data" / "cvulns_functions_labels.jsonl"
_CLASS = {"MELTDOWN": "L1TF"}          # v54 class vocabulary


def detect_label(name: str) -> str:
    from augment_asm_windows import _detect_vuln_label
    lab = _detect_vuln_label(name)
    return _CLASS.get(lab, lab)


def detect_arch(name: str) -> str:
    low = name.lower()
    if "riscv" in low or "rv64" in low:
        return "riscv64"
    if "x86" in low or "x64" in low:
        return "x86_64"
    if "arm64" in low or "aarch64" in low:
        return "arm64"
    return "arm32" if "arm" in low else "unknown"


def records_for(path: Path, label: str, min_instructions: int = 4):
    arch = detect_arch(str(path))
    for k, func in enumerate(bd.extract_functions(path, keep_labels=True)):
        seq = bd.clean_seq(bd._neutralize(func), keep_labels=True)
        # a label nothing in this function targets carries no edge: drop it
        operands = {l.split()[-1].lstrip("*") for l in seq if not bd.is_label_line(l) and len(l.split()) > 1}
        seq = [l for l in seq if not bd.is_label_line(l) or l[:-1] in operands]
        if sum(1 for l in seq if not bd.is_label_line(l)) < min_instructions:
            continue
        try:
            src = str(path.resolve().relative_to(ROOT))
        except ValueError:
            src = str(path)
        yield {"label": label, "sequence": seq, "source_file": src,
               "group": f"labels_{path.stem}", "arch": arch, "fn_index": k,
               "augmentation": "none", "keep_labels": True}


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--asm-glob", default=str(ROOT / "c_vulns/asm_code/*.s"))
    ap.add_argument("--benign-glob", default=None, help="extra .s files, all labelled BENIGN")
    ap.add_argument("--out", default=str(DEFAULT_OUT))
    a = ap.parse_args(argv)
    out = Path(a.out)
    if out.exists() and not out.name.endswith("_labels.jsonl"):
        ap.error(f"refusing to overwrite {out}: label-keeping output must be a new *_labels.jsonl file")
    n = skipped = 0
    out.parent.mkdir(parents=True, exist_ok=True)
    with open(out, "w") as f:
        for p in sorted(glob.glob(a.asm_glob, recursive=True)):
            label = detect_label(Path(p).name)
            if label == "UNKNOWN":
                skipped += 1
                continue
            for r in records_for(Path(p), label):
                f.write(json.dumps(r) + "\n")
                n += 1
        for p in sorted(glob.glob(a.benign_glob, recursive=True)) if a.benign_glob else []:
            for r in records_for(Path(p), "BENIGN"):
                f.write(json.dumps(r) + "\n")
                n += 1
    print(f"{n} function records -> {out}  ({skipped} files with no class in their name skipped)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
