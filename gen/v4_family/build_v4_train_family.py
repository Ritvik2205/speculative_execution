#!/usr/bin/env python3
"""build_v4_train_family.py — complete Spectre-v4 gadgets (and matched
mitigated / non-bypass twins) as GINE training records.

Why: the v54 SPECTRE_V4 training windows almost never contain a complete
store-bypass gadget — only 3.6% of x86 and 0% of arm64 V4 records have
store -> reload of that slot -> load through it -> secret-dependent transmit
(vs 80% of the held-out riscv64 V4 gadgets). The class was being learned from
"store->reload + harness cues" (lfence 97%, rdtsc 84%), and store->reload is in
53% of benign -O0 functions (every pointer deref spills), so once length
matching added -O0 benign code the class became unlearnable (0% riscv V4 recall
for every len_* model).

What: the gen_v4_family.py victim template, over ALL 24 combinations of its own
pre-existing knobs (stride 9-12 x indirection 0/1 x dead ops 0-2; the original
family used 8), in its three variants — which differ in one line:
  vuln    slot = p; v = *slot (reload the stored slot); transmit array2[v<<s]
          -> SPECTRE_V4
  fenced  same + speculation barrier between store and reload (SSBD-style
          mitigation)                                       -> BENIGN
  safe    v = *public_ptr (no reload of the stored slot) but the SAME transmit
          -> BENIGN   (the hard negative: transmit without store-bypass)
Compiled for x86_64 and arm64 with clang at -O0/-O1/-O2 (same toolchain as the
held-out-clean benign filler). The knob grid is the family's own (written
2026-09-05); no variant was modelled on the held-out riscv64 gadget.

Labels are BY CONSTRUCTION. The gem5/InvisiSpec labels in
oracle/results/v4_family_labels.jsonl are ignored: gem5 does not model
store-bypass (0/40 recovery even for the reference PoC). Store-bypass itself is
hardware-confirmed on the i5-8300H (Revizor, oracle/revizor/results/
v4_ssb_260907: 15 violations with SSBD off, 0 with it on).

Held-out structure split (2026-09-25): training uses strides 9-10 only;
strides 11-12 are the held-out V4 test — built for riscv64 with gcc AND LLVM
clang (spec/data/v4fam_test_riscv64.jsonl) and for x86/arm as the in-ISA
control (spec/data/v4fam_test_x86arm.jsonl). NOTE: with `slot` volatile the
indirection knob compiles identically either way and dead ops vanish above
-O0, so the effective holdout is the shift constant — the riscv set measures
ISA/compiler transfer of the same gadget, not new gadget structure. Global
names (slot/array2/...) are replaced by <fn> so they can't mark the family.

Run:
  python3 gen/v4_family/build_v4_train_family.py --split train      # -> out/ (gitignored)
  python3 gen/v4_family/build_v4_train_family.py --split test --archs riscv64 \
      --compilers gcc clang --out spec/data/v4fam_test_riscv64.jsonl
  python3 gen/v4_family/build_v4_train_family.py --split test --out spec/data/v4fam_test_x86arm.jsonl
"""
from __future__ import annotations

import argparse
import hashlib
import itertools
import json
import re
import subprocess
import sys
import tempfile
from collections import Counter
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from gen_v4_family import VICTIM_TMPL, make_dead_block, make_load  # noqa: E402
# Same extraction as v54/build_benign_filler.py, so V4 records are formatted
# exactly like the benign filler and v54 records. (build_v4_family_records'
# normalize_line treats arm's `#` as a comment: `lsl w10, w8, #9` -> `lsl
# w10, w8,`, erasing every arm immediate — including the transmit stride.)
from build_dataset import _neutralize, clean_seq  # noqa: E402
from harvest_real_riscv import split_functions  # noqa: E402

FUNC = "victim_function_v4"


def extract_victim(spath):
    body = split_functions(Path(spath)).get(FUNC, [])
    return clean_seq(_neutralize(body))

OUT = HERE / "out" / "v4_train_family_records.jsonl"
# (arch, compiler) -> clang/gcc command prefix. x86_64/arm64 use the same Apple
# clang as the held-out-clean benign filler; riscv64 is built with BOTH gcc
# (the toolchain of the existing riscv held-out corpus) and LLVM clang (the
# training toolchain), so ISA shift and compiler shift can be told apart.
LLVM_CLANG = "/opt/homebrew/opt/llvm/bin/clang"
COMPILE = {
    ("x86_64", "clang"): ["clang", "--target=x86_64-linux-gnu"],
    ("arm64", "clang"): ["clang", "--target=aarch64-linux-gnu"],
    ("riscv64", "gcc"): ["riscv64-elf-gcc", "-march=rv64gc", "-mabi=lp64d", "-ffreestanding"],
    ("riscv64", "clang"): [LLVM_CLANG, "--target=riscv64-linux-gnu", "-march=rv64gc",
                           "-ffreestanding"],
}
TRAIN_STRIDES = (9, 10)       # training structures
TEST_STRIDES = (11, 12)       # held-out structures: never in any training file
OPTS = ("O0", "O1", "O2")
# The family's globals survive in every ISA's asm (`slot@GOTPCREL`, `:got:slot`,
# `%hi(slot)`) and would mark "this is the V4 family" identically in train and
# test; replace them with the corpus-wide <fn> placeholder.
_GLOBALS = re.compile(r"\b(slot|array2|temp|public_byte)\b")
HEADER = (
    "#include <stdint.h>\n"
    "#if defined(__x86_64__)\n"
    "  #define SPEC_FENCE() __asm__ __volatile__(\"lfence\" ::: \"memory\")\n"
    "#elif defined(__aarch64__)\n"
    "  #define SPEC_FENCE() __asm__ __volatile__(\"dsb sy\\n\\tisb\" ::: \"memory\")\n"
    # riscv has no architectural speculation barrier; `fence rw,rw` is the
    # nearest ordering instruction. Without this branch the riscv "fenced"
    # variant compiled to an empty compiler barrier == vuln.
    "#elif defined(__riscv)\n"
    "  #define SPEC_FENCE() __asm__ __volatile__(\"fence rw,rw\" ::: \"memory\")\n"
    "#else\n"
    "  #define SPEC_FENCE() __asm__ __volatile__(\"\" ::: \"memory\")\n"
    "#endif\n"
    "extern uint8_t array2[256 * 512];\n"
    "extern uint8_t public_byte;\n"
    "extern uint8_t temp;\n"
    "extern uint8_t * volatile slot;\n"
)
LABEL = {"vuln": "SPECTRE_V4", "fenced": "BENIGN", "safe": "BENIGN"}


def victim_src(stride, indir, dead, variant):
    fence = ("  SPEC_FENCE();                      /* SSBD: blocks the bypass */\n"
             if variant == "fenced" else "")
    return HEADER + VICTIM_TMPL % {
        "fence_line": fence,
        "dead_block": make_dead_block(dead),
        "load_expr": "*public_ptr" if variant == "safe" else make_load(indir),
        "stride": stride,
    }


def build(archs, compilers, strides, opts):
    recs, seen, failed = [], set(), 0
    with tempfile.TemporaryDirectory() as tmp:
        tmp = Path(tmp)
        for stride, indir, dead in itertools.product(strides, [0, 1], [0, 1, 2]):
            structure = f"st{stride}_ind{indir}_d{dead}"
            for variant in ("vuln", "fenced", "safe"):
                c = tmp / f"{structure}_{variant}.c"
                c.write_text(victim_src(stride, indir, dead, variant))
                for (arch, comp), cmd in COMPILE.items():
                    if arch not in archs or comp not in compilers:
                        continue
                    for opt in opts:
                        s = tmp / f"{structure}_{variant}.{arch}.{comp}.{opt}.s"
                        r = subprocess.run(cmd + ["-S", f"-{opt}", "-o", str(s), str(c)],
                                           capture_output=True, text=True)
                        if r.returncode != 0:
                            failed += 1
                            continue
                        seq = [_GLOBALS.sub("<fn>", l) for l in extract_victim(str(s))]
                        if len(seq) < 3:
                            failed += 1
                            continue
                        h = hashlib.sha256((arch + "\n".join(seq)).encode()).hexdigest()
                        if h in seen:          # e.g. -O1 == -O2 for a structure
                            continue
                        seen.add(h)
                        recs.append({
                            "label": LABEL[variant], "sequence": seq, "arch": arch,
                            # one group per STRUCTURE: its vuln/fenced/safe twins,
                            # ISAs, compilers and opt levels share it
                            "group": f"v4fam_{structure}",
                            "source_file": f"gen/v4_family/v4fam_{structure}_{variant}.c",
                            "opt": opt, "compiler": comp, "v4_variant": variant,
                            "v4_stride": stride,
                            "provenance": "v4_family_construction",
                            "augmentation": "none",
                        })
    return recs, failed


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--split", choices=["train", "test"], default="train",
                    help=f"train: strides {TRAIN_STRIDES}; test: held-out strides {TEST_STRIDES}")
    ap.add_argument("--archs", nargs="+", default=["x86_64", "arm64"])
    ap.add_argument("--compilers", nargs="+", default=["clang"])
    ap.add_argument("--out", default=str(OUT))
    args = ap.parse_args()
    strides = TRAIN_STRIDES if args.split == "train" else TEST_STRIDES
    if args.split == "train" and "riscv64" in args.archs:
        raise SystemExit("riscv64 is the held-out ISA — never build it for training")
    recs, failed = build(args.archs, args.compilers, strides, OPTS)
    assert {r["v4_stride"] for r in recs} <= set(strides)
    out = Path(args.out)
    out.write_text("".join(json.dumps(r) + "\n" for r in recs))
    print(f"{args.split}: strides {strides} -> {len(recs)} records "
          f"({failed} compile/extract failures) -> {out}")
    print("by variant/label:", dict(Counter((r["v4_variant"], r["label"]) for r in recs)))
    print("by arch/compiler/opt:", dict(Counter((r["arch"], r["compiler"], r["opt"]) for r in recs)))


if __name__ == "__main__":
    main()
