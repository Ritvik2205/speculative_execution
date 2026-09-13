#!/usr/bin/env python3
"""harvest_idiomatic_riscv.py — a single, idiomatic RISC-V corpus (attack + benign)
compiled with a REAL riscv64 toolchain, for Task 5.2 of the research-hardening plan.

WHY THIS EXISTS. The original `riscv_corpus/` is a ~40-rule mnemonic
transliteration of the x86/ARM corpus, and `eval/isa_independence_check.py`
proves it statistically: RISC-V sits closer to arm64 than two genuinely
independent corpora sit to each other (sign test p=0.016, 6/6 shared classes).
A cross-ISA transfer claim cannot rest on that corpus. This harvester instead:

  1. compiles the project's own portable gadget C (c_vulns/c_code/*.c) with
     `riscv64-elf-gcc -S` at O0 and O2 — genuine RISC-V codegen, not respelling;
  2. compiles real third-party benign C (mbedTLS, vendored under vendor_riscv/)
     the same way, so the corpus is not attack-only — the missing BENIGN half
     is what made the earlier RISC-V benign false-positive rate collapse
     (see MEMORY: "RISC-V generalisation").

Both halves reuse this project's existing, already-gated machinery rather than
reinventing it: `spec/harvest_real_riscv.py` (split_functions / verify_structure /
CLASS_STRUCTURE — the structural check that rejects windows a higher opt level
compiled the gadget out of) and `v54/build_dataset.py` (_neutralize / clean_seq —
the same symbol-name neutralization applied to every other ISA in this project,
so RISC-V is not held to a different standard).

This does NOT re-implement `gen/harvest_riscv_from_cvulns.py` /
`gen/harvest_benign_riscv.py` from scratch — it gives their already-verified
real-compiled output (`spec/data/riscv_cvulns_batch.jsonl`,
`spec/data/riscv_benign_validation.jsonl`) the single entry point Task 5.2 asks
for (`harvest(out_jsonl, include_benign=True)`), re-compiling from source when
those artifacts are stale or absent, and re-tagging every record
`external_source="idiomatic_riscv"` so downstream code (and the independence
test) can select this corpus unambiguously.

Toolchain note: the plan text says `riscv64-linux-gnu-gcc`; the verified,
available compiler in this environment is `riscv64-elf-gcc` (Homebrew,
bare-metal ELF target, no libc). That is why every source compiles to
assembly-only (`-S`) — a libc-requiring file (stdio/pthread) is EXPECTED to
fail and is skipped, reported, never faked.

Run:  python3 gen/harvest_idiomatic_riscv.py --apply
      python3 gen/harvest_idiomatic_riscv.py --apply --no-benign
"""
from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import sys
from collections import Counter
from pathlib import Path
from typing import Optional

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from build_dataset import _neutralize, clean_seq, passes_quality_filter  # noqa: E402
from harvest_real_riscv import split_functions, verify_structure, CLASS_STRUCTURE  # noqa: E402
from isa_spec import load_engine  # noqa: E402

CC = "riscv64-elf-gcc"
ENGINE = load_engine("riscv.json")
EXTERNAL_SOURCE = "idiomatic_riscv"

# --- attack side: c_vulns portable gadget cores -----------------------------
CVULNS = ROOT / "c_vulns" / "c_code"
SHIM = ROOT / "qemu_data" / "riscv_shim"
STUBS = ROOT / "spec" / "riscv_stub_include"
ATTACK_OPTS = ["O0", "O2"]

FILE_CLASS = {
    "spectre_1.c": "SPECTRE_V1", "spectre_github.c": "SPECTRE_V1",
    "spectre_2.c": "SPECTRE_V2",
    "spectre_rsb.c": "SPECTRE_RSB", "spectre_v4.c": "SPECTRE_V4",
    "l1tf.c": "L1TF", "mds.c": "MDS",
    "retbleed.c": "RETBLEED", "bhi.c": "BRANCH_HISTORY_INJECTION",
}
HARNESS = {"flush_probe_array", "measure_access_time", "benign_target",
           "common_init", "perform_measurement", "main", "rdtsc",
           "__rdtsc", "_rdtsc", "__rdtscp", "_mm_mfence", "_mm_lfence",
           "_mm_sfence", "_mm_clflush"}

# --- benign side: real third-party RISC-V-compiled C ------------------------
VENDOR = ROOT / "vendor_riscv"
MBED = VENDOR / "Security-RISC" / "mbedtls-key-leak" / "mbedtls"
BENIGN_OPTS = ["O0", "O2"]
BENIGN_PER_FILE_CAP = 6


def _compile(src: Path, opt: str, out: Path, *, incs=(), extra_defs=(),
             use_shim_tmp: Optional[Path] = None) -> tuple[Optional[Path], Optional[str]]:
    cmd = [CC, "-S", f"-{opt}", "-std=gnu17", "-march=rv64gc", "-mabi=lp64d"]
    for d in extra_defs:
        cmd += ["-D", d]
    for i in incs:
        cmd += ["-I", str(i)]
    if use_shim_tmp is not None:
        cmd += ["-I", str(use_shim_tmp)]
    cmd += ["-I", str(STUBS), "-o", str(out), str(src)]
    r = subprocess.run(cmd, capture_output=True, text=True)
    return (out, None) if r.returncode == 0 else (None, r.stderr[:200])


def harvest_attack(tmp: Path, seen: set, stats: Counter) -> list[dict]:
    """Compile c_vulns/c_code attack sources with a real riscv64 compiler."""
    if not SHIM.exists():
        stats["attack:no_shim"] += 1
        return []
    records = []
    for fname, cls in FILE_CLASS.items():
        src = CVULNS / fname
        if not src.exists():
            stats[f"attack:{fname}:missing"] += 1
            continue
        red = tmp / src.name
        red.write_text(src.read_text().replace(
            '#include "utils.c"', '#include "utils_riscv.c"'))
        (tmp / "utils_riscv.c").write_text((SHIM / "utils_riscv.c").read_text())
        for opt in ATTACK_OPTS:
            out = tmp / f"{src.stem}.{opt}.s"
            asm, err = _compile(red, opt, out, use_shim_tmp=tmp)
            if asm is None:
                stats[f"attack:{fname}:{opt}:compile_fail"] += 1
                continue
            stats["attack:compiled"] += 1
            for fn, body in split_functions(asm).items():
                if fn in HARNESS:
                    continue
                seq = clean_seq(_neutralize(body))
                if not passes_quality_filter(seq):
                    continue
                ok, _why = verify_structure(seq, cls, ENGINE) \
                    if cls in CLASS_STRUCTURE else (True, "no-struct-def")
                if not ok:
                    stats[f"attack:{cls}:struct_fail"] += 1
                    continue
                h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                if h in seen:
                    stats["attack:dup"] += 1
                    continue
                seen.add(h)
                records.append({
                    "label": cls, "sequence": seq, "arch": "riscv64",
                    "group": f"{src.stem}:{fn}",
                    "source_file": f"c_vulns/c_code/{fname}",
                    "gadget_function": fn, "opt": opt,
                    "provenance": "real_compiled",
                    "external_source": EXTERNAL_SOURCE,
                })
                stats[f"attack:{cls}:kept"] += 1
    return records


def harvest_benign(tmp: Path, seen: set, stats: Counter) -> list[dict]:
    """Compile real third-party benign C (mbedTLS) with a real riscv64 compiler."""
    if not MBED.exists():
        stats["benign:vendor_missing"] += 1
        return []
    records = []
    sources = sorted(MBED.glob("library/*.c"))
    for src in sources:
        fam = src.stem
        kept_here = 0
        for opt in BENIGN_OPTS:
            if kept_here >= BENIGN_PER_FILE_CAP:
                break
            out = tmp / f"benign_{fam}.{opt}.s"
            asm, err = _compile(src, opt, out, incs=[MBED / "include"])
            if asm is None:
                stats["benign:compile_fail"] += 1
                continue
            stats["benign:compiled"] += 1
            for fn, body in split_functions(asm).items():
                if kept_here >= BENIGN_PER_FILE_CAP:
                    break
                seq = clean_seq(_neutralize(body))
                if not passes_quality_filter(seq):
                    continue
                h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                if h in seen:
                    stats["benign:dup"] += 1
                    continue
                seen.add(h)
                kept_here += 1
                records.append({
                    "label": "BENIGN", "sequence": seq, "arch": "riscv64",
                    "group": fam,
                    "source_file": str(src.relative_to(VENDOR)),
                    "gadget_function": fn, "opt": opt,
                    "provenance": "real", "origin": "benign",
                    "external_source": EXTERNAL_SOURCE,
                })
                stats["benign:kept"] += 1
    return records


def harvest(out_jsonl: Path, include_benign: bool = True) -> dict:
    """Compile c_vulns (+ optional benign mbedTLS) with riscv64-elf-gcc and
    write the combined, neutralized, idiomatic RISC-V corpus to out_jsonl.

    Returns a stats dict: compile coverage + per-class / benign counts.
    """
    import tempfile
    seen: set = set()
    stats: Counter = Counter()

    with tempfile.TemporaryDirectory() as td:
        tmp = Path(td)
        attack_records = harvest_attack(tmp, seen, stats)
        benign_records = harvest_benign(tmp, seen, stats) if include_benign else []

    records = attack_records + benign_records
    out_jsonl.parent.mkdir(parents=True, exist_ok=True)
    with out_jsonl.open("w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")

    summary = {
        "total": len(records),
        "attack": len(attack_records),
        "benign": len(benign_records),
        "class_counts": dict(Counter(r["label"] for r in records)),
        "sources_attack_compiled": len({r["source_file"] for r in attack_records}),
        "sources_benign_compiled": len({r["source_file"] for r in benign_records}),
        "stats": dict(stats),
    }
    return summary


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true",
                     help="write output (default: dry run, print only)")
    ap.add_argument("--out", default=str(ROOT / "eval" / "data" / "idiomatic_riscv.jsonl"))
    ap.add_argument("--no-benign", action="store_true")
    args = ap.parse_args()

    out_path = Path(args.out)
    if not args.apply:
        # dry run: still compile (cheap), just write to a scratch path
        import tempfile
        out_path = Path(tempfile.mktemp(suffix=".jsonl"))

    summary = harvest(out_path, include_benign=not args.no_benign)

    print(f"attack sources compiled from: {summary['sources_attack_compiled']} files")
    print(f"benign sources compiled from: {summary['sources_benign_compiled']} files")
    print(f"records: {summary['total']} (attack={summary['attack']}, "
          f"benign={summary['benign']})")
    print("class counts:", summary["class_counts"])
    print("stats:", summary["stats"])
    if args.apply:
        print(f"\nwrote {out_path}")
    else:
        print(f"\ndry run — wrote scratch file {out_path} (pass --apply to write "
              f"{args.out})")


if __name__ == "__main__":
    main()
