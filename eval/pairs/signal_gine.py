#!/usr/bin/env python3
"""Signal-awareness probe (eval/pairs/signal_probe.py) for a trained GINE checkpoint. Cluster only.

    python3 eval/pairs/signal_gine.py --checkpoint RUN/gine_best.pt \
        --train-data v57/data/v57_leak_train.jsonl --test-data v57/data/v57_leak_test.jsonl \
        --out RUN/signal.json [--limit 60]
"""
from __future__ import annotations

import argparse
import json
import random
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
for _p in (ROOT, ROOT / "eval", ROOT / "eval" / "pairs", ROOT / "v54", ROOT / "spec", ROOT / "gen"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--checkpoint", required=True)
    ap.add_argument("--metrics", default=None)
    ap.add_argument("--train-data", required=True)
    ap.add_argument("--test-data", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--limit", type=int, default=60, help="programs per group (seeded sample)")
    ap.add_argument("--acc-tol", type=float, default=5e-3)
    a = ap.parse_args(argv)
    import score_gine
    from eval.pairs import signal_probe as sig
    hv, model, label_to_id, feats, ds_kw, safe = score_gine.load_model(
        a.checkpoint, a.metrics, a.train_data, a.test_data, a.acc_tol)
    cache = {}
    unscored = []

    def score_fn(seq):
        k = tuple(seq)
        if k not in cache:
            rec = [{"sequence": list(seq), "arch": "x86_64", "label": safe}]
            _, prob = hv.predict(model, hv.GINEDatasetV47(rec, label_to_id, feats, **ds_kw))
            # The dataset drops a program it cannot turn into a graph (everything stripped as
            # boilerplate). Such a program gets no prediction, so it is not "called leaking".
            if len(prob) == 0:
                unscored.append(k)
                cache[k] = 0.0
            else:
                cache[k] = float(1.0 - prob[0][label_to_id[safe]])
        return cache[k]
    res = {}
    for name, seqs in sig.groups().items():
        seqs = sorted(seqs)
        random.Random(0).shuffle(seqs)
        res[name] = sig.summary(sig.run(seqs[:a.limit], score_fn))
        print(name, {k: v for k, v in res[name].items() if k != "top_reduced"}, flush=True)
    res["_meta"] = {"model_calls": len(cache), "unscored_programs": len(unscored)}
    Path(a.out).write_text(json.dumps(res, indent=1))
    print(f"model calls: {len(cache)} (no prediction: {len(unscored)}) -> {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
