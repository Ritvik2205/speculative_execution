#!/usr/bin/env python3
"""leave_one_isa_out.py — is RISC-V specifically hard, or is cross-ISA
transfer hard in general?

Why this exists: every cross-ISA transfer claim in this repo (the ~70%
ceiling, "coarse spec-42 beats rich candidate features for transfer",
"RISC-V is difficult") rests on exactly ONE measured direction:
x86_64+arm64 -> riscv64 (eval/eval_candidate_features_riscv.py). The RISC-V
corpus is a ~40-rule transliteration of the x86/ARM corpus
(scripts/translate_riscv_inline_asm.py); x86_64 and arm64 are independent of
each other in a way RISC-V is not independent of either. Nobody has run the
other four directions this repo already has the data for:

    x86_64            -> arm64
    arm64             -> x86_64
    x86_64 + arm64    -> riscv64      (the existing, known direction)
    x86_64 + riscv64  -> arm64
    arm64  + riscv64  -> x86_64

For each split and each feature tier (hand-58, spec-42, cand-impurity) this
reports accuracy and macro-F1 with group-aware (cluster-bootstrap, resampling
source families not records) confidence intervals from eval/group_stats.py,
plus the ordinary across-seed spread, and answers three questions plainly
from the measured numbers:

  1. Is cross-ISA transfer symmetric (x86->arm vs arm->x86)?
  2. Is ~70% a ceiling in general, or specific to the riscv64 direction?
  3. Does "coarse spec-42 beats rich candidate features" replicate on an ISA
     pair that is NOT a transliteration of the other (x86<->arm)?

Correctness requirements (see task-4-brief.md):
  - Only classes present in BOTH the train pool and the held-out ISA are
    scored; dropped classes are printed per split.
  - The candidate feature space and its feature SELECTION are fitted on the
    TRAIN ISAs only — the held-out ISA never influences what features exist
    or which ones are kept.
  - Degenerate RISC-V stub records (<=10 instructions — the compiler deleted
    the gadget at -O2, see eval/audit_riscv_labels.py check C) are excluded
    up front, and the exclusion count is printed.
  - Per-split class support is printed; low-n classes are flagged rather than
    left to look like ordinary evidence.
  - use_taint stays OFF everywhere (the default) so these numbers are
    comparable with every other number measured this week.

Run:  python3 eval/leave_one_isa_out.py [--seeds 42 1 7 13 21]
"""
from __future__ import annotations

import argparse
import math
import sys
from collections import Counter
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "eval"))

import inline_features as hf                          # noqa: E402
from spec_features import compute_spec_features        # noqa: E402
from candidate_features import build_space, load_engines  # noqa: E402
from select_features import select, KEEP                # noqa: E402
import train_mlm as T                                    # noqa: E402
from eval_riscv_real import build_riscv_records          # noqa: E402

from group_stats import (                                # noqa: E402
    cluster_bootstrap_ci,
    effective_n,
    group_of,
)

# ---------------------------------------------------------------------------
# Pure helpers (covered by tests/eval/test_leave_one_isa_out.py — no sklearn,
# no torch, no filesystem).
# ---------------------------------------------------------------------------

# Every ordered (train-ISAs -> held-out ISA) split this experiment runs.
# Index 2 is the pre-existing, previously-measured direction; the other four
# are new.
SPLITS = [
    (("x86_64",), "arm64"),
    (("arm64",), "x86_64"),
    (("x86_64", "arm64"), "riscv64"),
    (("x86_64", "riscv64"), "arm64"),
    (("arm64", "riscv64"), "x86_64"),
]

STUB_MAX_INSTR = 10


def n_instructions(sequence) -> int:
    """Count real instruction lines: drop blanks, directives, bare labels."""
    return len([
        l for l in sequence
        if l.strip() and not l.strip().startswith(".") and not l.strip().endswith(":")
    ])


def is_stub(record: dict, max_instr: int = STUB_MAX_INSTR) -> bool:
    """A degenerate RISC-V record: the compiler optimized the gadget away at
    -O2 but the file kept its attack label (eval/audit_riscv_labels.py
    check C)."""
    return n_instructions(record["sequence"]) <= max_instr


def filter_by_arch(records, archs):
    archs = set(archs)
    return [r for r in records if r.get("arch") in archs]


def class_intersection(train_records, test_records):
    """-> (keep, dropped_test_only, dropped_train_only).

    keep: labels present in BOTH train and test — the only ones that may be
    scored.
    dropped_test_only: labels the held-out ISA has that the train pool never
    saw — the model has no mechanism to predict them; these test records
    must be dropped, not scored as automatic misses.
    dropped_train_only: labels the train pool has that the held-out ISA does
    not — never appear in y_true, so they simply never get a chance to be
    scored (not an error, just worth stating).
    """
    train_labels = {r["label"] for r in train_records}
    test_labels = {r["label"] for r in test_records}
    keep = train_labels & test_labels
    dropped_test_only = test_labels - train_labels
    dropped_train_only = train_labels - test_labels
    return keep, dropped_test_only, dropped_train_only


def build_split(records_by_arch: dict, train_archs, held_out_arch: str):
    """Assemble one leave-one-ISA-out split.

    -> (train_records, test_records, keep, dropped_test_only, dropped_train_only)
    train_records is the FULL training pool (no class filtering — the model
    should train on everything it has). test_records is restricted to
    `keep` — the class intersection — per the brief's scoring rule.
    """
    train = []
    for a in train_archs:
        train.extend(records_by_arch.get(a, []))
    test_full = records_by_arch.get(held_out_arch, [])
    keep, dropped_test_only, dropped_train_only = class_intersection(train, test_full)
    test = [r for r in test_full if r["label"] in keep]
    return train, test, keep, dropped_test_only, dropped_train_only


def fmt_ci(lo: float, hi: float) -> str:
    if lo is None or hi is None or math.isnan(lo) or math.isnan(hi):
        return "undefined"
    return f"[{lo:+.2f},{hi:+.2f}]" if lo < 0 or hi < 0 else f"[{lo:.2f},{hi:.2f}]"


def ci95_seeds(x):
    """Ordinary across-seed CI (mean, half-width) — seed variability, NOT
    group-aware. Reported alongside the group-aware CI, not instead of it."""
    x = np.asarray(x, dtype=float)
    m = float(x.mean())
    if len(x) < 2:
        return m, 0.0
    return m, float(x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1))


def group_bootstrap_f1(y_true, y_pred, groups, labels, n_boot=2000, seed=0, alpha=0.05):
    """Cluster (block) bootstrap CI for macro-F1, resampling GROUPS (source
    families) with replacement — the same resampling unit as
    group_stats.cluster_bootstrap_ci, extended to a metric (macro-F1) that
    isn't a simple mean of a per-record scalar, so group_stats.py itself
    can't compute it directly.

    Degenerate case (< 2 unique groups): returns (point, nan, nan) — no
    between-group variance is observable, so the CI is undefined, not zero.
    """
    y_true = np.asarray(y_true)
    y_pred = np.asarray(y_pred)
    groups = np.asarray(groups)
    point = float(f1_score(y_true, y_pred, labels=labels, average="macro",
                            zero_division=0) * 100)
    unique_groups = np.unique(groups)
    if len(unique_groups) < 2:
        return point, float("nan"), float("nan")

    idx_by_group = {g: np.where(groups == g)[0] for g in unique_groups}
    rng = np.random.RandomState(seed)
    boots = np.empty(n_boot)
    for b in range(n_boot):
        chosen = rng.choice(unique_groups, size=len(unique_groups), replace=True)
        idx = np.concatenate([idx_by_group[g] for g in chosen])
        boots[b] = f1_score(y_true[idx], y_pred[idx], labels=labels,
                            average="macro", zero_division=0) * 100
    lo, hi = np.percentile(boots, [100 * alpha / 2, 100 * (1 - alpha / 2)])
    return point, float(lo), float(hi)


# ---------------------------------------------------------------------------
# Main sweep
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--stub-max", type=int, default=STUB_MAX_INSTR)
    ap.add_argument("--n-boot", type=int, default=2000)
    ap.add_argument("--low-support", type=int, default=10,
                    help="flag a class's test support below this as not evidence")
    args = ap.parse_args()

    print("leave_one_isa_out.py — every ordered (train-ISAs -> held-out ISA) "
          "direction available in the existing x86_64/arm64/riscv64 data.\n")

    all_v54 = T.load(T.TRAIN)
    x86 = filter_by_arch(all_v54, ["x86_64"])
    arm = filter_by_arch(all_v54, ["arm64"])
    riscv_full = build_riscv_records()
    stubs = [r for r in riscv_full if is_stub(r, args.stub_max)]
    riscv = [r for r in riscv_full if not is_stub(r, args.stub_max)]
    print(f"riscv64: {len(riscv_full)} labeled corpus records; excluded "
          f"{len(stubs)} degenerate stubs (<= {args.stub_max} instructions, "
          f"gadget optimized away at -O2 — audit_riscv_labels.py check C); "
          f"{len(riscv)} usable.")
    print(f"  stub class mix: {dict(Counter(r['label'] for r in stubs))}\n")

    records_by_arch = {"x86_64": x86, "arm64": arm, "riscv64": riscv}
    for a in ("x86_64", "arm64", "riscv64"):
        recs = records_by_arch[a]
        print(f"{a:10s} n={len(recs):5d}  classes={sorted(set(r['label'] for r in recs))}")
    print()

    engines = load_engines()

    def eng_for(r):
        return engines.get(r.get("arch", "unknown"), engines["unknown"])

    all_results = {}

    for train_archs, held_out in SPLITS:
        split_name = f"{'+'.join(train_archs)} -> {held_out}"
        print("=" * 100)
        print(split_name)
        print("=" * 100)

        train, test, keep, dropped_test_only, dropped_train_only = build_split(
            records_by_arch, train_archs, held_out)

        print(f"train n={len(train)} (archs={list(train_archs)})   "
              f"held-out ISA={held_out}, full n={len(records_by_arch[held_out])}, "
              f"scoreable n={len(test)} (restricted to class intersection)")
        if dropped_test_only:
            print(f"  DROPPED — {held_out} has these classes but the train pool "
                  f"never saw them, so they cannot be scored: {sorted(dropped_test_only)}")
        if dropped_train_only:
            print(f"  train-only classes (train pool has them, {held_out} does not; "
                  f"never appear in y_true so they are simply never scored, not an "
                  f"error): {sorted(dropped_train_only)}")

        support = Counter(r["label"] for r in test)
        print("  class support (held-out, post class-intersection filter):")
        for lbl in sorted(support):
            n = support[lbl]
            flag = "  <-- LOW SUPPORT, not evidence" if n < args.low_support else ""
            print(f"    {lbl:28s} n={n:4d}{flag}")

        if len(test) == 0 or len(keep) == 0:
            print("  no scoreable test records for this split — skipping.\n")
            all_results[split_name] = None
            continue

        keep_sorted = sorted(keep)
        ytr = np.array([r["label"] for r in train])
        yte = np.array([r["label"] for r in test])
        test_groups = np.array([group_of(r) for r in test])
        n_grp = len(np.unique(test_groups))
        eff_n = effective_n(test_groups)
        print(f"  held-out test set clusters into {n_grp} unique source families "
              f"(effective_n={eff_n:.2f} of {len(test)} records) — this is the "
              f"resampling unit for the group-aware CIs below.")
        if n_grp < 2:
            print("  fewer than 2 groups: group-aware CIs are UNDEFINED for this split.")

        # --- feature tiers -------------------------------------------------
        Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in train])
        Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in test])
        Xtr_spec = np.vstack([compute_spec_features(r["sequence"], eng_for(r)) for r in train])
        Xte_spec = np.vstack([compute_spec_features(r["sequence"], eng_for(r)) for r in test])

        # Candidate space + selection fitted on TRAIN ISAs only — the
        # held-out ISA never influences which features exist or are kept.
        space = build_space(train, engines)
        names = space.feature_names()
        Xtr_cand = space.transform(train)
        Xte_cand = space.transform(test)
        sel = select(Xtr_cand, ytr, names, seeds=(args.seeds[0],), verbose=False)
        imp = np.where(np.array(sel["votes"]["impurity"]) == KEEP)[0]
        if len(imp) == 0:
            print("  WARNING: impurity arm kept 0 candidate features on this split's "
                  "train pool; falling back to the full candidate pool.")
            imp = np.arange(Xtr_cand.shape[1])
        print(f"  candidate pool: {Xtr_cand.shape[1]} dims (fitted on train ISAs "
              f"only) -> cand-impurity keeps {len(imp)}")

        configs = {
            "hand-58": (Xtr_hand, Xte_hand),
            "spec-42": (Xtr_spec, Xte_spec),
            "cand-impurity": (Xtr_cand[:, imp], Xte_cand[:, imp]),
        }

        split_result = {
            "train_n": len(train), "test_n": len(test),
            "support": dict(support), "keep": keep_sorted,
            "dropped_test_only": sorted(dropped_test_only),
            "dropped_train_only": sorted(dropped_train_only),
            "n_groups": n_grp, "eff_n": eff_n, "configs": {},
        }

        hdr = (f"\n  {'tier':16s}{'dim':>6s}  {'acc seed-mean':>15s}  "
               f"{'acc group-CI95':>18s}  {'macroF1 seed-mean':>19s}  "
               f"{'macroF1 group-CI95':>21s}")
        print(hdr)
        print("  " + "-" * (len(hdr) - 2))

        for name, (A, B) in configs.items():
            accs, f1s = [], []
            preds_by_seed = {}
            for sd in args.seeds:
                clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                             random_state=sd, class_weight="balanced")
                clf.fit(A, ytr)
                p = clf.predict(B)
                preds_by_seed[sd] = p
                accs.append(accuracy_score(yte, p) * 100)
                f1s.append(f1_score(yte, p, labels=keep_sorted, average="macro",
                                    zero_division=0) * 100)

            acc_mean, acc_hw = ci95_seeds(accs)
            f1_mean, f1_hw = ci95_seeds(f1s)

            # Group-aware CI on the first seed's predictions (the seed sweep
            # already captures training-stochasticity uncertainty above; this
            # captures held-out-ISA source-family clustering, which is the
            # thing eval/group_stats.py exists to fix).
            base_pred = preds_by_seed[args.seeds[0]]
            correct = (yte == base_pred).astype(float)
            gp, glo, ghi = cluster_bootstrap_ci(correct, test_groups,
                                                n_boot=args.n_boot, seed=args.seeds[0])
            acc_grp_str = fmt_ci(None if math.isnan(glo) else glo * 100,
                                 None if math.isnan(ghi) else ghi * 100)

            fp, flo, fhi = group_bootstrap_f1(yte, base_pred, test_groups, keep_sorted,
                                              n_boot=args.n_boot, seed=args.seeds[0])
            f1_grp_str = fmt_ci(flo, fhi)

            print(f"  {name:16s}{A.shape[1]:6d}  {acc_mean:6.2f}+/-{acc_hw:5.2f}  "
                  f"{acc_grp_str:>18s}  {f1_mean:10.2f}+/-{f1_hw:5.2f}  {f1_grp_str:>21s}")

            split_result["configs"][name] = {
                "dim": int(A.shape[1]),
                "acc_seed_mean": acc_mean, "acc_seed_hw": acc_hw, "accs": accs,
                "acc_group_point": gp * 100, "acc_group_ci": [
                    None if math.isnan(glo) else glo * 100,
                    None if math.isnan(ghi) else ghi * 100],
                "f1_seed_mean": f1_mean, "f1_seed_hw": f1_hw, "f1s": f1s,
                "f1_group_point": fp, "f1_group_ci": [
                    None if math.isnan(flo) else flo,
                    None if math.isnan(fhi) else fhi],
            }
        print()
        all_results[split_name] = split_result

    # -----------------------------------------------------------------
    # Verdicts — driven by the measured numbers above, not assumed.
    # -----------------------------------------------------------------
    print("=" * 100)
    print("VERDICTS")
    print("=" * 100)

    def acc_of(split_name, tier):
        r = all_results.get(split_name)
        if r is None:
            return None
        c = r["configs"].get(tier)
        return c["acc_seed_mean"] if c else None

    def hw_of(split_name, tier):
        r = all_results.get(split_name)
        if r is None:
            return None
        c = r["configs"].get(tier)
        return c["acc_seed_hw"] if c else None

    # --- Q1: symmetry ---------------------------------------------------
    print("\n[1] Is cross-ISA transfer symmetric (x86->arm vs arm->x86)?")
    a1 = acc_of("x86_64 -> arm64", "hand-58")
    a2 = acc_of("arm64 -> x86_64", "hand-58")
    r1, r2 = all_results.get("x86_64 -> arm64"), all_results.get("arm64 -> x86_64")
    if a1 is None or a2 is None:
        print("  UNDEFINED: one direction produced no scoreable test records.")
    else:
        diff = a1 - a2
        print(f"  x86->arm hand-58 acc = {a1:.2f}%  (n_test={r1['test_n']}, "
              f"classes scored={r1['keep']})")
        print(f"  arm->x86 hand-58 acc = {a2:.2f}%  (n_test={r2['test_n']}, "
              f"classes scored={r2['keep']})")
        print(f"  difference (x86->arm minus arm->x86) = {diff:+.2f}pp")
        note = ("NOTE: the two directions score different, non-nested class "
                "sets and very different held-out sample sizes/support "
                "(see class support tables above) — this is a comparison of "
                "point estimates under different conditions, not a paired test.")
        if abs(diff) <= 5:
            verdict = "roughly SYMMETRIC at the hand-58 tier"
        else:
            better = "x86->arm" if diff > 0 else "arm->x86"
            verdict = f"NOT symmetric — {better} transfers markedly better ({abs(diff):.1f}pp)"
        print(f"  VERDICT: {verdict}. {note}")

    # --- Q2: is ~70% a general ceiling or riscv64-specific --------------
    print("\n[2] Is ~70% a ceiling in general, or specific to the riscv64 direction?")
    riscv_split = "x86_64+arm64 -> riscv64"
    a_riscv = acc_of(riscv_split, "hand-58")
    other_dirs = ["x86_64 -> arm64", "arm64 -> x86_64",
                  "x86_64+riscv64 -> arm64", "arm64+riscv64 -> x86_64"]
    other_accs = {d: acc_of(d, "hand-58") for d in other_dirs if acc_of(d, "hand-58") is not None}
    if a_riscv is None:
        print("  UNDEFINED: the riscv64 direction produced no scoreable test records.")
    else:
        print(f"  x86+arm -> riscv64 hand-58 acc = {a_riscv:.2f}% "
              f"(n_test={all_results[riscv_split]['test_n']})")
        for d, v in other_accs.items():
            print(f"  {d:32s} hand-58 acc = {v:.2f}%  (n_test={all_results[d]['test_n']})")
        if other_accs:
            mean_other = float(np.mean(list(other_accs.values())))
            min_other = min(other_accs.values())
            if a_riscv <= min_other - 5:
                verdict = ("riscv64-SPECIFIC — every non-riscv64 direction clears the "
                           f"riscv64 number by at least 5pp (lowest non-riscv64 direction "
                           f"= {min_other:.2f}% vs riscv64 = {a_riscv:.2f}%). ~70% is not a "
                           "general cross-ISA transfer ceiling in this data.")
            elif a_riscv >= mean_other - 5 and a_riscv <= mean_other + 5:
                verdict = (f"a GENERAL cross-ISA transfer ceiling — riscv64 "
                           f"({a_riscv:.2f}%) is in the same range as the other directions "
                           f"(mean {mean_other:.2f}%), so the difficulty is not specific to "
                           "riscv64.")
            else:
                verdict = (f"MIXED — riscv64 ({a_riscv:.2f}%) is neither clearly below nor "
                           f"clearly at the level of the other directions (mean "
                           f"{mean_other:.2f}%, range {min(other_accs.values()):.2f}-"
                           f"{max(other_accs.values()):.2f}%); the data does not cleanly "
                           "support either story.")
        else:
            verdict = "UNDEFINED: no other direction produced scoreable results to compare."
        print(f"  VERDICT: {verdict}")

    # --- Q3: does coarse-beats-rich replicate on x86<->arm --------------
    print("\n[3] Does 'coarse spec-42 beats rich candidate features' replicate on "
          "x86<->arm (an ISA pair that is NOT a transliteration of the other)?")
    pair_dirs = ["x86_64 -> arm64", "arm64 -> x86_64"]
    lines = []
    replicate_votes = []
    for d in pair_dirs:
        spec_acc = acc_of(d, "spec-42")
        cand_acc = acc_of(d, "cand-impurity")
        if spec_acc is None or cand_acc is None:
            lines.append(f"  {d:20s}: UNDEFINED (no scoreable test records)")
            continue
        diff = spec_acc - cand_acc
        lines.append(f"  {d:20s}: spec-42={spec_acc:.2f}%  cand-impurity={cand_acc:.2f}%  "
                     f"(spec-42 minus cand-impurity = {diff:+.2f}pp)")
        replicate_votes.append(diff > 0)
    for l in lines:
        print(l)
    if not replicate_votes:
        print("  VERDICT: UNDEFINED — neither x86<->arm direction produced comparable "
              "scoreable results.")
    elif all(replicate_votes):
        print("  VERDICT: REPLICATES — spec-42 beats cand-impurity on both x86<->arm "
              "directions, on corpora that are genuinely independent of each other. "
              "The granularity story is not an artifact of RISC-V being a "
              "transliteration.")
    elif not any(replicate_votes):
        print("  VERDICT: DOES NOT REPLICATE — cand-impurity beats (or ties) spec-42 on "
              "both x86<->arm directions. 'Coarse beats rich' does not hold on a "
              "genuinely independent ISA pair; the original result may be specific to "
              "the riscv64-is-a-transliteration setting it was measured in.")
    else:
        print("  VERDICT: MIXED — the direction of the effect flips between x86->arm "
              "and arm->x86. 'Coarse beats rich' is not a stable property of "
              "cross-ISA transfer in general; at best it holds in one direction.")

    print()


if __name__ == "__main__":
    main()
