#!/usr/bin/env python3
"""
Verify that compiled and handcrafted sequences for the same class share
overlapping n-gram distributions. If the overlap is near zero, the model
would still be able to distinguish types by opcode patterns.

Prints Jaccard similarity of opcode unigrams between compiled and
handcrafted sequences per class. Values below 0.2 indicate severe style mismatch.

Run:
    python3 scripts/enrichment/verify_no_style_leak.py data/v43_train_enriched.jsonl
"""
import json, sys, re
from pathlib import Path
from collections import Counter, defaultdict

ROOT = Path(__file__).parent.parent.parent


def extract_opcodes(seq):
    opcodes = []
    for line in seq:
        m = re.match(r'\s*(\w[\w.]*)', line)
        if m:
            opcodes.append(m.group(1).lower())
    return opcodes


def jaccard(a: Counter, b: Counter) -> float:
    ka, kb = set(a), set(b)
    inter = len(ka & kb)
    union = len(ka | kb)
    return inter / union if union else 1.0


def data_type(r: dict) -> str:
    sf = r.get("source_file", r.get("group", ""))
    aug = r.get("augmentation", "")
    if aug == "compiled_c_source":
        return "compiled_attack"
    if "c_vulns/asm_code" in sf:
        return "handcrafted_asm"
    if aug and aug not in ("poc_repo",):
        return "augmented"
    return "compiled_github"


def main():
    train_path = Path(sys.argv[1]) if len(sys.argv) > 1 else ROOT / "data" / "v43_train_enriched.jsonl"
    print(f"Loading {train_path} ...")
    records = [json.loads(l) for l in open(train_path) if l.strip()]

    cls_type_opcodes = defaultdict(lambda: defaultdict(Counter))
    for r in records:
        dt = data_type(r)
        cls = r["label"]
        for op in extract_opcodes(r.get("sequence", [])):
            cls_type_opcodes[cls][dt][op] += 1

    print(f"\n{'Class':<35} {'Compiled↔Handcrafted Jaccard':>30}  {'Verdict'}")
    print("-" * 75)
    all_pass = True
    for cls in sorted(cls_type_opcodes):
        compiled = cls_type_opcodes[cls].get("compiled_attack", Counter()) + \
                   cls_type_opcodes[cls].get("compiled_github", Counter())
        handcrafted = cls_type_opcodes[cls].get("handcrafted_asm", Counter()) + \
                      cls_type_opcodes[cls].get("augmented", Counter())
        if not compiled or not handcrafted:
            print(f"  {cls:<35} {'N/A (missing data type)':>30}  SKIP")
            continue
        j = jaccard(compiled, handcrafted)
        verdict = "OK" if j >= 0.15 else "LOW — may have style gap"
        if j < 0.15:
            all_pass = False
        print(f"  {cls:<35} {j:>30.4f}  {verdict}")

    print()
    if all_pass:
        print("[PASS] All classes have sufficient compiled/handcrafted opcode overlap")
    else:
        print("[WARN] Some classes have low overlap — model may still partially cheat by style")


if __name__ == "__main__":
    main()
