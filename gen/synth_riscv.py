#!/usr/bin/env python3
"""synth_riscv.py — generate a RISC-V validation corpus at volume, the honest way.

WHY NOT THE ML GENERATOR. gen/generator.pt is trained on x86_64+arm64 only
(model.vocab.arch_id has no riscv), and even on the ISAs it knows its per-sequence
syntactic validity is 1.1% (gen/SYNTACTIC_FAILURE_CATEGORIZATION.md). It cannot
produce RISC-V at all, let alone valid RISC-V. So RISC-V volume comes from
templates, exactly as the plan called for.

WHY C TEMPLATES, NOT ASM TEMPLATES. Register-renaming an asm exemplar produces a
transliteration of itself — precisely what eval/isa_independence_check.py exists to
reject. Instead we parameterize the gadget at the C level and let a real RISC-V
compiler generate the assembly. Diversity is then compiler-driven and idiomatic by
construction: different optimization levels, register allocations, instruction
selection and scheduling, from source knobs (array size, probe stride, stall
depth, filler, benign arithmetic).

WHAT IT WILL AND WILL NOT LABEL. Only the two classes with a hardware-confirmed
real exemplar: SPECTRE_V1 (bounds-check bypass, condBranchMispred / cispa spectre)
and SPECTRE_V2 (BTB poisoning, indirBranchMispred). SPECTRE_RSB is deliberately
absent: its only real RISC-V exemplar (returnStackBuffer) is listed by its own
authors as "not working yet", so there is no demonstrated leak to imitate and no
honest label to assign. Generating volume for a class with no ground truth would
manufacture confidence, not evidence.

EVERY SAMPLE IS TRIPLE-GATED before it is kept:
  1. it must assemble  (riscv64-elf-gcc -c, a real assembler)
  2. its window must exhibit the class's defining structure in canonical ops
     (reuses harvest_real_riscv.verify_structure — the -O2 gadget-deletion guard)
  3. deduplicated by neutralized-sequence hash, and checked for zero overlap with
     BOTH the real validation set and v54_train.

The whole batch is then meant to be run through eval/isa_independence_check.py; if
it shows the transliteration signature the templates are too rigid and must be
loosened before the corpus is used.

NEVER TRAIN ON THE OUTPUT UNSCREENED. It is stamped provenance=synthetic and
split=validation_never_train. It is a TEST corpus: template-generated samples share
a generative process, so their effective independent-sample count is far below
their record count (this is why the real set, though tiny, remains the anchor).

Run:  python3 gen/synth_riscv.py --apply [--per-class-cap 250]
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

from isa_spec import load_engine                              # noqa: E402
from build_dataset import _neutralize, clean_seq              # noqa: E402
from harvest_real_riscv import (split_functions,              # noqa: E402
                                verify_structure, CLASS_STRUCTURE)

STUBS = ROOT / "spec" / "riscv_stub_include"
OUT = ROOT / "spec" / "data" / "riscv_synth_validation.jsonl"
CC = "riscv64-elf-gcc"
OPTS = ["O0", "O1", "O2", "Os"]
ENGINE = load_engine("riscv.json")

# The FP-divide stall from the real condBranchMispred gadget: it delays the
# bounds variable so the branch resolves late, widening the speculation window.
# Kept verbatim so generated gadgets stall the way the real one does.
STALL = r'''  asm volatile(
    "fcvt.s.lu fa4, %[a]\n fcvt.s.lu fa5, %[b]\n"
{divs}
    "fcvt.lu.s %[o], fa5, rtz\n"
    : [o] "=r"(bound) : [a] "r"(two), [b] "r"(bound) : "fa4","fa5");'''


def _stall(depth: int) -> str:
    return STALL.format(divs="".join('    "fdiv.s fa5, fa5, fa4\\n"\n'
                                     for _ in range(depth)))


def v1_source(*, arr_sz, stride_bits, secret, stall_depth, pad_nops, extra):
    """Bounds-check-bypass gadget. gadget fn = spec_read, trainer = main."""
    nops = "".join('  asm volatile("nop");\n' for _ in range(pad_nops))
    junk = "".join(f'  bound += {i}; bound -= {i};\n' for i in range(1, extra + 1))
    return f'''#include <stdint.h>
#include <stdio.h>
uint8_t pub[{arr_sz}];
uint8_t probe[256 << {stride_bits}];
uint8_t secret = {secret};
uint64_t bound = {arr_sz};
uint8_t sink;
void spec_read(uint64_t idx) {{
  uint64_t two = 2;
{_stall(stall_depth)}
{nops}  if (idx < bound) {{
    sink = probe[pub[idx] << {stride_bits}];
  }}
}}
int main(void) {{
  for (int i = 0; i < 1000; i++) {{
{junk}    spec_read(i % {arr_sz});
  }}
  spec_read((uint64_t)(&secret - pub));
  printf("%d\\n", sink);
  return 0;
}}
'''


def v2_source(*, arr_sz, stride_bits, secret, pad_nops, extra):
    """BTB-poisoning gadget. gadget fn = victim, trainer = main (mistrained fp)."""
    nops = "".join('  asm volatile("nop");\n' for _ in range(pad_nops))
    junk = "".join(f'  k ^= {i};\n' for i in range(1, extra + 1))
    return f'''#include <stdint.h>
#include <stdio.h>
uint8_t pub[{arr_sz}];
uint8_t probe[256 << {stride_bits}];
uint8_t secret = {secret};
uint8_t sink;
typedef void (*fp)(uint64_t);
void want(uint64_t x) {{ sink = (uint8_t)x; }}
void victim(uint64_t idx) {{
{nops}  sink = probe[pub[idx] << {stride_bits}];
}}
int main(void) {{
  fp p = want;
  uint64_t k = 0;
  for (int i = 0; i < 1000; i++) {{
{junk}    p = (i % 8 == 7) ? victim : want;
    p(i & 0xff);
  }}
  p = victim;
  p((uint64_t)(&secret - pub));
  printf("%d %lu\\n", sink, k);
  return 0;
}}
'''


TEMPLATES = {
    "SPECTRE_V1": dict(
        gen=v1_source, gadget_fn="spec_read", trainer_fns=["main"],
        grid=[dict(arr_sz=a, stride_bits=s, secret=sec, stall_depth=d,
                   pad_nops=p, extra=e)
              for a in (8, 16, 32, 64)
              for s in (6, 9, 11)
              for sec in (42, 170)
              for d in (2, 4, 6)
              for p in (0, 2)
              for e in (0, 2)]),
    "SPECTRE_V2": dict(
        gen=v2_source, gadget_fn="victim", trainer_fns=["main"],
        grid=[dict(arr_sz=a, stride_bits=s, secret=sec, pad_nops=p, extra=e)
              for a in (8, 16, 32, 64)
              for s in (6, 9, 11)
              for sec in (42, 170)
              for p in (0, 1, 2, 3)
              for e in (0, 1, 2)]),
}


def compile_variant(src_text: str, opt: str, tmp: Path, tag: str):
    c = tmp / f"{tag}.c"
    s = tmp / f"{tag}.{opt}.s"
    c.write_text(src_text)
    r = subprocess.run(
        [CC, "-S", f"-{opt}", "-std=gnu17", "-march=rv64gc", "-mabi=lp64d",
         "-I", str(STUBS), "-o", str(s), str(c)],
        capture_output=True, text=True)
    if r.returncode != 0:
        return None, r.stderr[:200]
    # gate 1: it must actually assemble, not merely compile to text
    a = subprocess.run(
        [CC, "-c", "-march=rv64gc", "-mabi=lp64d", str(s), "-o", str(tmp / "o.o")],
        capture_output=True, text=True)
    if a.returncode != 0:
        return None, "assembler rejected: " + a.stderr[:160]
    return s, None


def window(funcs, names):
    seq = []
    for n in names:
        seq += funcs.get(n, [])
    return clean_seq(_neutralize(seq))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--per-class-cap", type=int, default=250)
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args()

    tmp = Path(__file__).resolve().parent / ".synth_riscv_tmp"
    tmp.mkdir(exist_ok=True)

    # sequences we must never reproduce
    seen = set()
    for f in [ROOT / "spec" / "data" / "riscv_real_validation.jsonl",
              ROOT / "v54" / "data" / "v54_train.jsonl"]:
        if f.exists():
            for l in open(f):
                if l.strip():
                    seen.add(hashlib.sha256(
                        "\n".join(json.loads(l)["sequence"]).encode()).hexdigest())
    print(f"forbidden sequences (real set + v54_train): {len(seen)}")

    records = []
    stats = Counter()
    for cls, spec in TEMPLATES.items():
        kept_cls = 0
        for gi, knobs in enumerate(spec["grid"]):
            if kept_cls >= args.per_class_cap:
                break
            src = spec["gen"](**knobs)
            for opt in OPTS:
                if kept_cls >= args.per_class_cap:
                    break
                tag = f"{cls}_{gi}"
                asm, err = compile_variant(src, opt, tmp, tag)
                stats[f"{cls}:compiled" if asm else f"{cls}:compile_fail"] += 1
                if asm is None:
                    continue
                funcs = split_functions(asm)
                for tier, names in (("gadget_function", [spec["gadget_fn"]]),
                                    ("attack_unit",
                                     [spec["gadget_fn"]] + spec["trainer_fns"])):
                    seq = window(funcs, names)
                    if len(seq) < args.min_instructions:
                        continue
                    ok, why = verify_structure(seq, cls, ENGINE)
                    if not ok:
                        stats[f"{cls}:{tier}:struct_fail"] += 1
                        continue
                    h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                    if h in seen:
                        stats[f"{cls}:{tier}:dup"] += 1
                        continue
                    seen.add(h)
                    kept_cls += 1
                    records.append({
                        "label": cls, "sequence": seq, "arch": "riscv64",
                        "group": f"synth_{tag}", "window_tier": tier, "opt": opt,
                        "knobs": knobs, "provenance": "synthetic",
                        "split": "validation_never_train",
                    })
                    stats[f"{cls}:kept"] += 1

    print("\nper-class kept:",
          {c: stats[f"{c}:kept"] for c in TEMPLATES})
    print("compile:",
          {c: (stats[f"{c}:compiled"], stats[f"{c}:compile_fail"]) for c in TEMPLATES})
    print("structural rejects:",
          {k: v for k, v in stats.items() if "struct_fail" in k})
    print("dedup collisions:",
          {k: v for k, v in stats.items() if k.endswith(":dup")})

    # honest independence-of-samples note
    n_knobsets = sum(len(t["grid"]) for t in TEMPLATES.values())
    print(f"\nrecords: {len(records)}  from {n_knobsets} knob-sets x {len(OPTS)} "
          f"opt levels x 2 tiers — these are NOT independent samples")
    print("class mix:", dict(Counter(r["label"] for r in records)))

    # class-naming leak guard (same as the harvester)
    import re
    CT = ("bhi", "retbleed", "mds", "l1tf", "inception", "spectre", "meltdown",
          "rsb", "ssb", "victim", "secret", "gadget", "leak")
    leaks = Counter(tok for r in records for line in r["sequence"]
                    for tok in re.split(r'[^A-Za-z0-9]+', line.lower()) if tok in CT)
    print("class-naming tokens surviving neutralization:",
          dict(leaks) if leaks else "(none)")
    if leaks:
        print("  ABORT: a token names its class"); sys.exit(3)

    if args.apply:
        OUT.parent.mkdir(parents=True, exist_ok=True)
        with OUT.open("w") as f:
            for r in records:
                f.write(json.dumps(r) + "\n")
        print(f"\nwrote {OUT}")
        print("Next: gate it —\n"
              "  python3 eval/isa_independence_check.py "
              "--riscv-jsonl spec/data/riscv_synth_validation.jsonl")
    else:
        print("\ndry run — pass --apply to write")


if __name__ == "__main__":
    main()
