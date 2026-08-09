#!/usr/bin/env python3
"""
_export_base.py — generate the decomposed SpecDiscover ISA specifications (B1).

Phase 0 exported ONE merged x86+ARM pattern set into base.json and validated it
against the builder it came from (a refactor round-trip). The external-oracle
findings (spec/PHASE0_EXTERNAL_FINDINGS.md) showed that merge causes real bugs:
(1) missing mnemonics drop speculation sources to OTHER (x86 jge/jle/jae/jbe,
ARM blr, tab-separated `b`), and (2) cross-ISA contamination (x86 %bl/%bpl match
ARM branch mnemonics).

B1 fixes both by DECOMPOSING the grammar:
  * base.json keeps the ISA-agnostic scaffolding (enums, rule *shapes* that
    reference NEUTRAL pattern names, register/addressing config, pipeline
    defaults) and a UNION pattern set used only for arch="unknown" fallback and
    the tokenizer's register recognition.
  * x86_64.json / arm64.json OVERRIDE every neutral pattern name with an
    ISA-ONLY regex (so an x86 engine never sees ARM mnemonics and vice-versa),
    and incorporate the mnemonic fixes above.

Because this changes node categories, it intentionally BREAKS the 0-drift
equivalence with the old builder; correctness is now judged by validate_external
(independent oracle), and models are retrained on the spec-built graphs.

Run:  python3 spec/_export_base.py
"""

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))

import pdg_builder as pb  # noqa: E402

SPEC_DIR = ROOT / "spec"

# Neutral pattern names the rules reference; every ISA spec must define all.
NEUTRAL_NAMES = [
    "load", "store", "branch_cond", "branch_uncond", "call", "ret",
    "indirect", "indirect_jump_op", "compare", "arithmetic", "logic", "shift",
    "fence", "cache", "timing", "move", "stack_op", "stack_access",
    "indexed_access", "memory_operand", "reg",
]

# ---- UNION patterns (base: unknown-arch fallback + tokenizer reg) ----------
# Preserve the original merged behavior for the fallback engine.
UNION = {
    "load": r"\b(ldr[bhsdq]?|ldp|ldur[bhsdq]?|ldrs[bhw]|ldax?r?|ldnp|ldtr|ldx[pr]?|mov[qldwb]?|movzx|movsx|movabs|lods[bwdq]?|pop[qldw]?|lea)\b",
    "store": r"\b(str[bhsdq]?|stp|stur[bhsdq]?|stlr|stxr|stnp|sttr|mov[qldwb]?|movnti|stos[bwdq]?|push[qldw]?)\b",
    "branch_cond": r"\b(b\.(eq|ne|lt|le|gt|ge|hs|lo|hi|ls|mi|pl|vs|vc|al|cs|cc)|beq|bne|blt|ble|bgt|bge|bhs|blo|bhi|bls|bmi|bpl|bcs|bcc|cbz|cbnz|tbz|tbnz|j(e|ne|z|nz|g|ge|l|le|a|ae|b|be|o|no|c|nc|s|ns|p|np|cxz|ecxz|rcxz))\b",
    "branch_uncond": r"(^|\s)b(\s|$)|\b(jmp|jmpq)\b",
    "call": r"\b(bl|blr|call|callq)\b",
    "ret": r"\b(ret|retq|retw|retl)\b",
    "indirect": r"\b(br|blr)\b|\b(jmpq?|callq?)\s*\*|\[x[0-9]+\]",
    "indirect_jump_op": r"\b(jmpq?|br)\b",
    "compare": r"\b(cmp|cmn|test|tst|ccmp|ccmn|fcmp)\b",
    "arithmetic": r"\b(add|sub|mul|div|udiv|sdiv|madd|msub|neg|adc|sbc|inc|dec|imul|idiv)\b",
    "logic": r"\b(and|orr|eor|orn|bic|not|xor|or)\b",
    "shift": r"\b(lsl|lsr|asr|ror|shl|shr|sar|rol|sal)\b",
    "fence": r"\b(lfence|mfence|sfence|dsb|dmb|isb|csdb|cpuid)\b",
    "cache": r"\b(clflush|clflushopt|clwb|cldemote|prefetcht[012]|prefetchnta|prefetchw|prfm|dc\s+(civac|cvac|cvau|zva|ivac)|invlpg|wbinvd)\b",
    "timing": r"\b(rdtsc|rdtscp|rdpmc|mrs\s+.*cntvct|mrs\s+.*pmccntr)\b",
    "move": r"\b(mov[zskn]?)\b",
    "stack_op": r"\b(push|pop)\b",
    "stack_access": r"\[sp|\[x29|\[fp|%[re]?sp|%[re]?bp|\[%[re]?[sb]p\]",
    "indexed_access": r"\[.*,.*,.*\]|\[.*\+.*\*.*\]|,\s*lsl\s+#|\[x[0-9]+,\s*x[0-9]+|\([^)]*,[^)]*\)",
    "memory_operand": r"\[|\(.*%",
    "reg": r"\b([xwbhsdq][0-9]+|sp|lr|fp|pc|xzr|wzr)\b|%([re]?[abcd]x|[re]?[sd]i|[re]?[sb]p|r[0-9]+[dwb]?)",
}

# ---- x86-only patterns (contamination-free; jcc + fixes) -------------------
X86 = {
    "load": r"\b(mov[qldwb]?|movzx|movsx|movabs|lods[bwdq]?|pop[qldw]?|lea)\b",
    "store": r"\b(mov[qldwb]?|movnti|stos[bwdq]?|push[qldw]?)\b",
    # FIX: add two-char condition codes jge/jle/jae/jbe (were dropped to OTHER).
    "branch_cond": r"\b(j(e|ne|z|nz|g|ge|l|le|a|ae|b|be|o|no|c|nc|s|ns|p|np|cxz|ecxz|rcxz))\b",
    "branch_uncond": r"\b(jmp|jmpq)\b",
    "call": r"\b(call|callq)\b",          # FIX: no `bl` -> no %bl contamination
    "ret": r"\b(ret|retq|retl)\b",
    "indirect": r"\b(jmpq?|callq?)\s*\*",
    "indirect_jump_op": r"\b(jmpq?)\b",
    "compare": r"\b(cmp|test)\b",
    "arithmetic": r"\b(add|sub|mul|div|inc|dec|imul|idiv|adc|sbc|neg)\b",
    "logic": r"\b(and|or|xor|not)\b",
    "shift": r"\b(shl|shr|sar|sal|rol|ror)\b",
    "fence": r"\b(lfence|mfence|sfence|cpuid)\b",
    "cache": r"\b(clflush|clflushopt|clwb|cldemote|prefetcht[012]|prefetchnta|prefetchw|invlpg|wbinvd)\b",
    "timing": r"\b(rdtsc|rdtscp|rdpmc)\b",
    "move": r"\b(mov[zskn]?)\b",
    "stack_op": r"\b(push|pop)\b",
    "stack_access": r"%[re]?sp|%[re]?bp|\[%[re]?[sb]p\]",
    "indexed_access": r"\([^)]*,[^)]*\)",
    "memory_operand": r"\(.*%|\(%",
    "reg": r"%([re]?[abcd]x|[re]?[sd]i|[re]?[sb]p|r[0-9]+[dwb]?)",
}

# ---- ARM-only patterns (blr indirect call + bare-b uncond fixes) -----------
ARM = {
    "load": r"\b(ldr[bhsdq]?|ldp|ldur[bhsdq]?|ldrs[bhw]|ldax?r?|ldnp|ldtr|ldx[pr]?)\b",
    "store": r"\b(str[bhsdq]?|stp|stur[bhsdq]?|stlr|stxr|stnp|sttr)\b",
    "branch_cond": r"\b(b\.(eq|ne|lt|le|gt|ge|hs|lo|hi|ls|mi|pl|vs|vc|al|cs|cc)|beq|bne|blt|ble|bgt|bge|bhs|blo|bhi|bls|bmi|bpl|bcs|bcc|cbz|cbnz|tbz|tbnz)\b",
    # FIX: bare `b <target>` incl. tab separator (was missed by trailing \b).
    "branch_uncond": r"(^|\s)b(\s|$)",
    "call": r"\b(bl|blr)\b",              # FIX: blr = indirect call (was OTHER)
    "ret": r"\b(ret)\b",
    "indirect": r"\b(br|blr)\b|\[x[0-9]+\]",
    "indirect_jump_op": r"\b(br)\b",
    "compare": r"\b(cmp|cmn|tst|ccmp|ccmn|fcmp)\b",
    "arithmetic": r"\b(add|sub|mul|udiv|sdiv|madd|msub|neg|adc|sbc)\b",
    "logic": r"\b(and|orr|eor|orn|bic|not)\b",
    "shift": r"\b(lsl|lsr|asr|ror)\b",
    "fence": r"\b(dsb|dmb|isb|csdb)\b",
    "cache": r"\b(prfm|dc\s+(civac|cvac|cvau|zva|ivac))\b",
    "timing": r"\b(mrs\s+.*cntvct|mrs\s+.*pmccntr)\b",
    "move": r"\b(mov[zskn]?)\b",
    "stack_op": r"\b(push|pop)\b",       # arm has none; harmless never-match here
    "stack_access": r"\[sp|\[x29|\[fp",
    "indexed_access": r"\[x[0-9]+,\s*x[0-9]+|\[.*,.*,.*\]|,\s*lsl\s+#",
    "memory_operand": r"\[",
    "reg": r"\b([xwbhsdq][0-9]+|sp|lr|fp|pc|xzr|wzr)\b",
}


def classify_rules():
    # Rule SHAPES only; they reference NEUTRAL pattern names resolved per ISA.
    return [
        {"kind": "simple", "pat": "fence", "cat": "FENCE"},
        {"kind": "simple", "pat": "cache", "cat": "CACHE"},
        {"kind": "simple", "pat": "timing", "cat": "TIMING"},
        {"kind": "simple", "pat": "ret", "cat": "RET"},
        {"kind": "call_split", "pat": "call", "direct": "CALL", "indirect": "CALL_INDIRECT"},
        {"kind": "indirect_jump", "pat": "indirect_jump_op", "cat": "JUMP_INDIRECT"},
        {"kind": "simple", "pat": "branch_cond", "cat": "BRANCH_COND"},
        {"kind": "simple", "pat": "branch_uncond", "cat": "BRANCH_UNCOND"},
        {"kind": "simple", "pat": "compare", "cat": "COMPARE"},
        {"kind": "simple", "pat": "stack_op", "cat": "STACK"},
        {"kind": "mem_store", "store_pats": ["store"],
         "stack_token": "push", "cat": "STORE", "stack_cat": "STACK"},
        {"kind": "mem_load", "load_pats": ["load"],
         "stack_token": "pop", "cat": "LOAD", "stack_cat": "STACK"},
        {"kind": "simple", "pat": "move", "cat": "MOVE"},
        {"kind": "simple", "pat": "arithmetic", "cat": "ARITHMETIC"},
        {"kind": "simple", "pat": "logic", "cat": "LOGIC"},
        {"kind": "simple", "pat": "shift", "cat": "SHIFT"},
        {"kind": "contains", "token": "nop", "cat": "NOP"},
    ]


def spec_flag_rules():
    return [
        {"when_cat_in": ["FENCE"], "or_contains": "cpuid", "set": "is_serializing"},
        {"when_cat_in": ["CACHE"], "set": "is_cache_probe"},
        {"when_cat_in": ["BRANCH_COND", "BRANCH_UNCOND", "CALL", "CALL_INDIRECT",
                         "JUMP_INDIRECT", "RET"], "set": "is_branch"},
        {"when_cat_in": ["CALL_INDIRECT", "JUMP_INDIRECT"], "set": "is_indirect_branch"},
        {"when_cat_in": ["LOAD", "STORE", "STACK"], "set": "is_memory_access"},
        {"when_cat_in": ["TIMING"], "set": "is_timing_source"},
        {"when_cat_in": ["LOAD"], "when_mem_in": ["INDEXED"], "set": "is_secret_source"},
        {"when_cat_in": ["LOAD"], "when_mem_in": ["INDEXED", "INDIRECT"], "set": "is_transmitter"},
        {"opcode_in": ["lfence"], "set": "is_lfence"},
        {"opcode_regex": r"^(mfence|sfence|dsb|dmb|isb)", "set": "is_mfence_or_sfence"},
        {"opcode_in": ["verw"], "set": "is_verw"},
        {"opcode_regex": r"^(prefetch|prfm)", "set": "is_prefetch"},
        {"opcode_in": ["movntdqa"], "set": "is_nontemp_load"},
        {"opcode_regex": r"^v[pg]?gather", "set": "is_gather"},
    ]


ADDRESSING = {
    "imm": r"(^|[\s,(\[])[#$]?-?(0x[0-9a-fA-F]+|\d+)\b",
    "fn": r"<fn>",
    "mem": r"[\(\[][^\)\]]*[\)\]]",
    "mem_idx": r"[\(\[][^\)\]]*,[^\)\]]*[\)\]]",
}


def main():
    base = {
        "name": "base",
        "provenance": "B1: ISA-agnostic scaffolding + UNION fallback patterns; "
                      "per-ISA grammars in x86_64.json / arm64.json. Neutral pattern "
                      "names resolved per ISA. Correctness judged by validate_external.",
        "opcode_categories": dict(pb.OPCODE_CATEGORIES),
        "mem_access_types": dict(pb.MEM_ACCESS_TYPES),
        "spec_flags": dict(pb.SPEC_FLAGS),
        "edge_types": dict(pb.EDGE_TYPES),
        "patterns": UNION,
        "classify_rules": classify_rules(),
        "default_category": "OTHER",
        "mem_access_rules": [
            {"pat": "stack_access", "type": "STACK"},
            {"pat": "indexed_access", "type": "INDEXED"},
            {"pat": "indirect", "type": "INDIRECT"},
        ],
        "default_mem_type": "HEAP",
        "spec_flag_rules": spec_flag_rules(),
        "register_extraction": {
            "patterns": ["reg"],
            "all_source_categories": ["STORE", "COMPARE", "BRANCH_COND",
                                      "BRANCH_UNCOND", "CALL", "CALL_INDIRECT"],
        },
        "addressing": ADDRESSING,
        "pipeline": {"speculative_window": 10, "cache_window": 20,
                     "rsb_pair_window": int(getattr(pb, "RSB_PAIR_WINDOW", 15))},
    }
    (SPEC_DIR / "base.json").write_text(json.dumps(base, indent=2))
    print(f"wrote base.json  (neutral names={len(NEUTRAL_NAMES)}, union patterns={len(UNION)})")

    # Inject ISA-only pattern blocks into the per-ISA files, preserving their
    # arch / realize / pipeline / extends.
    for fname, pats in (("x86_64.json", X86), ("arm64.json", ARM)):
        path = SPEC_DIR / fname
        doc = json.loads(path.read_text())
        assert set(pats) == set(NEUTRAL_NAMES), f"{fname}: pattern names must match neutral set"
        doc["patterns"] = pats
        doc["provenance"] = "B1: ISA-only grammar overriding base UNION; " \
                            "contamination-free + mnemonic fixes (blr/jcc/bare-b)."
        path.write_text(json.dumps(doc, indent=2))
        print(f"wrote {fname}  (isa-only patterns={len(pats)})")


if __name__ == "__main__":
    main()
