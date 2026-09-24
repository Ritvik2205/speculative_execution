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
# Every mbedTLS file the held-out riscv64 test set or the benign validation sets
# are built from. --exclude-heldout drops them so no filler function shares a
# source file (and so near-identical code) with anything we evaluate on.
HELDOUT_SOURCES = [
    ROOT / "spec" / "data" / "riscv_loio_corpus.jsonl",
    ROOT / "spec" / "data" / "benign_x86_64_validation.jsonl",
    ROOT / "spec" / "data" / "benign_arm64_validation.jsonl",
    ROOT / "spec" / "data" / "riscv_benign_validation.jsonl",
]


def heldout_stems() -> set:
    stems = set()
    for f in HELDOUT_SOURCES:
        if not f.exists():
            continue
        for l in open(f):
            if not l.strip():
                continue
            r = json.loads(l)
            s = Path(r.get("source_file") or r.get("group") or "").stem
            stems.add(s.replace("benigntrain_", "").split("_O")[0])
    return stems


def compile_arch(src: Path, arch: str, out: Path, opt: str = "O2"):
    r = subprocess.run(
        ["clang", "-S", f"-{opt}", f"--target={TRIPLE[arch]}", "-nostdlibinc",
         # the stub libc (spec/riscv_stub_include) lacks some prototypes
         # (ferror, ...); we only emit assembly, so don't let clang >= 16's
         # implicit-declaration error drop whole files
         "-Wno-error=implicit-function-declaration", "-Wno-error=int-conversion",
         "-Wno-error=incompatible-function-pointer-types",
         "-DNULL=((void*)0)", "-isystem", str(ROOT / "v54" / "filler_stub_include"),
         "-isystem", str(STUBS), "-I", str(MBED / "include"),
         "-o", str(out), str(src)],
        capture_output=True, text=True)
    return out if r.returncode == 0 else None


def build(arch, files, per_file, min_instr, test_hashes, tmp, opts=("O2",), exclude=()):
    recs, seen = [], set()
    srcs = [s for s in sorted(MBED.glob("library/*.c")) if s.stem not in exclude][:files]
    for src, opt in [(s, o) for s in srcs for o in opts]:
        asm = compile_arch(src, arch, tmp / f"{src.stem}.{arch}.{opt}.s", opt)
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
                         "opt": opt, "provenance": "benign_filler"})
    return recs


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--files", type=int, default=40)
    ap.add_argument("--per-file", type=int, default=8)
    ap.add_argument("--min-instructions", type=int, default=6)
    ap.add_argument("--opts", default="O2", help="comma-separated, e.g. O0,O2")
    ap.add_argument("--exclude-heldout", action="store_true",
                    help="skip every mbedTLS file used by the riscv64 test set or "
                         "the benign validation sets (required for held-out-ISA work)")
    ap.add_argument("--out-suffix", default="",
                    help="write benign_filler_<arch><suffix>.jsonl instead")
    args = ap.parse_args()
    exclude = heldout_stems() if args.exclude_heldout else set()
    if exclude:
        print(f"excluding {len(exclude)} held-out source files: {sorted(exclude)}")
    out_paths = {a: p.with_name(p.stem + args.out_suffix + p.suffix) for a, p in OUT.items()}

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
                     test_h, tmp, opts=tuple(args.opts.split(",")), exclude=exclude)
        leaked = {r["source_file"] for r in recs if Path(r["source_file"]).stem in exclude}
        assert not leaked, f"held-out source files leaked into filler: {leaked}"
        def ic(s): return sum(1 for l in s if l.strip()
                              and not l.strip().startswith('.')
                              and not l.strip().endswith(':'))
        sizes = sorted(ic(r["sequence"]) for r in recs)
        med = sizes[len(sizes)//2] if sizes else 0
        print(f"{arch:8s}: {len(recs)} benign filler funcs, "
              f"{len({r['group'] for r in recs})} files, median {med} instr")
        if args.apply:
            with out_paths[arch].open("w") as f:
                for r in recs:
                    f.write(json.dumps(r) + "\n")
            print(f"          wrote {out_paths[arch].relative_to(ROOT)}")
    if not args.apply:
        print("dry run — pass --apply to write")


if __name__ == "__main__":
    main()
