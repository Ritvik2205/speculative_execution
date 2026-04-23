#!/usr/bin/env python3
"""
Phase 5: Use the Claude API to generate diverse C function variants for
under-represented vulnerability classes (SPECTRE_V2, SPECTRE_V4).

Each generated function is compiled to assembly and validated:
  - Compiles successfully
  - Assembly length 5-200 instructions
  - Contains class-specific opcode signature
  - No collision with frozen test set

Requires: pip install anthropic
          ANTHROPIC_API_KEY environment variable
"""
import os, sys, subprocess, tempfile, json, re
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

OUT_PATH = ROOT / "data" / "enrichment" / "phase5_synthetic.jsonl"

# Number of LLM prompt batches per class
N_PROMPTS_PER_CLASS = 40  # each returns ~5 functions

WINDOW_BEFORE, WINDOW_AFTER, STEP = 8, 12, 4

C_PREAMBLE = """
#include <stdint.h>
#include <stddef.h>
#include <string.h>
typedef unsigned long u64;
typedef unsigned int  u32;
typedef unsigned char u8;
#define likely(x)   __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)
#define barrier()   __asm__ __volatile__("": : :"memory")
#define ACCESS_ONCE(x) (*(volatile typeof(x) *)&(x))
#define READ_ONCE(x)   (*(volatile typeof(x) *)&(x))
extern uint8_t secret_array[];
extern size_t array1_size;
extern uint8_t array2[];
extern void (*dispatch_table[])(void);
extern uint8_t array1[];
"""

CLASS_SPECS = {
    "SPECTRE_V2": {
        "description": "Spectre Variant 2 (Branch Target Injection)",
        "gadget_pattern": (
            "indirect branch via function pointer or computed jump that can be "
            "speculatively redirected to a gadget performing secret-dependent memory access"
        ),
        "asm_validator": lambda instrs: any(
            "br " in l.lower() or "jmp *" in l.lower() or
            "call *" in l.lower() or "blr " in l.lower()
            for l in instrs
        ),
        "hints": [
            "function pointer dispatch table", "virtual method via vtable pointer",
            "callback registry", "computed goto table",
            "signal handler dispatch", "plugin loader function pointer",
            "indirect call through struct member", "array of function pointers indexed by user input",
        ],
    },
    "SPECTRE_V4": {
        "description": "Spectre Variant 4 (Speculative Store Bypass)",
        "gadget_pattern": (
            "store-to-load bypass: a speculative load reads stale data before a "
            "preceding store to the same or aliased address retires"
        ),
        "asm_validator": lambda instrs: (
            any(
                # x86_64 store: mov to memory operand (has '[' or 'ptr')
                (l.strip().lower().startswith("mov") and ("[" in l or "ptr" in l.lower())) or
                # ARM64 store
                l.strip().lower().startswith("str ")
                for l in instrs
            ) and
            any(
                # x86_64 load: mov from memory operand, or ARM64 ldr
                (l.strip().lower().startswith("mov") and ("[" in l or "ptr" in l.lower())) or
                l.strip().lower().startswith("ldr ") or
                l.strip().lower().startswith("ret")
                for l in instrs
            )
        ),
        "hints": [
            "local pointer write then dereference", "struct field store then dependent read",
            "stack variable write with dependent load", "array write then bounds-check bypass",
            "memcpy then pointer use", "function argument pointer write then read",
            "loop-carried store-load dependency", "conditional store with dependent branch",
        ],
    },
}

COMPILE_CONFIGS = [("gcc", ["-O0"]), ("gcc", ["-O2"]), ("clang", ["-O2"])]


def build_prompt(cls: str, spec: dict, hint: str) -> str:
    return (
        f"Generate 5 distinct C functions exhibiting {spec['description']} vulnerability.\n\n"
        f"Required gadget pattern: {spec['gadget_pattern']}\n\n"
        f"Focus this batch on: **{hint}**\n\n"
        "Rules:\n"
        "1. Self-contained functions using extern declarations provided in preamble.\n"
        "2. Do NOT add LFENCE, SFENCE, MFENCE, or any speculation barriers.\n"
        "3. Vary: data types (u8/u32/u64), array strides (1/4/8/64/256/512), function depth.\n"
        "4. Use realistic systems-programming variable names.\n"
        "5. Keep each function 8-50 lines of C.\n"
        "6. Output ONLY the C function bodies separated by a line containing exactly '---'.\n"
        "7. No markdown, no explanations, no comments.\n"
    )


def call_claude(prompt: str, client) -> str:
    msg = client.messages.create(
        model="claude-sonnet-4-6",
        max_tokens=4096,
        messages=[{"role": "user", "content": prompt}],
    )
    return msg.content[0].text


def compile_and_window(c_code: str, label: str, group_id: str, asm_validator) -> list:
    full_src = C_PREAMBLE + "\n" + c_code
    results = []
    for compiler, flags in COMPILE_CONFIGS:
        if subprocess.run(["which", compiler], capture_output=True).returncode != 0:
            continue
        with tempfile.NamedTemporaryFile(suffix=".c", mode="w", delete=False) as sf:
            sf.write(full_src); src_p = sf.name
        with tempfile.NamedTemporaryFile(suffix=".s", delete=False) as af:
            asm_p = af.name
        try:
            res = subprocess.run(
                [compiler, "-S"] + flags + [src_p, "-o", asm_p],
                capture_output=True, text=True, timeout=20,
            )
            if res.returncode != 0:
                continue
            with open(asm_p) as f:
                asm = f.read()
            instrs = [
                l.strip() for l in asm.splitlines()
                if l.strip()
                and not l.strip().endswith(":")
                and not l.strip().startswith(("#", ".", "//", ";"))
            ]
            if len(instrs) < 5 or not asm_validator(instrs):
                continue
            for start in range(0, max(1, len(instrs) - WINDOW_BEFORE - WINDOW_AFTER + 1), STEP):
                w = instrs[start:start + WINDOW_BEFORE + WINDOW_AFTER]
                if len(w) >= 5:
                    flag_str = "_".join(f.lstrip("-") for f in flags)
                    results.append({
                        "label": label,
                        "sequence": w,
                        "source_file": "llm_generated",
                        "group": f"{group_id}_{compiler}_{flag_str}",
                        "arch": "x86_64",
                        "augmentation": "llm_synthetic",
                    })
        except Exception as e:
            print(f"    [compile_and_window] {type(e).__name__}: {e}")
        finally:
            for p in [src_p, asm_p]:
                try: os.unlink(p)
                except OSError: pass
    return results


def main():
    api_key = os.environ.get("ANTHROPIC_API_KEY")
    if not api_key:
        print("[phase5] ANTHROPIC_API_KEY not set — writing empty placeholder")
        write_jsonl([], OUT_PATH)
        print("[phase5] Set ANTHROPIC_API_KEY and re-run to generate synthetic data")
        return

    try:
        import anthropic
    except ImportError:
        print("[phase5] anthropic package not installed. Run: pip install anthropic")
        write_jsonl([], OUT_PATH)
        return

    client = anthropic.Anthropic()
    test_hashes = load_test_hashes()

    existing = []
    for phase_file in [
        ROOT / "data" / "v25_honest_train.jsonl",
        ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
        ROOT / "data" / "enrichment" / "phase2_compiled.jsonl",
        ROOT / "data" / "enrichment" / "phase4_poc.jsonl",
    ]:
        if phase_file.exists():
            existing.extend(load_jsonl(phase_file))
    existing_hashes = {(seq_hash(r.get("sequence", [])), r["label"]) for r in existing}

    all_candidates = []

    for cls, spec in CLASS_SPECS.items():
        hints = spec["hints"]
        print(f"\n=== Generating {cls} ({N_PROMPTS_PER_CLASS} prompts) ===")
        for i in range(N_PROMPTS_PER_CLASS):
            hint = hints[i % len(hints)]
            print(f"  [{i+1}/{N_PROMPTS_PER_CLASS}] hint='{hint}'", end=" ", flush=True)
            try:
                raw = call_claude(build_prompt(cls, spec, hint), client)
            except Exception as e:
                print(f"API error: {e}")
                continue
            functions = [f.strip() for f in re.split(r'(?m)^\s*---\s*$', raw) if f.strip()]
            batch_records = []
            for j, fn_code in enumerate(functions):
                group_id = f"phase5_{cls.lower()}_{i}_{j}"
                batch_records.extend(
                    compile_and_window(fn_code, cls, group_id, spec["asm_validator"])
                )
            all_candidates.extend(batch_records)
            print(f"→ {len(batch_records)} windows")

    print(f"\nTotal candidates: {len(all_candidates):,}")
    clean, stats = validate_and_dedup(all_candidates, test_hashes, existing_hashes)
    print(f"Validation: {stats}")
    write_jsonl(clean, OUT_PATH)
    counts = Counter(r["label"] for r in clean)
    print("\nPer-class LLM-synthetic records:")
    for cls in sorted(counts):
        print(f"  {cls:<35} {counts[cls]:>8,}")


if __name__ == "__main__":
    main()
