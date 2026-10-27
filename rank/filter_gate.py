#!/usr/bin/env python3
"""filter_gate.py — the leak/safe filter as a pre-oracle gate for the RL loop.

Paper TODO T6: the frozen-encoder head beats the length bar statically
(within-round AUC 0.656, prospective 0.772; rank/eval_v4_filter.py). This wires
it into gen/rl_from_oracle.py so a cheap head decides which realised candidates
are worth an expensive oracle call, and the loop can report
leaks-per-oracle-call with the gate on vs. off.

The head is a StandardScaler + LogisticRegression on the FROZEN locked-classifier
embedding (same estimator as the static eval), persisted as a pickle so the loop
loads it without retraining. Two entry points:

  train:  python3 rank/filter_gate.py train \\
              --samples gen/rl_lencond_samples.jsonl --class SPECTRE_V4 \\
              --out rank/filter_head_SPECTRE_V4.pkl
  use:    gen/rl_from_oracle.py --filter-head rank/filter_head_SPECTRE_V4.pkl \\
              --filter-threshold 0.5

Safety: LeakGate NEVER raises into the loop. If the encoder or head cannot load,
or a candidate's PDG will not build, `score()` returns `pass_value` (default 1.0,
i.e. "let it through"), so a broken gate degrades to the ungated loop rather than
dropping real work. That is the whole contract the loop relies on.
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import pickle
import re
import sys
from pathlib import Path
from typing import List, Optional

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "rank"))


def _asm_from_record(r: dict) -> Optional[List[str]]:
    asm = r.get("realized_asm")
    if isinstance(asm, str):
        asm = [s.encode().decode("unicode_escape")
               for s in re.findall(r"'((?:[^'\\]|\\.)*)'", asm)]
    return asm if isinstance(asm, list) and asm else None


# ---------------------------------------------------------------------------
# training
# ---------------------------------------------------------------------------
def train(samples_glob: str, cls: str, out_path: str, device: str = "cpu") -> dict:
    """Train a leak-vs-safe head on logged samples for one class, save a pickle
    {scaler, model, combined_dim, cls}. UNRUNNABLE is excluded (a different
    question, matching the static eval). Returns a small stats dict."""
    import numpy as np
    from sklearn.linear_model import LogisticRegression
    from sklearn.preprocessing import StandardScaler
    from encoder_hook import EncoderHook

    rows = []
    for p in sorted(glob.glob(samples_glob)):
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            if r.get("class") != cls:
                continue
            v = str(r.get("verdict", "")).lower()
            asm = _asm_from_record(r)
            if v in ("leak", "safe") and asm:
                rows.append({"seq": tuple(asm), "y": int(v == "leak")})
    # dedup + drop conflicting labels
    by = collections.defaultdict(set)
    for r in rows:
        by[r["seq"]].add(r["y"])
    uniq = [{"seq": list(s), "y": next(iter(ys))} for s, ys in by.items() if len(ys) == 1]
    if len({r["y"] for r in uniq}) < 2:
        raise SystemExit(f"{cls}: need both leak and safe examples, got "
                         f"{collections.Counter(r['y'] for r in uniq)}")

    hook = EncoderHook(device=device)
    recs = [{"sequence": r["seq"], "arch": "x86_64"} for r in uniq]
    emb = np.full((len(uniq), hook.combined_dim), np.nan)
    for i, rc in enumerate(recs):
        try:
            emb[i] = hook.embed([rc])[0]
        except Exception:
            pass
    built = ~np.isnan(emb).any(axis=1)
    y = np.array([r["y"] for r in uniq])
    scaler = StandardScaler().fit(emb[built])
    model = LogisticRegression(max_iter=5000, C=0.5).fit(scaler.transform(emb[built]), y[built])
    Path(out_path).parent.mkdir(parents=True, exist_ok=True)
    with open(out_path, "wb") as f:
        pickle.dump({"scaler": scaler, "model": model,
                     "combined_dim": hook.combined_dim, "cls": cls}, f)
    return {"cls": cls, "n": int(built.sum()), "leak": int(y[built].sum()),
            "safe": int((~y[built].astype(bool)).sum()), "out": out_path}


def train_pairwise(samples_glob: str, cls: str, out_path: str, device: str = "cpu",
                   hidden: int = 128, epochs: int = 200) -> dict:
    """Train the PAIRWISE (order-aware) head: rank leak above safe within each
    RL round (rank/pairwise_head.py). Saves the SAME pickle dict shape
    {scaler, model, combined_dim, cls} with `model` a NumpyMLPScorer exposing
    predict_proba, so LeakGate loads it unchanged. UNRUNNABLE excluded, same as
    train(); needs >=1 within-round (leak, safe) pair."""
    import numpy as np
    from sklearn.preprocessing import StandardScaler
    from encoder_hook import EncoderHook
    from pairwise_head import fit_pairwise

    rows = []
    for p in sorted(glob.glob(samples_glob)):
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            if r.get("class") != cls:
                continue
            v = str(r.get("verdict", "")).lower()
            asm = _asm_from_record(r)
            rnd = r.get("round")
            if v in ("leak", "safe") and asm:
                rows.append({"seq": tuple(asm), "y": int(v == "leak"),
                             "round": rnd if rnd is not None else -1})
    # dedup + drop conflicting labels (keep the round of the surviving row)
    by = collections.defaultdict(set)
    rounds = {}
    for r in rows:
        by[r["seq"]].add(r["y"])
        rounds.setdefault(r["seq"], r["round"])
    uniq = [{"seq": list(s), "y": next(iter(ys)), "round": rounds[s]}
            for s, ys in by.items() if len(ys) == 1]
    if len({r["y"] for r in uniq}) < 2:
        raise SystemExit(f"{cls}: need both leak and safe examples, got "
                         f"{collections.Counter(r['y'] for r in uniq)}")

    hook = EncoderHook(device=device)
    recs = [{"sequence": r["seq"], "arch": "x86_64"} for r in uniq]
    emb = np.full((len(uniq), hook.combined_dim), np.nan)
    for i, rc in enumerate(recs):
        try:
            emb[i] = hook.embed([rc])[0]
        except Exception:
            pass
    built = ~np.isnan(emb).any(axis=1)
    y = np.array([r["y"] for r in uniq])
    rnd = np.array([r["round"] for r in uniq])
    scaler = StandardScaler().fit(emb[built])
    model = fit_pairwise(scaler.transform(emb[built]), y[built], rnd[built],
                         hidden=hidden, epochs=epochs, device=device)
    Path(out_path).parent.mkdir(parents=True, exist_ok=True)
    with open(out_path, "wb") as f:
        pickle.dump({"scaler": scaler, "model": model,
                     "combined_dim": hook.combined_dim, "cls": cls}, f)
    return {"cls": cls, "head": "pairwise", "n": int(built.sum()),
            "leak": int(y[built].sum()),
            "safe": int((~y[built].astype(bool)).sum()),
            "rounds": sorted(set(rnd[built].tolist())), "out": out_path}


# ---------------------------------------------------------------------------
# the gate used in the loop
# ---------------------------------------------------------------------------
class LeakGate:
    """Score realised candidates with the persisted head. Never raises into the
    caller: any failure yields `pass_value` so the loop keeps working ungated."""

    def __init__(self, head_path: str, device: str = "cpu", pass_value: float = 1.0):
        self.pass_value = pass_value
        self.ok = False
        try:
            with open(head_path, "rb") as f:
                h = pickle.load(f)
            self.scaler, self.model, self.cls = h["scaler"], h["model"], h["cls"]
            from encoder_hook import EncoderHook
            self.hook = EncoderHook(device=device)
            self.ok = True
        except Exception as e:  # noqa: BLE001
            print(f"[gate] disabled (pass-through): {type(e).__name__}: {e}",
                  file=sys.stderr)

    def score(self, asm: List[str]) -> float:
        """P(leak) for a realised gadget, or pass_value if the gate is off / the
        PDG will not build."""
        if not self.ok or not asm:
            return self.pass_value
        try:
            import numpy as np
            emb = self.hook.embed([{"sequence": list(asm), "arch": "x86_64"}])
            if emb is None or np.isnan(emb).any():
                return self.pass_value
            x = self.scaler.transform(emb)
            return float(self.model.predict_proba(x)[0, 1])
        except Exception:
            return self.pass_value


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    t = sub.add_parser("train")
    t.add_argument("--samples", default=str(ROOT / "gen" / "rl_lencond_samples.jsonl"))
    t.add_argument("--class", dest="cls", required=True)
    t.add_argument("--out", required=True)
    t.add_argument("--device", default="cpu")
    tp = sub.add_parser("train-pairwise")
    tp.add_argument("--samples", default=str(ROOT / "gen" / "rl_lencond_samples.jsonl"))
    tp.add_argument("--class", dest="cls", required=True)
    tp.add_argument("--out", required=True)
    tp.add_argument("--device", default="cpu")
    tp.add_argument("--hidden", type=int, default=128)
    tp.add_argument("--epochs", type=int, default=200)
    a = ap.parse_args(argv)
    if a.cmd == "train":
        print(json.dumps(train(a.samples, a.cls, a.out, a.device), indent=2))
    elif a.cmd == "train-pairwise":
        print(json.dumps(train_pairwise(a.samples, a.cls, a.out, a.device,
                                        a.hidden, a.epochs), indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
