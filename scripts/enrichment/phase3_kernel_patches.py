#!/usr/bin/env python3
"""
Phase 3: Mine Linux kernel git history for Spectre/MDS/L1TF/RETBLEED/INCEPTION/BHI patches.

For each matching commit, extract removed C function bodies from diffs,
compile them to assembly, and extract instruction windows.

NOTE: Requires kernel clone at /tmp/linux_kernel:
  git clone --depth=5000 --branch v6.6 https://github.com/torvalds/linux.git /tmp/linux_kernel
Run on the Linux training environment where cross-compilers are available.
"""
import subprocess, sys, os, re, tempfile, random, json
from pathlib import Path
from collections import Counter

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

KERNEL_DIR = Path("/tmp/linux_kernel")
OUT_PATH   = ROOT / "data" / "enrichment" / "phase3_kernel.jsonl"
WINDOW_BEFORE, WINDOW_AFTER, STEP = 8, 12, 4

COMMIT_LABEL_MAP = [
    (re.compile(r"spectre.?v1|bounds.check.bypass|array.index", re.I), "SPECTRE_V1"),
    (re.compile(r"spectre.?v2|retpoline|ibpb|ibrs|stibp|indirect.branch", re.I), "SPECTRE_V2"),
    (re.compile(r"spectre.?v4|ssb|store.bypass|spec_store_bypass", re.I), "SPECTRE_V4"),
    (re.compile(r"l1tf|foreshadow|l1 terminal fault", re.I), "L1TF"),
    (re.compile(r"mds|microarchitectural data sampling|fallout|zombieload|ridl", re.I), "MDS"),
    (re.compile(r"retbleed|ret2spec|straight.line speculation", re.I), "RETBLEED"),
    (re.compile(r"inception|phantom.jmp|srso|rsb.stuff", re.I), "INCEPTION"),
    (re.compile(r"bhi|branch.history.injection|spectre.?bhb", re.I), "BRANCH_HISTORY_INJECTION"),
]

C_PREAMBLE = """
#include <stdint.h>
#include <stddef.h>
typedef unsigned long u64;
typedef unsigned int  u32;
typedef unsigned char u8;
typedef int bool;
#define likely(x)   __builtin_expect(!!(x),1)
#define unlikely(x) __builtin_expect(!!(x),0)
#define barrier()   __asm__ __volatile__("": : :"memory")
#define ACCESS_ONCE(x) (*(volatile typeof(x)*)&(x))
"""

def infer_label(subject):
    for pattern, label in COMMIT_LABEL_MAP:
        if pattern.search(subject):
            return label
    return None

def get_matching_commits(kernel_dir):
    keywords = ["spectre","meltdown","L1TF","MDS","retbleed","inception",
                "BHI","retpoline","ibpb","store bypass","microarchitectural"]
    results = {}
    for kw in keywords:
        out = subprocess.run(
            ["git","log","--oneline",f"--grep={kw}","--all","-i",
             "--","arch/x86/*.c","arch/arm64/*.c","arch/x86/kernel/*.c"],
            cwd=kernel_dir, capture_output=True, text=True,
        ).stdout
        for line in out.splitlines():
            parts = line.split(" ", 1)
            if len(parts) == 2:
                results[parts[0]] = parts[1]
    return list(results.items())

def extract_removed_c_blocks(diff):
    """Extract C function-shaped blocks from removed lines in diff."""
    removed, in_c = [], False
    for line in diff.splitlines():
        if line.startswith("diff --git"):
            in_c = line.endswith(".c")
        if in_c and line.startswith("-") and not line.startswith("---"):
            removed.append(line[1:])
    code = "\n".join(removed)
    blocks, depth, start = [], 0, None
    for i, ch in enumerate(code):
        if ch == '{':
            if depth == 0: start = i
            depth += 1
        elif ch == '}':
            depth -= 1
            if depth == 0 and start is not None:
                block = code[start:i+1]
                if len(block) > 50:
                    blocks.append(block)
                start = None
    return blocks

def compile_and_window(c_code, label, group_id):
    full_src = C_PREAMBLE + "\n" + c_code
    records = []
    for compiler, flags in [("gcc",["-O2"]),("gcc",["-O0"]),("clang",["-O2"])]:
        if subprocess.run(["which",compiler], capture_output=True).returncode != 0:
            continue
        with tempfile.NamedTemporaryFile(suffix=".c", mode="w", delete=False) as sf:
            sf.write(full_src); src_p = sf.name
        with tempfile.NamedTemporaryFile(suffix=".s", delete=False) as af:
            asm_p = af.name
        try:
            res = subprocess.run([compiler,"-S"]+flags+[src_p,"-o",asm_p],
                capture_output=True, text=True, timeout=20)
            if res.returncode != 0: continue
            with open(asm_p) as f: asm = f.read()
            instrs = [l.strip() for l in asm.splitlines()
                      if l.strip() and not l.strip().endswith(":")
                      and not l.strip().startswith(("#",".","//"," ;"))]
            for start in range(0, max(1, len(instrs)-WINDOW_BEFORE-WINDOW_AFTER), STEP):
                w = instrs[start:start+WINDOW_BEFORE+WINDOW_AFTER]
                if len(w) >= 5:
                    records.append({"label":label,"sequence":w,"source_file":"linux_kernel_patch",
                        "group":f"{group_id}_{compiler}","arch":"x86_64","augmentation":"kernel_patch"})
        except Exception: pass
        finally:
            for p in [src_p, asm_p]:
                try: os.unlink(p)
                except OSError: pass
    return records

def main():
    if not KERNEL_DIR.exists():
        print(f"[phase3] Kernel not cloned at {KERNEL_DIR}")
        print("Run on Linux: git clone --depth=5000 --branch v6.6 https://github.com/torvalds/linux.git /tmp/linux_kernel")
        write_jsonl([], OUT_PATH)
        print("[phase3] Wrote empty placeholder to", OUT_PATH)
        return

    test_hashes = load_test_hashes()
    existing = load_jsonl(ROOT/"data"/"v25_honest_train.jsonl")
    existing_hashes = {(seq_hash(r.get("sequence",[])), r["label"]) for r in existing}

    print("Finding matching commits...")
    commits = get_matching_commits(KERNEL_DIR)
    print(f"Found {len(commits)} commits")

    candidates, processed = [], 0
    for commit_hash, subject in commits:
        label = infer_label(subject)
        if not label: continue
        diff = subprocess.run(["git","show","--unified=0",commit_hash],
            cwd=KERNEL_DIR, capture_output=True, text=True).stdout
        for j, block in enumerate(extract_removed_c_blocks(diff)[:10]):
            group_id = f"kernel_{commit_hash[:8]}_{j}"
            candidates.extend(compile_and_window(block, label, group_id))
        processed += 1
        if processed % 50 == 0:
            print(f"  {processed}/{len(commits)} commits, {len(candidates):,} candidates")

    print(f"Total candidates: {len(candidates):,}")
    clean, stats = validate_and_dedup(candidates, test_hashes, existing_hashes)
    print(f"Validation: {stats}")
    write_jsonl(clean, OUT_PATH)
    counts = Counter(r["label"] for r in clean)
    for cls in sorted(counts): print(f"  {cls}: {counts[cls]:,}")

if __name__ == "__main__":
    main()
