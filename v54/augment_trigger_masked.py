"""Trigger-masked training augmentation (Task 2.1, W2).

Forces the classifier to learn trigger-opcode-independent structure: for
every non-BENIGN record whose sequence actually contains a trigger opcode
(verw, rdtsc, clflush, ...), append a copy with the trigger opcodes masked
out. The masked copy keeps the SAME `group` as the original so group-holdout
splitting keeps the pair together (no train/test leakage). BENIGN records
are never duplicated.

CLI:
    python3 v54/augment_trigger_masked.py --in v54/data/v54_train.jsonl \
        --out v54/data/v55h_train.jsonl
"""
import argparse
import json
import sys
from pathlib import Path

# Allow running as a standalone script (repo root on sys.path for `eval` pkg).
_REPO_ROOT = Path(__file__).resolve().parent.parent
if str(_REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(_REPO_ROOT))

from eval.neutralize_triggers import neutralize_triggers


def augment_trigger_masked(records: list[dict]) -> list[dict]:
    """Return records + trigger-masked copies of attack records.

    Keeps every original record. For each record with label != "BENIGN"
    whose sequence, when trigger-masked, differs from the original (i.e. it
    actually contained a trigger opcode), appends a copy with:
      - sequence = neutralize_triggers(sequence, "mask")
      - augmentation = "trigger_masked"
      - group unchanged (same as original)
    """
    out = []
    for rec in records:
        out.append(rec)
        if rec.get("label") == "BENIGN":
            continue
        seq = rec.get("sequence", [])
        masked_seq = neutralize_triggers(seq, "mask")
        if masked_seq == seq:
            continue
        masked_rec = dict(rec)
        masked_rec["sequence"] = masked_seq
        masked_rec["augmentation"] = "trigger_masked"
        masked_rec["group"] = rec.get("group")
        out.append(masked_rec)
    return out


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--in", dest="in_path", required=True)
    parser.add_argument("--out", dest="out_path", required=True)
    args = parser.parse_args()

    records = []
    with open(args.in_path) as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))

    augmented = augment_trigger_masked(records)

    with open(args.out_path, "w") as f:
        for rec in augmented:
            f.write(json.dumps(rec) + "\n")

    n_masked = sum(1 for r in augmented if r.get("augmentation") == "trigger_masked")
    print(f"records {len(augmented)} masked {n_masked}")


if __name__ == "__main__":
    main()
