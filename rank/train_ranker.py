from __future__ import annotations
import argparse, glob, json
from pathlib import Path
import numpy as np
from scipy import stats
from rank.encoder_hook import EncoderHook
from rank.regressor import LeakRanker
from rank.data import load_rows, group_split, buildable
from rank.efficiency import efficiency_curve


def run(samples, seeds=(42, 1, 7, 13, 21), beta=1.0, out=None, arch="x86_64", device="cpu"):
    paths = sorted(p for g in samples for p in glob.glob(g))
    rows = load_rows(paths, arch=arch)
    if not rows:
        raise SystemExit(f"no signal-labelled rows in {paths}")
    hook = EncoderHook(device=device)          # built once, shared with LeakRanker
    rows, mask = buildable(rows, hook)         # embed() raises on unbuildable PDGs
    rows = [r for r, m in zip(rows, mask) if m]
    n_groups = len({x["group"] for x in rows})
    if not rows or n_groups < 2:
        raise SystemExit(
            f"insufficient buildable data: {len(rows)} rows, {n_groups} groups "
            "after PDG-buildable filter (need >=2 groups)")
    gains = []
    for s in seeds:
        tr, te = group_split(rows, frac=0.25, seed=s)
        r = LeakRanker(hook, device=device)
        r.fit(tr, np.array([x["signal"] for x in tr]))
        gains.append(efficiency_curve(r, te, beta=beta, seed=s)["auc_gain_over_random"])
    gains = np.array([g for g in gains if g == g])     # drop NaN (degenerate splits)
    mean = float(gains.mean()) if len(gains) else float("nan")
    ci = (float(gains.std(ddof=1) / np.sqrt(len(gains)) * stats.t.ppf(0.975, len(gains) - 1))
          if len(gains) > 1 else float("nan"))
    res = {"n_rows": len(rows), "n_groups": n_groups,
           "seeds_scored": len(gains), "mean_auc_gain_over_random": mean, "ci95": ci,
           "arch": arch, "caveat": "x86_64 SPECTRE_V1 Spectector signal; surrogate, not ground truth"}
    if out:
        Path(out).write_text(
            "# Leak-signal ranker — efficiency vs random\n\n"
            + "\n".join(f"- {k}: {v}" for k, v in res.items()) + "\n")
    print(json.dumps(res, indent=1))
    return res


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", nargs="+", default=["gen/rl_ms/*/samples_signal.jsonl"])
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--beta", type=float, default=1.0)
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--out", default="rank/ranker_eval.md")
    a = ap.parse_args(argv)
    run(a.samples, a.seeds, a.beta, a.out, a.arch)


if __name__ == "__main__":
    main()
