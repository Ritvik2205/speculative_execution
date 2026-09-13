#!/usr/bin/env python3
"""
Verify that the training set has no systematic data-type asymmetry between
BENIGN and attack classes, and that the test set is not contaminated.

A "data-type" is: compiled_github, compiled_attack, handcrafted_asm, augmented_compiled.

The check FAILS if:
  - Any attack class has 0% compiled records while BENIGN has >20%
  - There is any exact sequence overlap between train and test
  - There is any source group overlap between train and test

Run:
    python3 scripts/enrichment/verify_data_balance.py [train_jsonl] [test_jsonl]

Defaults to data/v43_train_enriched.jsonl and data/v25_honest_test.jsonl.
"""
import json, sys, hashlib
from pathlib import Path
from collections import Counter, defaultdict

ROOT = Path(__file__).parent.parent.parent

TRAIN_DEFAULT = ROOT / "data" / "v43_train_enriched.jsonl"
TEST_PATH     = ROOT / "data" / "v25_honest_test.jsonl"


def seq_hash(seq):
    return hashlib.md5("|".join(str(t) for t in seq).encode()).hexdigest()


def data_type(r: dict) -> str:
    sf = r.get("source_file", r.get("group", ""))
    aug = r.get("augmentation", "")
    if aug == "compiled_c_source":
        return "compiled_attack"
    if "c_vulns/asm_code" in sf or "c_vulns\\asm_code" in sf:
        return "handcrafted_asm"
    if aug and aug not in ("poc_repo",):
        if "c_vulns/asm_code" in sf or "c_vulns\\asm_code" in sf:
            return "augmented_handcrafted"
        return "augmented_compiled"
    if r.get("arch") in ("arm64", "x86_64"):
        return "compiled_github"
    return "other"


def load(path):
    with open(path) as f:
        return [json.loads(l) for l in f if l.strip()]


def main():
    train_path = Path(sys.argv[1]) if len(sys.argv) > 1 else TRAIN_DEFAULT
    test_path  = Path(sys.argv[2]) if len(sys.argv) > 2 else TEST_PATH

    if not train_path.exists():
        print(f"[ERROR] Training file not found: {train_path}")
        sys.exit(1)

    print(f"Loading training: {train_path}")
    train = load(train_path)
    print(f"Loading test:     {test_path}")
    test  = load(test_path)

    # ── 1. Integrity checks ───────────────────────────────────────────────
    print("\n=== Integrity Checks ===")
    train_hashes = {seq_hash(r.get("sequence", [])) for r in train}
    test_hashes  = {seq_hash(r.get("sequence", [])) for r in test}
    exact_overlap = len(train_hashes & test_hashes)
    print(f"  Exact sequence overlap train↔test: {exact_overlap}  (target: 0)")

    train_groups = {r.get("group", r.get("source_file", "")) for r in train}
    test_groups  = {r.get("group", r.get("source_file", "")) for r in test}
    group_overlap = len(train_groups & test_groups)
    print(f"  Source group overlap train↔test:  {group_overlap}  (target: 0)")

    failed = False
    if exact_overlap > 0:
        print(f"[FAIL] {exact_overlap} exact sequences leaked into test!")
        failed = True
    if group_overlap > 0:
        print(f"[FAIL] {group_overlap} source groups span both train and test!")
        failed = True

    # ── 2. Data-type balance per class ────────────────────────────────────
    print("\n=== Data-Type Distribution Per Class (Training) ===")
    cls_type = defaultdict(Counter)
    for r in train:
        cls_type[r["label"]][data_type(r)] += 1

    all_types = sorted({dt for ct in cls_type.values() for dt in ct})
    header = f"  {'Class':<35}"
    for t in all_types:
        header += f" {t[:18]:>18}"
    print(header)

    benign_compiled_pct = 0.0
    attack_compiled_pcts = {}

    for cls in sorted(cls_type):
        counts = cls_type[cls]
        total = sum(counts.values())
        compiled = (counts.get("compiled_attack", 0)
                    + counts.get("compiled_github", 0)
                    + counts.get("augmented_compiled", 0))
        compiled_pct = 100 * compiled / total if total else 0
        row = f"  {cls:<35}"
        for t in all_types:
            row += f" {counts.get(t, 0):>18,}"
        row += f"  compiled={compiled_pct:.0f}%"
        print(row)
        if cls == "BENIGN":
            benign_compiled_pct = compiled_pct
        else:
            attack_compiled_pcts[cls] = compiled_pct

    # ── 3. Balance assertions ─────────────────────────────────────────────
    print("\n=== Balance Assertions ===")
    print(f"  BENIGN compiled%: {benign_compiled_pct:.1f}%")

    for cls, pct in sorted(attack_compiled_pcts.items()):
        if benign_compiled_pct > 20 and pct == 0:
            print(f"  [FAIL] {cls}: 0% compiled while BENIGN={benign_compiled_pct:.0f}%")
            failed = True
        else:
            print(f"  [OK]   {cls}: {pct:.1f}% compiled")

    # ── 4. Test set data-type breakdown ───────────────────────────────────
    print("\n=== Test Set Data-Type Distribution ===")
    test_cls_type = defaultdict(Counter)
    for r in test:
        test_cls_type[r["label"]][data_type(r)] += 1
    for cls in sorted(test_cls_type):
        counts = test_cls_type[cls]
        print(f"  {cls:<35} {dict(counts)}")

    # ── 5. Final verdict ─────────────────────────────────────────────────
    print()
    if failed:
        print("[FAIL] Balance verification FAILED — fix before training")
        sys.exit(1)
    else:
        print("[PASS] Balance verification PASSED")


if __name__ == "__main__":
    main()
