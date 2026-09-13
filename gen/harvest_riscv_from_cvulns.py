#!/usr/bin/env python3
"""harvest_riscv_from_cvulns.py — real idiomatic riscv64 gadgets from the project's
own vulnerability C, via a real riscv64 compiler.

QEMU plan, the RISC-V step. The existing riscv_corpus/ is an ARM transliteration
(bigram gate: closer to arm than two independent corpora, p=0.016). This instead
takes the project's PORTABLE gadget C (c_vulns/c_code/*.c) and compiles it with
riscv64-elf-gcc, so the codegen is genuinely riscv64 -- idiomatic, not respelled.

The gadget cores are portable C; only the harness primitives (x86 _mm_clflush /
_mm_mfence / __rdtsc) are arch-specific, so a riscv shim
(qemu_data/riscv_shim/utils_riscv.c) maps them to riscv64 (fence / rdcycle) and the
`#include "utils.c"` is redirected to it. Every gadget function is extracted,
neutralized, and STRUCTURALLY VERIFIED (the O2-gadget-deletion guard) against its
class -- so harness functions and compiler-deleted gadgets are dropped, recorded.

Output feeds two things: candidate TRAINING data for the RISC-V gap, and the
independence gate (eval/isa_independence_check.py) to prove it is idiomatic. It is
deduped against the held-out real PoCs, the synth set, and v54_train -- those stay
the anchors and are never trained on.

Run: python3 gen/harvest_riscv_from_cvulns.py --apply
"""
from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import sys
import tempfile
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from build_dataset import _neutralize, clean_seq                     # noqa: E402
from harvest_real_riscv import (split_functions, verify_structure,   # noqa: E402
                                CLASS_STRUCTURE)
from isa_spec import load_engine                                     # noqa: E402

CVULNS = ROOT / "c_vulns" / "c_code"
SHIM = ROOT / "qemu_data" / "riscv_shim"
STUBS = ROOT / "spec" / "riscv_stub_include"
OUT = ROOT / "spec" / "data" / "riscv_cvulns_batch.jsonl"
CC = "riscv64-elf-gcc"
OPTS = ["O0", "O1", "O2", "O3", "Os"]
ENGINE = load_engine("riscv.json")

# file -> vulnerability class (portable cores only; _arm64/x86 variants excluded)
FILE_CLASS = {
    "spectre_1.c": "SPECTRE_V1", "spectre_github.c": "SPECTRE_V1",
    # spectre_v1.c excluded: x86 inline asm (rbx/rax); V1 covered by spectre_1.c "spectre_2.c": "SPECTRE_V2",
    "spectre_rsb.c": "SPECTRE_RSB", "spectre_v4.c": "SPECTRE_V4",
    "l1tf.c": "L1TF", "mds.c": "MDS",
    "retbleed.c": "RETBLEED", "bhi.c": "BRANCH_HISTORY_INJECTION",
    # inception.c excluded: x86 inline asm (r9/rax) in the gadget itself, not portable
}
# harness functions from utils.c — never gadgets
HARNESS = {"flush_probe_array", "measure_access_time", "benign_target",
           "common_init", "perform_measurement", "main", "rdtsc",
           # riscv shim helpers (utils_riscv.c) — timing/fence, never gadgets
           "__rdtsc", "_rdtsc", "__rdtscp", "_mm_mfence", "_mm_lfence",
           "_mm_sfence", "_mm_clflush"}


def compile_riscv(src: Path, opt: str, tmp: Path):
    red = tmp / src.name
    red.write_text(src.read_text().replace('#include "utils.c"',
                                           '#include "utils_riscv.c"'))
    (tmp / "utils_riscv.c").write_text((SHIM / "utils_riscv.c").read_text())
    out = tmp / f"{src.stem}.{opt}.s"
    r = subprocess.run(
        [CC, "-S", f"-{opt}", "-std=gnu17", "-march=rv64gc", "-mabi=lp64d",
         "-I", str(tmp), "-I", str(STUBS), "-o", str(out), str(red)],
        capture_output=True, text=True)
    return (out, None) if r.returncode == 0 else (None, r.stderr[:150])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args()

    seen = set()
    for f in ["spec/data/riscv_real_validation.jsonl",
              "spec/data/riscv_synth_validation.jsonl",
              "v54/data/v54_train.jsonl", "v54/data/v54_test.jsonl"]:
        fp = ROOT / f
        if fp.exists():
            for l in open(fp):
                if l.strip():
                    seen.add(hashlib.sha256(
                        "\n".join(json.loads(l)["sequence"]).encode()).hexdigest())
    print(f"forbidden sequences (held-out + train): {len(seen)}")

    records, stats = [], Counter()
    with tempfile.TemporaryDirectory() as td:
        tmp = Path(td)
        for fname, cls in FILE_CLASS.items():
            src = CVULNS / fname
            if not src.exists():
                stats[f"{fname}:missing"] += 1
                continue
            for opt in OPTS:
                asm, err = compile_riscv(src, opt, tmp)
                if asm is None:
                    stats[f"{fname}:compile_fail"] += 1
                    continue
                stats["compiled"] += 1
                for fn, body in split_functions(asm).items():
                    if fn in HARNESS:
                        continue
                    seq = clean_seq(_neutralize(body))
                    if len(seq) < args.min_instructions:
                        continue
                    ok, why = verify_structure(seq, cls, ENGINE) \
                        if cls in CLASS_STRUCTURE else (True, "no-struct-def")
                    if not ok:
                        stats[f"{cls}:struct_fail"] += 1
                        continue
                    h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                    if h in seen:
                        stats["dup"] += 1
                        continue
                    seen.add(h)
                    records.append({
                        "label": cls, "sequence": seq, "arch": "riscv64",
                        "group": f"{src.stem}:{fn}", "source_file": f"c_vulns/c_code/{fname}",
                        "gadget_function": fn, "opt": opt, "provenance": "real_compiled",
                        "split": "candidate_train",
                    })
                    stats[f"{cls}:kept"] += 1

    print(f"\nreal riscv64 gadgets: {len(records)}  "
          f"from {len({r['source_file'] for r in records})} sources")
    print("class mix:", dict(Counter(r["label"] for r in records)))
    print("families:", len({r["group"].split(':')[0] for r in records}))
    print("kept per class:", {k.split(':')[0]: v for k, v in stats.items() if k.endswith(":kept")})
    print("compile failures:", {k: v for k, v in stats.items() if "compile_fail" in k})
    print("structural rejects:", {k: v for k, v in stats.items() if "struct_fail" in k})

    import re
    CT = ("bhi", "retbleed", "mds", "l1tf", "inception", "spectre", "meltdown", "rsb")
    leaks = Counter(t for r in records for line in r["sequence"]
                    for t in re.split(r'[^A-Za-z0-9]+', line.lower()) if t in CT)
    print("class-naming tokens surviving neutralization:", dict(leaks) if leaks else "(none)")

    if args.apply:
        OUT.parent.mkdir(parents=True, exist_ok=True)
        OUT.write_text("\n".join(json.dumps(r) for r in records) + "\n")
        print(f"\nwrote {OUT.relative_to(ROOT)}")
        print("Next: gate it — python3 eval/isa_independence_check.py "
              "--riscv-jsonl spec/data/riscv_cvulns_batch.jsonl")
    else:
        print("\ndry run — pass --apply")


if __name__ == "__main__":
    main()
