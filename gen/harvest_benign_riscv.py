#!/usr/bin/env python3
"""harvest_benign_riscv.py — a real, independent BENIGN RISC-V test set.

WHY BENIGN FIRST. Of the RISC-V classes, BENIGN is the cheapest to source and the
highest-leverage to measure: it needs no attack design (any real compiled RISC-V
code that is not one of the 8 speculative-execution classes is BENIGN), and the
classifier currently spends ~11.5% of its RISC-V predictions on a class the
attack-only test sets cannot contain. A real BENIGN RISC-V set measures the thing
a deployment actually cares about — the FALSE-POSITIVE rate on a new ISA.

SOURCE. Real, third-party, RISC-V-compiled C, not code we wrote:
  - polarssl/mbedTLS (Security-RISC/mbedtls-key-leak/mbedtls) — a production crypto
    library: AES, SHA, DES, bignum, base64, ASN.1, x509, ... hundreds of diverse
    functions. Genuinely idiomatic C compiled by a real RISC-V compiler.
  - the standalone Security-RISC measurement experiments (histograms, timers,
    page-walk) — researcher-written RISC-V-targeted C. These are side-channel
    MEASUREMENT primitives, not speculative-execution gadgets, so they are BENIGN
    with respect to our 8 vulnerability classes.

None of it is transliterated from our own corpus, so unlike riscv_corpus/ it is
independent evidence. (eval/isa_independence_check.py is meant to confirm that.)

NOT A HARD-NEGATIVE FILTER. Some crypto functions do index a table after a bounds
check and superficially resemble a gadget. They are kept: that is exactly the
realistic hard negative the classifier must not flag, and filtering them would
inflate the measured FP rate's optimism. BENIGN here means "real code that is not
a speculative gadget", judged by provenance, not by shape.

DIVERSITY OVER VOLUME. Capped per source file so bignum.c cannot dominate, and
compiled at O0/O1/O2/Os so the same function yields several codegen variants. The
resampling family is the source file.

GUARDS (shared with the attack harvest): every window is neutralized, must clear a
length floor, and is de-duplicated against v54_train, the real attack set, and the
synthetic set. Stamped provenance=real/benign, split=validation_never_train.

Run:  python3 gen/harvest_benign_riscv.py --apply [--per-file-cap 6]
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
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from build_dataset import _neutralize, clean_seq, passes_quality_filter  # noqa: E402
from harvest_real_riscv import split_functions                          # noqa: E402

VENDOR = ROOT / "vendor_riscv"
MBED = VENDOR / "Security-RISC" / "mbedtls-key-leak" / "mbedtls"
SECR = VENDOR / "Security-RISC"
STUBS = ROOT / "spec" / "riscv_stub_include"
OUT = ROOT / "spec" / "data" / "riscv_benign_validation.jsonl"
CC = "riscv64-elf-gcc"
OPTS = ["O0", "O1", "O2", "Os"]

# Standalone measurement experiments: (source, extra include dirs). These
# #include rlibsc.h from the repo root.
STANDALONE = [
    ("flush_reload_histogram/hist.c", [SECR]),
    ("prime_probe_histogram/hist.c", [SECR]),
    ("evict_reload_histogram/hist.c", [SECR]),
    ("flush_flush_histogram/hist.c", [SECR]),
    ("tlb_evict_histogram/hist.c", [SECR]),
    ("timer-drift/main.c", [SECR]),
    ("page-walk/main.c", [SECR]),
    ("square-multiply/main.c", [SECR]),
]


def compile_c(src: Path, incs, opt: str, out: Path):
    cmd = [CC, "-S", f"-{opt}", "-std=gnu17", "-march=rv64gc", "-mabi=lp64d"]
    for i in incs:
        cmd += ["-I", str(i)]
    cmd += ["-I", str(STUBS), "-o", str(out), str(src)]
    r = subprocess.run(cmd, capture_output=True, text=True)
    return out if r.returncode == 0 else None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--per-file-cap", type=int, default=6,
                    help="max kept functions per source file (diversity)")
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args()

    if not MBED.exists():
        print(f"missing {MBED} — run spec/fetch_riscv_pocs.sh first"); sys.exit(2)

    tmp = Path(__file__).resolve().parent / ".benign_tmp"
    tmp.mkdir(exist_ok=True)

    # forbidden: never reproduce a training or existing-validation sequence
    seen = set()
    for f in ["v54/data/v54_train.jsonl", "spec/data/riscv_real_validation.jsonl",
              "spec/data/riscv_synth_validation.jsonl"]:
        fp = ROOT / f
        if fp.exists():
            for l in open(fp):
                if l.strip():
                    seen.add(hashlib.sha256(
                        "\n".join(json.loads(l)["sequence"]).encode()).hexdigest())
    print(f"forbidden sequences (train + real + synth): {len(seen)}")

    # source list: mbedTLS library files + standalone experiments
    sources = [(f, [MBED / "include"]) for f in sorted(MBED.glob("library/*.c"))]
    sources += [(SECR / s, incs) for s, incs in STANDALONE]

    records = []
    stats = Counter()
    for src, incs in sources:
        fam = src.stem
        kept_here = 0
        for opt in OPTS:
            if kept_here >= args.per_file_cap:
                break
            asm = compile_c(src, incs, opt, tmp / f"{fam}.{opt}.s")
            stats["compiled" if asm else "compile_fail"] += 1
            if asm is None:
                continue
            for fn, body in split_functions(asm).items():
                if kept_here >= args.per_file_cap:
                    break
                seq = clean_seq(_neutralize(body))
                if not passes_quality_filter(seq, args.min_instructions):
                    continue
                h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                if h in seen:
                    stats["dup"] += 1
                    continue
                seen.add(h)
                kept_here += 1
                records.append({
                    "label": "BENIGN", "sequence": seq, "arch": "riscv64",
                    "group": fam, "source_file": str(src.relative_to(VENDOR)),
                    "gadget_function": fn, "opt": opt,
                    "provenance": "real", "origin": "benign",
                    "split": "validation_never_train",
                })

    fams = {r["group"] for r in records}
    print(f"\nBENIGN records: {len(records)} from {len(fams)} source files "
          f"(families)")
    print(f"compile: {stats['compiled']} ok, {stats['compile_fail']} failed; "
          f"dedup collisions: {stats['dup']}")
    per_fam = Counter(r["group"] for r in records)
    print(f"per-file spread: min={min(per_fam.values())} max={max(per_fam.values())} "
          f"mean={sum(per_fam.values())/len(per_fam):.1f}")

    # leak guard: no class-naming token, no overlap (already deduped, verify)
    import re
    CT = ("bhi", "retbleed", "mds", "l1tf", "inception", "spectre", "meltdown",
          "rsb", "ssb")
    leaks = Counter(tok for r in records for line in r["sequence"]
                    for tok in re.split(r'[^A-Za-z0-9]+', line.lower()) if tok in CT)
    print(f"class-naming tokens surviving neutralization: "
          f"{dict(leaks) if leaks else '(none)'}")

    if args.apply:
        OUT.parent.mkdir(parents=True, exist_ok=True)
        with OUT.open("w") as f:
            for r in records:
                f.write(json.dumps(r) + "\n")
        print(f"\nwrote {OUT}")
        print("NEVER train on this — it is a new-ISA TEST set (FP rate on RISC-V).")
    else:
        print("\ndry run — pass --apply to write")


if __name__ == "__main__":
    main()
