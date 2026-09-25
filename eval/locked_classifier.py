#!/usr/bin/env python3
"""locked_classifier.py — THE classifier the rest of the project uses.

Locked 2026-09-25 on `lv4s_learned_adv` (manifest: models/locked_classifier.json):
GINE on spec-builder graphs with learned node features from the ISA-neutral
MLM (spec/mlm_neutral.pt), only the 9 inline features that fire on every ISA,
NOPs stripped, DropNode 0.1, adversarial arch head; trained on x86_64+arm64
only (v54/data/v54_train_lenmatch_v4s.jsonl). Chosen for the lowest benign
false-positive rate on the held-out riscv64 set with no ISA-specific
features (see the manifest for measured numbers and known limits).

All 5 training seeds are used as an ENSEMBLE (softmax averaged) rather than
picking the seed that scored best on the held-out set, which would be
selecting on the test set.

Every checkpoint is rebuilt through eval/gine_riscv_holdout_eval.load_checkpoint
— the same code path the evaluation used — and verified against the
manifest's sha256 before use.

    from locked_classifier import LockedClassifier
    clf = LockedClassifier()                      # cpu by default
    out = clf.predict(records)                    # records: {"sequence": [...], "arch": ...}
    out["attack_prob"]                            # 1 - P(BENIGN), one per record
    out["label"], out["probs"], out["classes"]

Records whose graph cannot be built (fewer than 3 instructions, <2 PDG nodes)
come back with label None and attack_prob NaN rather than being dropped, so
outputs always align 1:1 with inputs.
"""
from __future__ import annotations

import hashlib
import json
import sys
from pathlib import Path

import numpy as np
import torch

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "eval"))
MANIFEST = ROOT / "models" / "locked_classifier.json"


def _sha256(path: Path) -> str:
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


class LockedClassifier:
    def __init__(self, device: str = "cpu", manifest: Path = MANIFEST, verify: bool = True):
        import gine_riscv_holdout_eval as G
        self._G = G
        self.manifest = json.loads(Path(manifest).read_text())
        self.device = torch.device(device)
        self.members = []
        for m in self.manifest["checkpoints"]:
            p = ROOT / m["path"]
            if verify and _sha256(p) != m["sha256"]:
                raise RuntimeError(f"{p}: sha256 does not match the locked manifest")
            self.members.append(G.load_checkpoint(p, self.device))
        labels = [tuple(sorted(x["label_to_id"].items(), key=lambda kv: kv[1]))
                  for x in self.members]
        if len(set(labels)) != 1:
            raise RuntimeError("ensemble members disagree on the label vocabulary")
        self.classes = [l for l, _ in labels[0]]
        self.benign_idx = self.classes.index("BENIGN")

    @torch.no_grad()
    def predict(self, records: list, batch_size: int = 64) -> dict:
        """-> {"classes", "probs" [N,C] (NaN rows for unbuildable records),
        "label" [N] (None if unbuildable), "attack_prob" [N]}."""
        n, C = len(records), len(self.classes)
        # the dataset needs a label it knows; the value is never used here
        recs = [{**r, "label": "BENIGN", "_i": i} for i, r in enumerate(records)]
        probs = np.zeros((n, C))
        built = None
        for mem in self.members:
            ds = mem["make_ds"](recs)
            if built is None:
                # GINEDatasetV47 silently drops records it can't graph; recover
                # which ones survived by rebuilding them one at a time only if
                # the count differs (rare), otherwise it is the identity.
                built = (list(range(n)) if len(ds) == n
                         else [i for i, r in enumerate(recs) if len(mem["make_ds"]([r])) == 1])
                if len(built) != len(ds):
                    raise RuntimeError("could not align dataset to input records")
            loader = torch.utils.data.DataLoader(ds, batch_size=batch_size, shuffle=False,
                                                 collate_fn=self._G.collate_fn, num_workers=0)
            p, _ = self._G.predict(mem["model"], loader, self.device)
            probs[built] += p
        probs[built] /= len(self.members)
        ok = np.zeros(n, bool)
        ok[built] = True
        probs[~ok] = np.nan
        label = [self.classes[int(row.argmax())] if k else None for row, k in zip(probs, ok)]
        return {"classes": self.classes, "probs": probs, "label": label,
                "attack_prob": np.where(ok, 1.0 - probs[:, self.benign_idx], np.nan)}


if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser(description="score a JSONL of {sequence, arch} records")
    ap.add_argument("records")
    ap.add_argument("--device", default="cpu")
    args = ap.parse_args()
    recs = [json.loads(l) for l in open(args.records) if l.strip()]
    out = LockedClassifier(args.device).predict(recs)
    for r, lab, ap_ in zip(recs, out["label"], out["attack_prob"]):
        print(json.dumps({"gadget_id": r.get("gadget_id"), "label": lab,
                          "attack_prob": None if np.isnan(ap_) else round(float(ap_), 4)}))
