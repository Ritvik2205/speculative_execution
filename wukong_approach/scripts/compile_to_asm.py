#!/usr/bin/env python3
"""Compile C seeds into assembly variants for DeepWukong-style processing."""
import argparse
import subprocess
import sys
from pathlib import Path
from typing import Iterable, List

DEFAULT_COMPILERS = {
    "clang": "clang",
    "gcc": "gcc"
}

ARCH_TARGET_FLAGS = {
    "x86_64": "-target x86_64-unknown-linux-gnu",
    "arm64": "-target aarch64-unknown-linux-gnu"
}


def run(cmd: List[str]) -> None:
    proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if proc.returncode != 0:
        sys.stderr.write(f"[compile_to_asm] Command failed: {' '.join(cmd)}\n")
        sys.stderr.write(proc.stderr + "\n")
    else:
        sys.stdout.write(proc.stderr)


def iter_sources(root: Path, extensions: Iterable[str] = (".c", ".cc", ".cpp")):
    for ext in extensions:
        for path in root.rglob(f"*{ext}"):
            yield path


def main():
    ap = argparse.ArgumentParser(description="Compile source files to assembly for multi-architecture analysis")
    ap.add_argument("--sources", type=Path, required=True, help="Directory containing source kernels")
    ap.add_argument("--out", type=Path, required=True, help="Directory to place generated assembly files")
    ap.add_argument("--compilers", nargs="*", default=["clang", "gcc"], choices=list(DEFAULT_COMPILERS.keys()))
    ap.add_argument("--architectures", nargs="*", default=["x86_64", "arm64"], choices=list(ARCH_TARGET_FLAGS.keys()))
    ap.add_argument("--opt-levels", nargs="*", default=["O0", "O1", "O2", "O3"], help="Optimization levels to emit")
    ap.add_argument("--extra-flags", nargs="*", default=[], help="Additional compiler flags")
    args = ap.parse_args()

    if not args.sources.exists():
        ap.error(f"Sources directory {args.sources} does not exist")

    args.out.mkdir(parents=True, exist_ok=True)

    sources = list(iter_sources(args.sources))
    if not sources:
        print(f"No source files found beneath {args.sources}")
        return

    for src in sources:
        base = src.stem
        for comp_key in args.compilers:
            compiler = DEFAULT_COMPILERS[comp_key]
            for arch in args.architectures:
                arch_flags = ARCH_TARGET_FLAGS[arch].split()
                for opt in args.opt_levels:
                    outfile = args.out / f"{base}_{comp_key}_{arch}_{opt}.s"
                    cmd = [compiler, f"-{opt}", "-S", str(src), "-o", str(outfile)]
                    cmd[1:1] = arch_flags
                    if args.extra_flags:
                        cmd.extend(args.extra_flags)
                    outfile.parent.mkdir(parents=True, exist_ok=True)
                    print(f"[compile_to_asm] {' '.join(cmd)}")
                    run(cmd)


if __name__ == "__main__":
    main()
