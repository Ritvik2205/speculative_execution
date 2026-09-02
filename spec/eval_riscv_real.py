#!/usr/bin/env python3
"""
eval_riscv_real.py — G6 / B3a (SPECDISCOVER_VERIFICATION_GAPS.md): does the
actual 9/10-class GINE classifier work on RISC-V, not just does the front end
parse it?

spec/validate_riscv_corpus.py only checked PDG-build success + coarse
control-flow oracle agreement on riscv_corpus/*.s. The v54/v55 classifier has
never been trained OR scored on a single riscv64 record (confirmed: zero
'riscv64' rows in v54_train.jsonl/v54_test.jsonl). This script:

  1. Recovers real vuln-class labels from riscv_corpus/*.s filenames by
     cross-referencing the SAME base filename keyword against actual labels
     already present in v54_train/test for the x86_64/arm64 compiles of the
     same source (e.g. any record with "bhi" in source_file/group is labeled
     BRANCH_HISTORY_INJECTION in the real data — so riscv_corpus files with
     "bhi" in the name get that same label). Filenames whose keyword has NO
     cross-referenced label in the real dataset (e.g. "downfall" — GDS/Downfall
     was compiled to RISC-V but never included in any v54 x86/ARM class) are
     EXCLUDED rather than guessed.
  2. Builds a labeled arch="riscv64" jsonl slice from the real compiled corpus.
  3. Loads the existing v54/viz_v54_spec/gine_best.pt checkpoint (B1 spec-
     builder retrain, use_spec_builder=True, 97.07% on its own locked x86/ARM
     test) and scores it on the RISC-V slice zero-shot — no fine-tuning.

FIXED (was: HONEST CAVEAT): ARCH_VOCAB used to be {'x86_64':0, 'arm64':1,
'arm32':2, 'riscv':3, 'unknown':4} (gine_classifier_v38.py) — the dead key
'riscv' never matched the "riscv64" string records actually use, so every
RISC-V record silently fell back to the 'unknown' (id=4) arch embedding row.
Fixed: the key is now 'riscv64', so lookups correctly resolve to id=3. This
is a real correctness fix, but tempered expectations: v54's training pool has
ZERO riscv64 (or, previously, 'unknown') records either way, so id=3's
embedding row is STILL untrained regardless of which string key points to it
— confirmed via ablation (spec/diagnose_riscv_failure.py Part 2) that routing
to a genuinely TRAINED row (arm64's/x86_64's) doesn't improve accuracy either,
so this fix is about correctness, not expected to move the accuracy number.
Any result here still reflects (a) whether the spec-driven PDG features
generalize, filtered through (b) an untrained arch embedding — the two remain
not separable from this run alone.

Run:  python3 spec/eval_riscv_real.py
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

import numpy as np
import torch

ROOT = Path(__file__).resolve().parent.parent
V54 = ROOT / "v54"
CORPUS = ROOT / "riscv_corpus"
CKPT = V54 / "viz_v54_spec" / "gine_best.pt"

sys.path.insert(0, str(V54))
from train_gine_v38 import (GINEDatasetV47, collate_fn, evaluate,  # noqa: E402
                             select_device)
from gine_classifier_v38 import GINEClassifier, NUM_ARCHS  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES  # noqa: E402
from inline_features import get_feature_names  # noqa: E402

_COMMENT = re.compile(r"[#;].*$")
_OPT_SUFFIX = re.compile(r'\.O[0-9]+\.riscv64\.s$')

# Keyword -> label, derived by cross-referencing the same keyword against real
# labels already present in v54_train.jsonl/v54_test.jsonl for x86_64/arm64
# compiles of the same source (see script docstring). Order matters: check
# more specific keywords first.
KEYWORD_TO_LABEL = [
    ("spectre_rsb", "SPECTRE_RSB"),
    ("spectre_v2", "SPECTRE_V2"),
    ("spectre_2", "SPECTRE_V2"),
    ("spectre_v4", "SPECTRE_V4"),
    ("retbleed", "RETBLEED"),
    ("inception", "INCEPTION"),
    ("l1tf", "L1TF"),
    ("mds", "MDS"),
    ("bhi", "BRANCH_HISTORY_INJECTION"),
    ("utils", "BENIGN"),
]
EXCLUDED_KEYWORDS = {"downfall"}  # no cross-referenced label in real v54 data


def label_for_stem(stem: str):
    low = stem.lower()
    for kw in EXCLUDED_KEYWORDS:
        if kw in low:
            return None
    for kw, label in KEYWORD_TO_LABEL:
        if kw in low:
            return label
    return None


def is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":") and ":" not in s.split()[0]


def extract_sequence(path: Path):
    seq = []
    for raw in path.read_text(errors="ignore").splitlines():
        line = _COMMENT.sub("", raw).rstrip()
        if is_instr(line):
            seq.append(line.strip())
    return seq


def build_riscv_records():
    records = []
    skipped_unlabeled = 0
    excluded = 0
    for f in sorted(CORPUS.glob("*.s")):
        stem = _OPT_SUFFIX.sub("", f.name)
        low = stem.lower()
        if any(kw in low for kw in EXCLUDED_KEYWORDS):
            excluded += 1
            continue
        label = label_for_stem(stem)
        if label is None:
            skipped_unlabeled += 1
            continue
        seq = extract_sequence(f)
        if len(seq) < 3:
            continue
        records.append({
            "label": label,
            "sequence": seq,
            "arch": "riscv64",
            "group": stem,
            "source_file": str(f.relative_to(ROOT)),
        })
    print(f"riscv_corpus files={len(list(CORPUS.glob('*.s')))}  "
          f"labeled records built={len(records)}  "
          f"excluded (downfall, no ground truth)={excluded}  "
          f"skipped (unrecognized keyword)={skipped_unlabeled}")
    return records


def main():
    import argparse as _ap
    _p = _ap.ArgumentParser()
    _p.add_argument("--ckpt", default=None,
                    help="checkpoint to evaluate (default: the hardcoded v54_spec)")
    _p.add_argument("--records-jsonl", default=None,
                    help="evaluate this JSONL instead of riscv_corpus/. Use "
                         "spec/data/riscv_real_validation.jsonl for the real, "
                         "non-transliterated PoCs.")
    _a, _ = _p.parse_known_args()
    if _a.records_jsonl:
        records = [json.loads(l) for l in open(_a.records_jsonl) if l.strip()]
        print(f"records OVERRIDDEN from {_a.records_jsonl}: {len(records)}")
        assert all(r.get("split") != "train" for r in records)
    else:
        if not CORPUS.exists():
            print(f"missing {CORPUS} — run the RISC-V compile step first")
            sys.exit(2)
        records = build_riscv_records()
    if not records:
        print("no labeled RISC-V records built")
        sys.exit(2)

    from collections import Counter
    print("label distribution:", dict(Counter(r["label"] for r in records)))

    device = select_device()
    _ckpt_path = Path(_a.ckpt) if _a.ckpt else CKPT
    if not _ckpt_path.exists():
        print(f"missing checkpoint {_ckpt_path}"); sys.exit(2)
    print(f"checkpoint: {_ckpt_path}")
    ckpt = torch.load(_ckpt_path, map_location=device, weights_only=False)
    label_to_id = ckpt["label_to_id"]
    feature_names = ckpt["feature_names"]
    ckpt_args = ckpt["args"]
    id_to_label = {i: l for l, i in label_to_id.items()}
    print(f"\ncheckpoint classes ({len(label_to_id)}): {sorted(label_to_id)}")

    # Filter to labels the checkpoint actually has a head for.
    before = len(records)
    records = [r for r in records if r["label"] in label_to_id]
    if len(records) < before:
        print(f"dropped {before - len(records)} records with labels not in checkpoint vocab")

    dataset = GINEDatasetV47(
        records, label_to_id, feature_names,
        speculative_window=ckpt_args["speculative_window"],
        strip_bp=not ckpt_args["no_strip"],
        node_feature_mode=ckpt_args["node_feature_mode"],
        use_spec_builder=ckpt_args["use_spec_builder"],
    )
    if len(dataset) == 0:
        print("no valid graphs built from RISC-V records")
        sys.exit(2)

    loader = torch.utils.data.DataLoader(dataset, batch_size=32, shuffle=False,
                                          collate_fn=collate_fn, num_workers=0)

    model = GINEClassifier(
        node_feat_dim=dataset.node_feature_dim,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=ckpt_args["hidden_dim"],
        num_layers=ckpt_args["num_layers"],
        num_classes=len(label_to_id),
        handcrafted_dim=max(len(feature_names), 1),
        global_feat_dim=5,
        arch_emb_dim=ckpt_args["arch_emb_dim"],
        dropout=ckpt_args["dropout"],
        use_virtual_node=not ckpt_args["no_virtual_node"],
        jk_mode=ckpt_args["jk_mode"],
    ).to(device)
    model.load_state_dict(ckpt["model_state_dict"])

    acc, preds, labels = evaluate(model, loader, device, desc="RISC-V zero-shot")

    from sklearn.metrics import classification_report
    present = sorted(set(labels))
    names = [id_to_label[i] for i in present]
    print(f"\n{'='*60}")
    print(f"RISC-V zero-shot accuracy: {acc*100:.2f}%  (n={len(labels)})")
    print(f"{'='*60}")
    print(classification_report(labels, preds, labels=present, target_names=names, zero_division=0))
    from collections import Counter as _C
    print(f"{'true':26s} {'predicted':26s} detail")
    for r, pr, la in zip(records, preds, labels):
        det = f"{r.get('window_tier','')} {r.get('group','')} {r.get('opt','')}".strip()
        print(f"  {id_to_label[la]:24s} {id_to_label[pr]:24s} {det}")
    print("prediction distribution:", dict(_C(id_to_label[p] for p in preds)))
    print("NOTE: ARCH_VOCAB now has a real 'riscv64' key (fixed) so arch_id"
          "\ncorrectly resolves to its own row rather than falling back to"
          "\n'unknown' — but that row still never received a gradient update"
          "\n(v54's training pool has zero riscv64 records), so this result"
          "\nstill reflects spec-driven graph features filtered through an"
          "\nuntrained arch embedding, not a fully realistic deployment scenario.")


if __name__ == "__main__":
    main()
