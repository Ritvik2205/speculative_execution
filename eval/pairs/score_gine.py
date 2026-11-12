#!/usr/bin/env python3
"""Score a trained GINE checkpoint on the pair benchmark (cluster: needs torch,
torch_geometric and the spec engine).

Writes {"pair_id", "side", "score"} lines for `eval/pairs/score.py --scores NAME=file`.
score = 1 - P(safe class), where the safe class is SAFE (v57 leak task) or BENIGN
(nine-class checkpoints), so higher = more likely to leak.

Guard: before scoring, the checkpoint must reproduce its own recorded test accuracy
through the same preprocessing (eval/score_hwlabel_variants.reproduce_gate).

    python3 eval/pairs/score_gine.py --checkpoint RUN/gine_best.pt \
        --train-data v57/data/v57_leak_train.jsonl --test-data v57/data/v57_leak_test.jsonl \
        --out RUN/pair_scores.jsonl
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
for _p in (ROOT, ROOT / "eval", ROOT / "v54", ROOT / "spec"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

SAFE_NAMES = ("SAFE", "BENIGN")


def sides(pairs: list[dict], placeholder_label: str) -> list[dict]:
    """One record per pair side in the shape the dataset class expects."""
    arch = lambda p: "arm64" if p.get("set", "").endswith("arm64") else "x86_64"
    return [{"sequence": p[s], "arch": arch(p), "label": placeholder_label,
             "pair_id": p["pair_id"], "side": s} for p in pairs for s in ("leak", "safe")]


def load_model(checkpoint, metrics, train_data, test_data, acc_tol):
    """Checkpoint + the preprocessing it was trained with, after the reproduce check.
    Returns (hv module, model, label_to_id, feature names, dataset kwargs, safe label)."""
    import torch
    import score_hwlabel_variants as hv
    labels = sorted({r["label"] for r in hv.load_jsonl(Path(train_data)) if r.get("label", "UNKNOWN") != "UNKNOWN"})
    label_to_id = {l: i for i, l in enumerate(labels)}
    safe = [l for l in labels if l in SAFE_NAMES]
    if len(safe) != 1:
        raise SystemExit(f"ERROR: need exactly one safe class among {labels}")
    mpath = Path(metrics) if metrics else Path(checkpoint).with_name("gine_metrics.json")
    expected, model_cfg, ds_kw, hc_subset, mech = hv.load_run_config(mpath)
    if hc_subset == "neutral":
        from inline_features import NEUTRAL_FEATURES
        feats = list(NEUTRAL_FEATURES)
    else:
        feats = list(hv.get_feature_names())
    if mech:
        from inline_features import MECH_FEATURE_NAMES
        feats += MECH_FEATURE_NAMES
    ckpt = torch.load(checkpoint, map_location=hv.DEVICE, weights_only=False)
    state = ckpt["model_state_dict"] if "model_state_dict" in ckpt else ckpt
    probe = hv.GINEDatasetV47(hv.load_jsonl(Path(test_data))[:1], label_to_id, feats, **ds_kw)
    model = hv.build_model(len(labels), len(feats), probe.node_feature_dim, model_cfg)
    model.load_state_dict(state)
    hv.reproduce_gate(model, label_to_id, feats, Path(test_data), ds_kw, expected, acc_tol)
    return hv, model, label_to_id, feats, ds_kw, safe[0]


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--checkpoint", required=True)
    ap.add_argument("--metrics", default=None)
    ap.add_argument("--train-data", required=True, help="label vocabulary (sorted train labels)")
    ap.add_argument("--test-data", required=True, help="the checkpoint's own test set, for the guard")
    ap.add_argument("--pairs", nargs="*", default=None)
    ap.add_argument("--out", required=True)
    ap.add_argument("--acc-tol", type=float, default=1e-3)
    a = ap.parse_args(argv)
    hv, model, label_to_id, feats, ds_kw, safe_label = load_model(
        a.checkpoint, a.metrics, a.train_data, a.test_data, a.acc_tol)
    safe = [safe_label]

    files = a.pairs or sorted(str(p) for p in (ROOT / "eval" / "pairs" / "data").glob("pairs_*.jsonl"))
    pairs = [p for f in files for p in hv.load_jsonl(Path(f))]
    recs = sides(pairs, safe[0])
    _, prob = hv.predict(model, hv.GINEDatasetV47(recs, label_to_id, feats, **ds_kw))
    if len(prob) != len(recs):
        print(f"ERROR: {len(recs)} sides in, {len(prob)} scores out", file=sys.stderr)
        return 4
    with open(a.out, "w") as f:
        for r, p in zip(recs, prob):
            f.write(json.dumps({"pair_id": r["pair_id"], "side": r["side"],
                                "score": float(1.0 - p[label_to_id[safe[0]]])}) + "\n")
    print(f"wrote {len(recs)} side scores for {len(pairs)} pairs -> {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
