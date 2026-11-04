"""shared_config.py — class <-> Revizor-config confound test (paper sec:hw-transfer,
gap item D) on the shared-config campaign (commit e0b4e875).

The per-class Revizor configs differ in instruction set and program shape, so
on the old corpus a scaled opcode-count logistic regression names the class at
0.97: class identity was confounded with config. `--shared-config` gives all
classes one instruction set and shape, but COND_BR stays V1-only (the MDS and
L1TF contracts cannot also permit branch speculation), so V1 keeps a branch
tell. The clean test is therefore MDS / L1TF / V4; V1 is reported, flagged.

    # 1. local, after the converted shared files are pushed:
    python3 -m eval.shared_config prepare
    #    writes eval/data/revizor_shared_{train,heldout}.jsonl (seed-disjoint),
    #    eval/data/revizor_shared_{all,heldout}_variants.jsonl (scorer input),
    #    v54/data/v55h_shared_train.jsonl (v55h_train + shared train positives)
    # 2. cluster: bash eval/cluster/submit_shared.sh   (GINE x5 + scoring)
    # 3. local: python3 -m eval.shared_config report --preds NAME=PATH ...
    #    -> eval/shared_config_report.md

Input: eval/data/revizor_<class>_shared.jsonl (the converted campaign, same
record format as revizor_<class>_real.jsonl). V4 SSBP-on / SMT-off control
runs are excluded unless --with-controls.
"""
from __future__ import annotations

import argparse
import json
import random
import re
import statistics
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Optional

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from eval.group_stats import cluster_bootstrap_ci  # noqa: E402

CLASSES = ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1")
CLEAN = ("MDS", "L1TF", "SPECTRE_V4")          # no class-specific instruction tell
DATA = ROOT / "eval" / "data"
SHARED = {c: DATA / f"revizor_{c.lower()}_shared.jsonl" for c in CLASSES}
OLD = {c: DATA / f"revizor_{c.lower()}_real.jsonl" for c in CLASSES}
BASE_POOL = ROOT / "v54" / "data" / "v55h_train.jsonl"
OUT_POOL = ROOT / "v54" / "data" / "v55h_shared_train.jsonl"
_SEED_RE = re.compile(r"/(\d+)/violation")
_CONTROL_RE = re.compile(r"/(ssbp_on|smtoff)/")


def load(p: Path) -> list[dict]:
    return [json.loads(l) for l in open(p) if l.strip()] if p.exists() else []


def seed_group(r: dict) -> str:
    """Programs of one generator seed share a generator stream: never split them."""
    m = _SEED_RE.search(r.get("src_path") or "")
    return f"{r['label']}::{m.group(1) if m else r.get('group')}"


def is_control(r: dict) -> bool:
    return bool(_CONTROL_RE.search(r.get("src_path") or ""))


def split_by_seed(recs: list[dict], frac: float = 0.5, seed: int = 0) -> tuple[list[dict], list[dict]]:
    """Per class, shuffle the seed groups and send `frac` of them (at least one,
    and at least one left for training) to held-out."""
    rng = random.Random(seed)
    held = set()
    for c in sorted({r["label"] for r in recs}):
        gs = sorted({seed_group(r) for r in recs if r["label"] == c})
        rng.shuffle(gs)
        k = min(max(1, round(len(gs) * frac)), len(gs) - 1) if len(gs) > 1 else 0
        held.update(gs[:k])
    return ([r for r in recs if seed_group(r) not in held],
            [r for r in recs if seed_group(r) in held])


def _opcode(ins: str) -> str:
    t = ins.strip().split()
    if t and t[0] in ("lock", "rep", "repe", "repne") and len(t) > 1:
        return t[1].lower()
    return t[0].lower() if t else ""


def opcode_lr_preds(train: list[dict], test: list[dict]) -> list[str]:
    """The paper's opcode bar: standard-scaled opcode-count bag + logistic regression."""
    from sklearn.linear_model import LogisticRegression
    from sklearn.pipeline import make_pipeline
    from sklearn.preprocessing import StandardScaler
    vocab: dict[str, int] = {}
    for r in train:
        for i in r["sequence"]:
            vocab.setdefault(_opcode(i), len(vocab))

    def bag(rs):
        X = np.zeros((len(rs), len(vocab)))
        for k, r in enumerate(rs):
            for i in r["sequence"]:
                j = vocab.get(_opcode(i))
                if j is not None:
                    X[k, j] += 1
        return X
    clf = make_pipeline(StandardScaler(), LogisticRegression(max_iter=3000))
    clf.fit(bag(train), [r["label"] for r in train])
    return [str(p) for p in clf.predict(bag(test))]


def _is_cond_branch(ins: str) -> bool:
    op = _opcode(ins)
    return (op.startswith("j") and op not in ("jmp", "jmpq")) or op.startswith("loop")


def branch_tell(recs: list[dict]) -> dict[str, float]:
    """Share of each class's programs containing a conditional branch."""
    by: dict[str, list[bool]] = defaultdict(list)
    for r in recs:
        by[r["label"]].append(any(_is_cond_branch(i) for i in r["sequence"]))
    return {c: sum(v) / len(v) for c, v in by.items()}


def to_variant_rows(recs: list[dict]) -> list[dict]:
    """Scorer input for eval/score_hwlabel_variants.py --dump-preds."""
    return [dict(r, variant="shared", vuln_class=r["label"]) for r in recs]


def _write(p: Path, rows: list[dict]) -> None:
    with open(p, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")


def load_shared(with_controls: bool = False) -> list[dict]:
    recs = [r for c in CLASSES for r in load(SHARED[c])]
    return recs if with_controls else [r for r in recs if not is_control(r)]


def prepare(with_controls: bool = False, seed: int = 0) -> None:
    recs = load_shared(with_controls)
    if not recs:
        sys.exit(f"no shared-config records: expected {', '.join(str(p) for p in SHARED.values())}")
    tr, te = split_by_seed(recs, seed=seed)
    _write(DATA / "revizor_shared_train.jsonl", tr)
    _write(DATA / "revizor_shared_heldout.jsonl", te)
    _write(DATA / "revizor_shared_all_variants.jsonl", to_variant_rows(recs))
    _write(DATA / "revizor_shared_heldout_variants.jsonl", to_variant_rows(te))
    base = load(BASE_POOL)
    held = {r["group"] for r in te}
    if held & {r.get("group") for r in base + tr}:
        raise ValueError("leak: a held-out shared group is in the training pool")
    _write(OUT_POOL, base + tr)
    print(f"shared: {len(recs)} records ({Counter(r['label'] for r in recs)}); "
          f"train {len(tr)} / heldout {len(te)}; pool {OUT_POOL.name} = {len(base)} + {len(tr)}")


def _acc(recs, preds, classes=None) -> float:
    pairs = [(r, p) for r, p in zip(recs, preds) if classes is None or r["label"] in classes]
    return sum(p == r["label"] for r, p in pairs) / len(pairs) if pairs else float("nan")


def _f(x: float) -> str:
    return "n/a" if x != x else f"{x:.3f}"


def _bar_rows(name: str, recs: list[dict], preds: list[str]) -> str:
    present = [c for c in CLASSES if any(r["label"] == c for r in recs)]
    cells = " | ".join(_f(_acc(recs, preds, (c,))) for c in present)
    return f"| {name} | {_f(_acc(recs, preds))} | {_f(_acc(recs, preds, CLEAN))} | {cells} |"


def _load_preds(specs: list[str], stem: str, recs: list[dict]) -> dict[str, list[Optional[str]]]:
    rows: dict[str, dict] = defaultdict(dict)
    for spec in specs:
        name, _, path = spec.partition("=")
        for line in open(path):
            if line.strip():
                x = json.loads(line)
                if x.get("data") == stem:
                    rows[name][x["group"]] = x["pred"]
    return {n: [m.get(r["group"]) for r in recs] for n, m in rows.items() if m}


def _model_section(title: str, recs: list[dict], preds: dict, bar: list[str]) -> list[str]:
    if not preds:
        return [f"### {title}", "", "(no model predictions given)", ""]
    arms: dict[str, list[str]] = defaultdict(list)
    for k in preds:
        arms[re.sub(r"_s\d+$", "", k)].append(k)
    g = [seed_group(r) for r in recs]
    L = [f"### {title}", "", "| arm | seeds | acc | acc excl. V1 | diff vs opcode bar excl. V1 [95% CI, by seed group] |",
         "|---|---|---|---|---|"]
    keep = [i for i, r in enumerate(recs) if r["label"] in CLEAN]
    for arm, ks in sorted(arms.items()):
        a = [_acc(recs, preds[k]) for k in ks]
        a3 = [_acc(recs, preds[k], CLEAN) for k in ks]
        sd = lambda xs: statistics.stdev(xs) if len(xs) > 1 else float("nan")
        d = [statistics.mean(float(preds[k][i] == recs[i]["label"]) for k in ks)
             - float(bar[i] == recs[i]["label"]) for i in keep]
        m, lo, hi = cluster_bootstrap_ci(d, [g[i] for i in keep], n_boot=2000, seed=0) if keep else (float("nan"),) * 3
        L.append(f"| {arm} | {len(ks)} | {statistics.mean(a):.3f} ± {_f(sd(a))} | "
                 f"{statistics.mean(a3):.3f} ± {_f(sd(a3))} | {m:+.3f} [{_f(lo)}, {_f(hi)}] |")
    return L + [""]


def report(pred_specs: list[str], with_controls: bool = False, out: Path = ROOT / "eval" / "shared_config_report.md") -> None:
    recs = load_shared(with_controls)
    tr, te = load(DATA / "revizor_shared_train.jsonl"), load(DATA / "revizor_shared_heldout.jsonl")
    if not (recs and tr and te):
        sys.exit("run `python3 -m eval.shared_config prepare` first")
    old = [r for c in CLASSES for r in load(OLD[c])]
    present = [c for c in CLASSES if any(r["label"] == c for r in recs)]
    hdr = "| scorer | acc | acc excl. V1 | " + " | ".join(present) + " |"
    sep = "|---|" + "---|" * (len(present) + 2)
    L = ["# Shared-config confound test", "",
         "Old corpus: per-class Revizor configs (opcode bar 0.97 = class given away by config). "
         "Shared corpus: one instruction set + shape for all classes; COND_BR stays V1-only, so "
         "**the clean test is MDS / L1TF / V4 (\"excl. V1\")**. Held-out split is by generator seed.", "",
         "## Inventory", "", "| class | shared records | seed groups | train | heldout | old per-class records |",
         "|---|---|---|---|---|---|"]
    for c in CLASSES:
        L.append(f"| {c} | {sum(r['label'] == c for r in recs)} | "
                 f"{len({seed_group(r) for r in recs if r['label'] == c})} | "
                 f"{sum(r['label'] == c for r in tr)} | {sum(r['label'] == c for r in te)} | "
                 f"{sum(r['label'] == c for r in old)} |")
    bt_old, bt_new = branch_tell(old), branch_tell(recs)
    L += ["", "## Branch tell (share of programs with a conditional branch)", "",
          "| class | old configs | shared config |", "|---|---|---|"]
    L += [f"| {c} | {_f(bt_old.get(c, float('nan')))} | {_f(bt_new.get(c, float('nan')))} |" for c in CLASSES]
    cross = opcode_lr_preds(old, recs) if old else []
    within = opcode_lr_preds(tr, te)
    L += ["", "## Opcode bar (scaled opcode-count LR)", "", hdr, sep]
    if cross:
        L.append(_bar_rows("cross-config: train old, test all shared", recs, cross))
    L.append(_bar_rows("within shared: train shared-train, test heldout", te, within))
    L += ["", "Reading: if cross-config drops far below 0.97 the old 0.97 was the config; "
          "if within-shared excl. V1 stays high, opcodes still carry class under one ISA.", ""]
    P_all = _load_preds(pred_specs, "revizor_shared_all_variants", recs)
    P_te = _load_preds(pred_specs, "revizor_shared_heldout_variants", te)
    cross_models = {k: v for k, v in P_all.items() if not k.startswith("shared_gine")}
    L += _model_section("Cross-config models (trained on old per-class configs) on all shared gadgets",
                        recs, cross_models, cross or ["?"] * len(recs))
    L += _model_section("Models trained on shared-train, scored on shared heldout (T2)",
                        te, {k: v for k, v in P_te.items() if k.startswith("shared_gine")}, within)
    Path(out).write_text("\n".join(L))
    print("wrote", out)


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("cmd", choices=["prepare", "report"])
    ap.add_argument("--with-controls", action="store_true")
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--preds", action="append", default=[], metavar="NAME=PATH")
    a = ap.parse_args(argv)
    if a.cmd == "prepare":
        prepare(a.with_controls, a.seed)
    else:
        report(a.preds, a.with_controls)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
