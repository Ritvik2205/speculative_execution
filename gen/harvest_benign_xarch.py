#!/usr/bin/env python3
"""harvest_benign_xarch.py — real BENIGN test sets for x86_64 and arm64.

Companion to gen/harvest_benign_riscv.py. Motivation: the corpus has ZERO x86
benign anywhere (BENIGN is entirely arm64 in v50/v53/v54), so the classifier has
never seen benign x86 code. Does that inflate its false-positive rate on x86 the
same way it does on RISC-V? This measures it, and measures arm64 as the in-
distribution control.

Source: mbedTLS/polarssl compiled to each arch with clang (-nostdlibinc + stub
libc), same as the size-augmentation filler. Uses a DISJOINT slice of the library
files from the filler pool (`--file-start`), so a set harvested here stays valid as
a held-out test even after the filler enters a future retrain. Same neutralization,
length floor, and de-duplication against v54_train as every other harvest.

x86 output is AT&T (matches training). Stamped provenance=real/benign,
split=validation_never_train.

Run: python3 gen/harvest_benign_xarch.py --arch x86_64 --apply [--file-start 40]
"""
from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from build_dataset import _neutralize, clean_seq, passes_quality_filter  # noqa: E402
from harvest_real_riscv import split_functions                          # noqa: E402

MBED = ROOT / "vendor_riscv" / "Security-RISC" / "mbedtls-key-leak" / "mbedtls"
STUBS = ROOT / "spec" / "riscv_stub_include"
TRIPLE = {"x86_64": "x86_64-linux-gnu", "arm64": "aarch64-linux-gnu"}


def compile_c(src, arch, out):
    cmd = ["clang", "-S", "-O2", f"--target={TRIPLE[arch]}", "-nostdlibinc",
           "-isystem", str(STUBS), "-I", str(MBED / "include"), "-o", str(out), str(src)]
    if arch == "x86_64":
        cmd.insert(3, "-masm=att")
    r = subprocess.run(cmd, capture_output=True, text=True)
    return out if r.returncode == 0 else None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--arch", required=True, choices=list(TRIPLE))
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--file-start", type=int, default=40,
                    help="skip the first N library files (disjoint from filler)")
    ap.add_argument("--per-file-cap", type=int, default=6)
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args()

    out_path = ROOT / "spec" / "data" / f"benign_{args.arch}_validation.jsonl"
    tmp = Path(__file__).resolve().parent / ".benign_xarch_tmp"; tmp.mkdir(exist_ok=True)

    train_h = set()
    tf = ROOT / "v54" / "data" / "v54_train.jsonl"
    for l in open(tf):
        if l.strip():
            train_h.add(hashlib.sha256("\n".join(json.loads(l)["sequence"]).encode()).hexdigest())

    files = sorted(MBED.glob("library/*.c"))[args.file_start:]
    recs, seen = [], set()
    for src in files:
        asm = compile_c(src, args.arch, tmp / f"{src.stem}.{args.arch}.s")
        if asm is None:
            continue
        kept = 0
        for fn, body in split_functions(asm).items():
            if kept >= args.per_file_cap:
                break
            seq = clean_seq(_neutralize(body))
            if not passes_quality_filter(seq, args.min_instructions):
                continue
            h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
            if h in seen or h in train_h:
                continue
            seen.add(h); kept += 1
            recs.append({"label": "BENIGN", "sequence": seq, "arch": args.arch,
                         "group": src.stem, "source_file": src.name,
                         "gadget_function": fn, "provenance": "real",
                         "origin": "benign", "split": "validation_never_train"})

    fams = {r["group"] for r in recs}
    print(f"{args.arch}: {len(recs)} BENIGN functions from {len(fams)} files "
          f"(mbedTLS files {args.file_start}..)")
    print(f"overlap with v54_train: 0 (deduped)")

    if args.apply:
        with out_path.open("w") as f:
            for r in recs:
                f.write(json.dumps(r) + "\n")
        print(f"wrote {out_path.relative_to(ROOT)}")
    else:
        print("dry run — pass --apply")


if __name__ == "__main__":
    main()
