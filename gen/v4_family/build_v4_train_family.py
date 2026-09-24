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

Out: gen/v4_family/out/v4_train_family_records.jsonl
Run: python3 gen/v4_family/build_v4_train_family.py
"""
from __future__ import annotations

import hashlib
import itertools
import json
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
TRIPLE = {"x86_64": "x86_64-linux-gnu", "arm64": "aarch64-linux-gnu"}
OPTS = ("O0", "O1", "O2")
HEADER = (
    "#include <stdint.h>\n"
    "#if defined(__x86_64__)\n"
    "  #define SPEC_FENCE() __asm__ __volatile__(\"lfence\" ::: \"memory\")\n"
    "#elif defined(__aarch64__)\n"
    "  #define SPEC_FENCE() __asm__ __volatile__(\"dsb sy\\n\\tisb\" ::: \"memory\")\n"
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


def main():
    recs, seen, failed = [], set(), 0
    with tempfile.TemporaryDirectory() as tmp:
        tmp = Path(tmp)
        for stride, indir, dead in itertools.product([9, 10, 11, 12], [0, 1], [0, 1, 2]):
            structure = f"st{stride}_ind{indir}_d{dead}"
            for variant in ("vuln", "fenced", "safe"):
                c = tmp / f"{structure}_{variant}.c"
                c.write_text(victim_src(stride, indir, dead, variant))
                for arch, triple in TRIPLE.items():
                    for opt in OPTS:
                        s = tmp / f"{structure}_{variant}.{arch}.{opt}.s"
                        r = subprocess.run(["clang", "-S", f"-{opt}", f"--target={triple}",
                                            "-o", str(s), str(c)], capture_output=True, text=True)
                        if r.returncode != 0:
                            failed += 1
                            continue
                        seq = extract_victim(str(s))
                        if len(seq) < 3:
                            failed += 1
                            continue
                        h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                        if h in seen:          # e.g. -O1 == -O2 for a structure
                            continue
                        seen.add(h)
                        recs.append({
                            "label": LABEL[variant], "sequence": seq, "arch": arch,
                            # one group per STRUCTURE: its vuln/fenced/safe twins,
                            # ISAs and opt levels stay on one side of any split
                            "group": f"v4fam_{structure}",
                            "source_file": f"gen/v4_family/v4fam_{structure}_{variant}.c",
                            "opt": opt, "v4_variant": variant,
                            "provenance": "v4_family_construction",
                            "augmentation": "none",
                        })
    OUT.write_text("".join(json.dumps(r) + "\n" for r in recs))
    print(f"{len(recs)} records ({failed} compile/extract failures) -> {OUT.relative_to(ROOT)}")
    print("by variant/label:", dict(Counter((r["v4_variant"], r["label"]) for r in recs)))
    print("by arch/opt:", dict(Counter((r["arch"], r["opt"]) for r in recs)))


if __name__ == "__main__":
    main()
