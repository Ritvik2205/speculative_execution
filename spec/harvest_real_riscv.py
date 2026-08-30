#!/usr/bin/env python3
"""harvest_real_riscv.py — build a RISC-V validation set from real, published,
hardware-confirmed speculative-execution PoCs.

WHY. Our `riscv_corpus/` is a ~40-rule mnemonic transliteration of our own
x86/ARM corpus (`scripts/translate_riscv_inline_asm.py`), and
`eval/isa_independence_check.py` confirms it statistically: RISC-V sits closer
to arm64 than arm64 sits to x86_64 in 6 of 6 shared classes (sign test
p=0.016). So it cannot answer "does the classifier read RISC-V?" — it can only
answer "does the classifier read our own corpus, respelled." This harvests code
that was written FOR RISC-V, BY the people who demonstrated the attack ON RISC-V
silicon or RTL.

WHAT IS AND IS NOT A GADGET. The two upstream repos hold 25+ experiments between
them; only four are transient-execution gadgets. The rest are side-channel
primitives (Flush+Reload / Prime+Probe histograms, TLB eviction, timer drift,
page-walk timing) — real work, but they measure a covert channel rather than
implement a speculative leak, so they carry no vulnerability-class label.
`Security-RISC/spectre-v1/` is the trap: its NAME says spectre-v1, but it is an
instruction-PREFETCH histogram, and its own README says it runs on C906 and U74
— both in-order cores that Gerlach et al. (USENIX Sec 2026) tested and found NOT
vulnerable. Labeling it SPECTRE_V1 would put a non-gadget in the validation set
under the very class we have least evidence for. It is excluded, by name, below.

CURATED, NOT HEURISTIC. Four items is small enough that a hand-written manifest
carrying the reason for each label is more trustworthy — and far more auditable —
than a keyword rule. Every entry records its upstream file, the gadget function,
the class, the hardware the attack was confirmed on, and why that class.

TWO WINDOW TIERS, BECAUSE THE FUNCTION IS THE WRONG UNIT FOR V2/RSB. Reading the
compiled output made a labeling trap explicit. `indirBranchMispred`'s victimFunc
is `array2[array1[idx] * 64]` — a bare transmit gadget with NO indirect branch;
upstream's own docstring for it says "through the Spectre Variant 1 attack". Its
V2-ness lives in main's mistrained `jalr`. Likewise returnStackBuffer's specFunc
holds no RSB structure; the mechanism is in `frameDump` (stack.S), which pops the
frame and rewrites `ra` through a stalled FP divide so the `ret` mispredicts. So
at function granularity these windows do NOT contain what distinguishes their
class, and stamping them SPECTRE_V2 / SPECTRE_RSB would inject precisely the
noisy labels this project has spent its time removing. Instead:

  tier `gadget_function` — the transmit gadget alone, labeled only when the
      window itself carries the class's defining structure.
  tier `attack_unit`     — gadget + its mistraining site, which is where the
      class actually becomes visible.

STRUCTURAL VERIFICATION, NOT A LENGTH FLOOR. A length floor cannot catch the real
failure: at -O2 GCC deletes condBranchMispred's entire gadget (`dummy` is dead on
the next line) leaving a 14-instruction function that still *looks* substantial,
and deletes indirBranchMispred's victimFunc down to a bare `ret`. Both would ship
as attack-labeled records containing no attack — the same "compiler removed the
gadget, the label survived" contamination measured at 11.5% of `riscv_corpus`.
Every record here must therefore exhibit its class's defining structure, checked
via the spec's ISA-neutral canonical ops, and is DROPPED and reported otherwise.

NEVER TRAIN ON THIS. Output is `spec/data/riscv_real_validation.jsonl`, every
record stamped `"split": "validation_never_train"` and `"provenance": "real"`.
The point of it is to be the one RISC-V evidence untouched by our own corpus; a
single training run on it destroys that and cannot be undone by deleting a file.

Run:  python3 spec/harvest_real_riscv.py [--apply]
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from build_dataset import _neutralize, clean_seq  # noqa: E402

VENDOR = ROOT / "vendor_riscv"
STUBS = ROOT / "spec" / "riscv_stub_include"
OUT = ROOT / "spec" / "data" / "riscv_real_validation.jsonl"
CC = "riscv64-elf-gcc"
OPTS = ["O0", "O2"]

# ---------------------------------------------------------------------------
# The manifest. Four entries, each with the reason it carries its label.
# ---------------------------------------------------------------------------
# Structural requirements, expressed in the spec's ISA-neutral canonical ops.
# A record is only allowed to carry a class if its own window exhibits that
# class's defining structure. Counts are minimums.
CLASS_STRUCTURE = {
    # Mispredicted bounds check, secret-dependent load, cache-line-strided probe.
    "SPECTRE_V1":  {"BRANCH_COND": 1, "LOAD": 2, "SHL": 1},
    # Same transmit shape, but reached through a mistrained indirect branch.
    "SPECTRE_V2":  {"CALL_IND": 1, "LOAD": 2, "SHL": 1},
    # Same transmit shape, reached through a mispredicted return.
    "SPECTRE_RSB": {"RET": 1, "LOAD": 2, "SHL": 1},
}

# The RSB signature is an architectural WRITE to the return-address register: the
# attack rewrites `ra` so the ret goes somewhere the RSB did not predict. The spec
# carries no link-register concept, so this one predicate is necessarily an ISA
# literal. It is confined to verification of a 4-item curated manifest and never
# reaches the model pipeline, where ISA literals are the thing we are removing.
_RA_WRITE_RE = re.compile(r'^\s*(?:add|addi|mv|sub|ld|lui)\w*\s+ra\s*,', re.I)
EXTRA_CHECK = {
    "SPECTRE_RSB": (lambda seq: any(_RA_WRITE_RE.match(l) for l in seq),
                    "writes the return-address register (ra) — the RSB mistrain"),
}

# ---------------------------------------------------------------------------
# The manifest. Each entry names the gadget function and, where the class is only
# visible in a wider window, the mistraining site that must accompany it.
# ---------------------------------------------------------------------------
MANIFEST = [
    dict(
        key="boom_condBranchMispred",
        src="boom-attacks/src/condBranchMispred.c",
        incs=["boom-attacks/inc"],
        gadget_fn="victimFunc",
        gadget_label="SPECTRE_V1",
        trainer_fns=["main"],
        attack_label="SPECTRE_V1",
        confirmed_on="BOOM (SonicBOOM) RTL, Verilator/FPGA",
        why="Bounds-check bypass: `if (idx < array1_sz) dummy = "
            "array2[array1[idx] * L1_BLOCK_SZ_BYTES];`, with array1_sz stalled "
            "behind a chain of FP divides so the branch resolves late. The "
            "bounds check is inside the gadget function, so this one IS "
            "labelable at function granularity.",
    ),
    dict(
        key="boom_indirBranchMispred",
        src="boom-attacks/src/indirBranchMispred.c",
        incs=["boom-attacks/inc"],
        gadget_fn="victimFunc",
        gadget_label=None,   # bare transmit gadget: no branch, no indirect call
        trainer_fns=["main"],
        attack_label="SPECTRE_V2",
        confirmed_on="BOOM (SonicBOOM) RTL, Verilator/FPGA",
        why="BTB poisoning: main trains an indirect `jalr` to wantFunc then "
            "redirects it, so victimFunc runs transiently. victimFunc itself is "
            "only `array2[array1[idx] * 64]` — upstream's own comment calls it a "
            "Variant 1 body — so the V2 evidence (the mistrained jalr) exists "
            "only in the attack_unit window.",
    ),
    dict(
        key="boom_returnStackBuffer",
        src="boom-attacks/src/returnStackBuffer.c",
        incs=["boom-attacks/inc"],
        gadget_fn="specFunc",
        gadget_label=None,   # transmit gadget only; RSB mechanism is in stack.S
        trainer_asm=["boom-attacks/src/stack.S"],   # hand-written RISC-V asm
        attack_label="SPECTRE_RSB",
        confirmed_on="BOOM (SonicBOOM) RTL, Verilator/FPGA",
        why="frameDump (stack.S) pops the stack frame and rewrites `ra` through "
            "a stalled FP divide, so the `ret` resolves to an address the RSB "
            "did not predict and specFunc's probe of attackArray runs "
            "transiently. specFunc alone holds no RSB structure.",
    ),
    dict(
        key="cispa_spectre",
        src="Security-RISC/spectre/spectre.c",
        incs=["Security-RISC"],
        std="gnu17",
        gadget_fn="leak_byte",
        gadget_label="SPECTRE_V1",
        trainer_fns=["main"],
        attack_label="SPECTRE_V1",
        confirmed_on="T-Head Xuantie C910 — real commercial silicon",
        why="`if (idx >= 0 && idx < buf_size) { tmp = victim[idx]; return "
            "probe_array[tmp << 11]; }` — bounds-check bypass with an "
            "11-bit-strided probe. Upstream reports it leaking a real string on "
            "C910, an out-of-order core. Bounds check is in the function.",
    ),
]

# Present in the repos, deliberately NOT harvested, with the reason.
EXCLUDED = [
    ("Security-RISC/spectre-v1", "instruction-PREFETCH histogram, not a data-leak "
     "gadget; its README reports C906/U74 — in-order cores confirmed NOT "
     "vulnerable to Spectre variants (Gerlach et al., USENIX Sec 2026). The "
     "directory name is misleading."),
    ("Security-RISC/{flush_reload,prime_probe,fgprime_probe,evict_reload,"
     "flush_flush,iflush_reload,tlb_evict}_histogram", "side-channel primitives: "
     "they characterise a covert channel, not a speculative leak."),
    ("Security-RISC/{timer-drift,timer-evaluation,inst-cycles,interrupt-timing,"
     "access-retired,m-mode-instr-count,page-walk,fence-flush,flush-fault}",
     "microarchitectural measurement infrastructure, no attack gadget."),
    ("Security-RISC/{aes_example,square-multiply,mbedtls-key-leak,zigzagger}",
     "classical (non-speculative) crypto side channels — different threat model."),
    ("boom-attacks/src/syscalls.c, crt.S", "bare-metal runtime, not attack code."),
]

_FN_START = re.compile(r'^([A-Za-z_][A-Za-z0-9_.$]*):\s*$')
_DIRECTIVE = re.compile(r'^\s*\.')


def compile_asm(entry, opt, tmp: Path) -> Path | None:
    src = VENDOR / entry["src"]
    out = tmp / f'{entry["key"]}.{opt}.s'
    cmd = [CC, "-S", f"-{opt}", "-march=rv64gc", "-mabi=lp64d"]
    if entry.get("std"):
        cmd.append(f'-std={entry["std"]}')
    for i in entry["incs"]:
        cmd += ["-I", str(VENDOR / i)]
    cmd += ["-I", str(STUBS), "-o", str(out), str(src)]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        print(f"  COMPILE FAILED {entry['key']}.{opt}\n{r.stderr[:400]}")
        return None
    return out


def split_functions(path: Path) -> dict[str, list[str]]:
    """-> {function name: its instruction lines}. Assembler directives are
    dropped; a bare `name:` at column 0 opens a function."""
    funcs, cur = {}, None
    for raw in path.read_text(errors="ignore").splitlines():
        m = _FN_START.match(raw)
        if m:
            cur = m.group(1)
            funcs[cur] = []
            continue
        if cur is None or _DIRECTIVE.match(raw) or not raw.strip():
            continue
        if raw.strip().endswith(":"):      # local label inside the function
            continue
        funcs[cur].append(raw.rstrip())
    return funcs


def read_asm_file(path: Path) -> dict[str, list[str]]:
    """Parse a hand-written .S the same way as compiler output."""
    return split_functions(path)


def canon_counts(seq, engine):
    return Counter(engine.canonical_op(l) for l in seq)


def verify_structure(seq, label, engine):
    """-> (ok, explanation). The class's defining structure must be present in
    THIS window, or the record is dropped."""
    need = CLASS_STRUCTURE.get(label)
    if need is None:
        return False, f"no structural definition for {label}"
    got = canon_counts(seq, engine)
    missing = [f"{op}>={n} (got {got.get(op, 0)})"
               for op, n in need.items() if got.get(op, 0) < n]
    if missing:
        return False, "missing " + ", ".join(missing)
    extra = EXTRA_CHECK.get(label)
    if extra and not extra[0](seq):
        return False, f"missing {extra[1]}"
    return True, "ok"


def make_record(entry, label, seq, tier, opt, fn_desc):
    return {
        "label": label,
        "sequence": seq,
        "arch": "riscv64",
        "group": f'{entry["key"]}:{tier}',
        "source_file": entry["src"],
        "window_tier": tier,
        "window_contents": fn_desc,
        "opt": opt,
        "provenance": "real",
        "confirmed_on": entry["confirmed_on"],
        "label_rationale": entry["why"],
        "split": "validation_never_train",
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args()

    if not VENDOR.exists():
        print(f"missing {VENDOR} — clone riscv-boom/boom-attacks and "
              f"cispa/Security-RISC into it first")
        sys.exit(2)

    from isa_spec import load_engine
    engine = load_engine("riscv.json")

    tmp = Path(__file__).resolve().parent / ".harvest_tmp"
    tmp.mkdir(exist_ok=True)

    print("EXCLUDED from the harvest, and why:")
    for what, why in EXCLUDED:
        print(f"  - {what}\n      {why}")

    records, rejected = [], []
    print("\nharvesting (each record must exhibit its class's structure):")
    for entry in MANIFEST:
        for opt in OPTS:
            asm = compile_asm(entry, opt, tmp)
            if asm is None:
                continue
            funcs = split_functions(asm)
            gfn = entry["gadget_fn"]
            if gfn not in funcs:
                rejected.append((f'{entry["key"]}.{opt}', "gadget_function",
                                 entry.get("gadget_label") or entry["attack_label"],
                                 f"function {gfn} absent from output"))
                continue

            # ---- tier 1: the gadget function alone --------------------------
            gseq = clean_seq(_neutralize(funcs[gfn]))
            glabel = entry.get("gadget_label")
            tag = f'{entry["key"]}.{opt}'
            if glabel is None:
                rejected.append((tag, "gadget_function", "(none)",
                                 "window carries no class-distinguishing "
                                 "structure — labelable only as attack_unit"))
            elif len(gseq) < args.min_instructions:
                rejected.append((tag, "gadget_function", glabel,
                                 f"only {len(gseq)} instructions"))
            else:
                ok, why = verify_structure(gseq, glabel, engine)
                if ok:
                    records.append(make_record(entry, glabel, gseq,
                                               "gadget_function", opt, gfn))
                    print(f"  KEEP  {glabel:12s} {tag:28s} gadget_function "
                          f"{len(gseq):4d} instrs")
                else:
                    rejected.append((tag, "gadget_function", glabel, why))

            # ---- tier 2: gadget + its mistraining site ----------------------
            parts, desc = list(funcs[gfn]), [gfn]
            for tfn in entry.get("trainer_fns", []):
                if tfn in funcs:
                    parts += funcs[tfn]
                    desc.append(tfn)
            for apath in entry.get("trainer_asm", []):
                afuncs = read_asm_file(VENDOR / apath)
                for name, body in afuncs.items():
                    parts += body
                    desc.append(f"{name}({Path(apath).name})")
            if len(desc) == 1:
                continue
            aseq = clean_seq(_neutralize(parts))
            alabel = entry["attack_label"]
            ok, why = verify_structure(aseq, alabel, engine)
            if ok:
                records.append(make_record(entry, alabel, aseq, "attack_unit",
                                           opt, "+".join(desc)))
                print(f"  KEEP  {alabel:12s} {tag:28s} attack_unit     "
                      f"{len(aseq):4d} instrs  [{'+'.join(desc)}]")
            else:
                rejected.append((tag, "attack_unit", alabel, why))

    if rejected:
        print("\nREJECTED (kept out of the set, with the reason):")
        for tag, tier, lab, why in rejected:
            print(f"  {tag:30s} {tier:16s} {lab:12s} {why}")

    print(f"\nrecords: {len(records)}   "
          f"classes: {dict(Counter(r['label'] for r in records))}")
    print(f"independent upstream gadgets: "
          f"{len({r['source_file'] for r in records})}   "
          f"groups: {len({r['group'] for r in records})}")

    # Leakage guard. The value of this set is that it is untouched, so check
    # rather than assume.
    train = ROOT / "v54" / "data" / "v54_train.jsonl"
    if train.exists():
        th = {hashlib.sha256("\n".join(json.loads(l)["sequence"]).encode()).hexdigest()
              for l in open(train) if l.strip()}
        dup = [r["group"] for r in records
               if hashlib.sha256("\n".join(r["sequence"]).encode()).hexdigest() in th]
        print(f"overlap with v54_train: {len(dup)} " + (f"-> {dup}" if dup else "(clean)"))

    CLASSTOK = ("bhi", "retbleed", "mds", "l1tf", "inception", "spectre",
                "meltdown", "rsb", "ssb", "victim", "secret", "gadget", "leak")
    leaks = Counter()
    for r in records:
        for line in r["sequence"]:
            for tok in re.split(r'[^A-Za-z0-9]+', line.lower()):
                if tok in CLASSTOK:
                    leaks[tok] += 1
    print(f"class-naming tokens surviving neutralization: "
          f"{dict(leaks) if leaks else '(none)'}")
    if leaks:
        print("  ABORT-WORTHY: a token names its own class. Fix _neutralize first.")
        sys.exit(3)

    if args.apply:
        OUT.parent.mkdir(parents=True, exist_ok=True)
        with OUT.open("w") as f:
            for r in records:
                f.write(json.dumps(r) + "\n")
        print(f"\nwrote {OUT}")
        print("NEVER train on this file — it is the only RISC-V evidence we have "
              "that is independent of our own corpus.")
    else:
        print("\ndry run — pass --apply to write")


if __name__ == "__main__":
    main()
