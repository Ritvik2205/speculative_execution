from __future__ import annotations
import json, sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parent.parent


def load_rows(paths, arch: str = "x86_64") -> list:
    rows = []
    for p in paths:
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            asm = r.get("realized_asm")
            sig = r.get("signal")
            if not asm or sig is None or not isinstance(sig, (int, float)):
                continue
            gid = r.get("gadget_id", "")
            group = gid.rsplit("_", 1)[-1] if gid else gid
            rows.append({"sequence": asm, "arch": arch, "signal": float(sig),
                         "verdict": r.get("verdict"),
                         "group": group,
                         "gadget_id": gid})
    return rows


def group_split(rows, frac: float = 0.25, seed: int = 0):
    groups = sorted({r["group"] for r in rows})
    rng = np.random.RandomState(seed); rng.shuffle(groups)
    n_test = max(1, int(round(len(groups) * frac)))
    test_g = set(groups[:n_test])
    tr = [r for r in rows if r["group"] not in test_g]
    te = [r for r in rows if r["group"] in test_g]
    return tr, te


def buildable(rows, hook):
    """Mask of rows whose PDG builds (unbuildable -> never selectable)."""
    mask = []
    for r in rows:
        try:
            hook.embed([r]); mask.append(True)
        except Exception:
            mask.append(False)
    return rows, np.array(mask, bool)
