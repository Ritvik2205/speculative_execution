#!/usr/bin/env python3
"""build_benign_filler.py — real per-arch BENIGN code, for size augmentation.

Multi-scale size augmentation (v54/augment_size_multiscale.py) grows training
windows to the RISC-V size range by embedding each gadget in benign context. That
context must be REAL, same-arch code, and the corpus has a gap: BENIGN is entirely
arm64 (zero x86 benign anywhere in v50/v53/v54). So compile the mbedTLS/polarssl
library to BOTH training architectures with clang and harvest its functions as a
benign filler pool.

Uses clang (host) with -nostdlibinc so the compiler's own <stdint.h> etc. are
available while libc is supplied by spec/riscv_stub_include (we only ever -S, never
link). Same neutralization and length floor as every other harvest. Output is
cached to v54/data/benign_filler_{x86_64,arm64}.jsonl.

NOT training data on its own and NOT RISC-V: it is x86/arm benign context used only
to enlarge existing x86/arm training records. Deduplicated against v54_test so no
composite can smuggle a test sequence into training.

Run: python3 v54/build_benign_filler.py --apply [--files 24] [--per-file 8]
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
OUT = {a: ROOT / "v54" / "data" / f"benign_filler_{a}.jsonl" for a in TRIPLE}


def compile_arch(src: Path, arch: str, out: Path):
    r = subprocess.run(
        ["clang", "-S", "-O2", f"--target={TRIPLE[arch]}", "-nostdlibinc",
         "-isystem", str(STUBS), "-I", str(MBED / "include"),
         "-o", str(out), str(src)],
        capture_output=True, text=True)
    return out if r.returncode == 0 else None


def build(arch, files, per_file, min_instr, test_hashes, tmp):
    recs, seen = [], set()
    for src in sorted(MBED.glob("library/*.c"))[:files]:
        asm = compile_arch(src, arch, tmp / f"{src.stem}.{arch}.s")
        if asm is None:
            continue
        kept = 0
        for fn, body in split_functions(asm).items():
            if kept >= per_file:
                break
            seq = clean_seq(_neutralize(body))
            if not passes_quality_filter(seq, min_instr):
                continue
            h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
            if h in seen or h in test_hashes:
                continue
            seen.add(h)
            kept += 1
            recs.append({"label": "BENIGN", "sequence": seq, "arch": arch,
                         "group": f"filler_{src.stem}", "source_file": src.name,
                         "provenance": "benign_filler"})
    return recs


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--files", type=int, default=40)
    ap.add_argument("--per-file", type=int, default=8)
    ap.add_argument("--min-instructions", type=int, default=6)
    args = ap.parse_args()

    if not MBED.exists():
        print(f"missing {MBED} — run spec/fetch_riscv_pocs.sh"); sys.exit(2)
    tmp = Path(__file__).resolve().parent / ".filler_tmp"; tmp.mkdir(exist_ok=True)

    test_h = set()
    tf = ROOT / "v54" / "data" / "v54_test.jsonl"
    if tf.exists():
        for l in open(tf):
            if l.strip():
                test_h.add(hashlib.sha256(
                    "\n".join(json.loads(l)["sequence"]).encode()).hexdigest())

    for arch in TRIPLE:
        recs = build(arch, args.files, args.per_file, args.min_instructions,
                     test_h, tmp)
        def ic(s): return sum(1 for l in s if l.strip()
                              and not l.strip().startswith('.')
                              and not l.strip().endswith(':'))
        sizes = sorted(ic(r["sequence"]) for r in recs)
        med = sizes[len(sizes)//2] if sizes else 0
        print(f"{arch:8s}: {len(recs)} benign filler funcs, "
              f"{len({r['group'] for r in recs})} files, median {med} instr")
        if args.apply:
            with OUT[arch].open("w") as f:
                for r in recs:
                    f.write(json.dumps(r) + "\n")
            print(f"          wrote {OUT[arch].relative_to(ROOT)}")
    if not args.apply:
        print("dry run — pass --apply to write")


if __name__ == "__main__":
    main()
