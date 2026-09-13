# Close L1TF's RISC-V Holdout Coverage Gap Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the RISC-V holdout split's pure-random group shuffle with a stratified one that guarantees every multi-group class (including L1TF, currently zero) gets real holdout representation, then re-run the pipeline to get a trustworthy L1TF recall number.

**Architecture:** One function rewrite (`build_riscv_split()` in `eval/split_riscv_holdout.py`) plus new tests, then a straight re-run of three already-existing, unmodified scripts in sequence (`build_riscv_labeled.py` → the modified `split_riscv_holdout.py` → `train_riscv_augmented.py` → `evaluate_riscv_augmented.py`) to regenerate real checkpoints and a real report.

**Tech Stack:** Python 3, numpy (deterministic seeded shuffling), same PyTorch/GINE training stack as the prior integration work.

## Global Constraints

- `SPECTRE_V4` (1 group) and `SPECTRE_V1` (0 groups) stay permanently unmeasurable — do not attempt to force coverage for either. Pulling `SPECTRE_V4`'s only group to eval would leave it with zero training examples, which is strictly worse.
- No new compilation, no emulators, no new RISC-V source data — this plan only re-splits and re-labels the corpus that already exists.
- `eval/train_riscv_augmented.py` and `eval/evaluate_riscv_augmented.py` are NOT modified — reused exactly as they are, just re-run against the new split's output files.
- The retrain MUST use the same recipe as every prior run in this lineage: `epochs=60, patience=10, hidden-dim=128, num-layers=3, jk-mode=cat, batch-size=32, lr=1e-3, --use-spec-builder`, seeds `[42, 1, 7, 13, 21]` (already hardcoded in `train_riscv_augmented.py` — do not change it).
- The regenerated `RISCV_INTEGRATION_RESULTS.md` must preserve the prior (pre-stratification) result as an explicit comparison, not silently overwrite it.

---

## File Structure

- **Modify:** `eval/split_riscv_holdout.py` — `build_riscv_split()` rewritten to stratify by label instead of a pure random group shuffle.
- **Modify:** `tests/eval/test_split_riscv_holdout.py` — add stratification-guarantee tests alongside the existing invariant tests (all of which still hold and should NOT be deleted).
- **Regenerate (no code change):** `eval/data/riscv_labeled.jsonl`, `eval/data/riscv_train_slice.jsonl`, `eval/data/riscv_eval_holdout.jsonl`, `eval/data/riscv_augmented_train.jsonl`, `eval/group_holdout_riscv/viz_s*/` checkpoints+metrics, `eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md`.

---

### Task 1: Stratified group-holdout split

**Files:**
- Modify: `eval/split_riscv_holdout.py`
- Test: `tests/eval/test_split_riscv_holdout.py`

**Interfaces:**
- Consumes: nothing new — same input shape as before (`list[dict]` with `group`/`label` keys).
- Produces: `build_riscv_split(rows: list[dict]) -> tuple[list[dict], list[dict]]` — same signature as before, so `main()` and any future caller need no changes. Behavior changes: every label with ≥2 groups is now guaranteed to appear in both returned lists; a label with exactly 1 group only appears in the first (train) list.

- [ ] **Step 1: Write the failing tests**

Add these tests to the END of `tests/eval/test_split_riscv_holdout.py` (keep all 4 existing tests in the file — they test invariants that still hold under stratification: no cross-side group, non-empty sides, determinism, same-group-records-stay-together):

```python
def _multi_label_rows():
    rows = []
    # 3 labels with >=2 groups (must be stratified across both sides)
    for i in range(5):
        rows.append(_row(f"riscv_l1tf_{i}", label="L1TF"))
    for i in range(3):
        rows.append(_row(f"riscv_mds_{i}", label="MDS"))
    for i in range(2):
        rows.append(_row(f"riscv_bhi_{i}", label="BHI"))
    # 1 label with exactly 1 group (must stay train-only, can't be stratified)
    rows.append(_row("riscv_v4_0", label="SPECTRE_V4"))
    return rows


def test_every_multi_group_label_appears_on_both_sides():
    rows = _multi_label_rows()
    tr_rows, ev_rows = build_riscv_split(rows)
    tr_labels = {r["label"] for r in tr_rows}
    ev_labels = {r["label"] for r in ev_rows}
    for label in ("L1TF", "MDS", "BHI"):
        assert label in tr_labels, f"{label} missing from train side"
        assert label in ev_labels, f"{label} missing from eval side"


def test_single_group_label_stays_train_only():
    rows = _multi_label_rows()
    tr_rows, ev_rows = build_riscv_split(rows)
    ev_labels = {r["label"] for r in ev_rows}
    tr_labels = {r["label"] for r in tr_rows}
    assert "SPECTRE_V4" not in ev_labels
    assert "SPECTRE_V4" in tr_labels


def test_multi_group_label_keeps_at_least_one_group_in_train():
    rows = _multi_label_rows()
    tr_rows, ev_rows = build_riscv_split(rows)
    for label in ("L1TF", "MDS", "BHI"):
        tr_groups_for_label = {r["group"] for r in tr_rows if r["label"] == label}
        assert len(tr_groups_for_label) >= 1, f"{label} has no group left in train"
```

- [ ] **Step 2: Run tests to verify they fail**

```bash
.venv_fix/bin/pytest tests/eval/test_split_riscv_holdout.py -v
```

Expected: the 3 new tests FAIL (the current pure-random split has no per-label guarantee — with the given seed and this synthetic input, at least one of the 3 multi-group labels will end up missing from one side). The 4 pre-existing tests still PASS (their invariants don't depend on stratification).

- [ ] **Step 3: Rewrite `build_riscv_split()`**

Replace the entire body of `eval/split_riscv_holdout.py` with:

```python
#!/usr/bin/env python3
"""
split_riscv_holdout.py -- STRATIFIED group-holdout split of
eval/data/riscv_labeled.jsonl into a train slice (merged into the x86/ARM
training pool) and a held-out eval slice (never touched by training).

Stratified by label, not a pure random group shuffle: every label with >=2
family groups is guaranteed at least 1 group on EACH side (real holdout
coverage for that class), not left to chance. A label with exactly 1 group
can't be stratified without leaving it with zero training data -- it stays
forced to train. This replaces an earlier pure-random split
(np.random.default_rng(0), single shuffle over all groups) that happened to
put all 6 of L1TF's groups on the train side, leaving L1TF with zero real
holdout examples despite being the largest RISC-V class -- see
docs/superpowers/specs/2026-08-12-riscv-l1tf-coverage-gap-design.md.

No target-ratio top-up pass: coverage is the goal, not hitting an exact
percentage. With the current corpus this naturally lands around 26% eval,
close to the prior ~23% -- if a future corpus change makes the
guarantee-only fraction land far outside a usable holdout size, that's a
reason to revisit this, not something to build defensively now.

Run:  python3 eval/split_riscv_holdout.py
Output: eval/data/riscv_train_slice.jsonl, eval/data/riscv_eval_holdout.jsonl
"""
from __future__ import annotations

import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
LABELED = ROOT / "eval" / "data" / "riscv_labeled.jsonl"
DATA_DIR = ROOT / "eval" / "data"


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_riscv_split(rows):
    groups_by_label = defaultdict(set)
    for r in rows:
        groups_by_label[r["label"]].add(r["group"])

    rng = np.random.default_rng(0)
    eval_groups = set()

    for label in sorted(groups_by_label):
        groups = sorted(groups_by_label[label])
        rng.shuffle(groups)
        if len(groups) >= 2:
            eval_groups.add(groups[0])

    tr_rows = [r for r in rows if r["group"] not in eval_groups]
    ev_rows = [r for r in rows if r["group"] in eval_groups]

    assert not ({r["group"] for r in tr_rows} & {r["group"] for r in ev_rows}), \
        "group leakage in constructed RISC-V split!"
    for label, groups in groups_by_label.items():
        if len(groups) >= 2:
            assert groups & eval_groups, f"{label} has no group in eval holdout"
            assert groups - eval_groups, f"{label} has no group left in train"
    return tr_rows, ev_rows


def main():
    if not LABELED.exists():
        print(f"missing {LABELED} -- run eval/build_riscv_labeled.py first")
        sys.exit(2)
    rows = load(LABELED)
    tr_rows, ev_rows = build_riscv_split(rows)

    DATA_DIR.mkdir(parents=True, exist_ok=True)
    tr_path = DATA_DIR / "riscv_train_slice.jsonl"
    ev_path = DATA_DIR / "riscv_eval_holdout.jsonl"
    with open(tr_path, "w") as f:
        for r in tr_rows:
            f.write(json.dumps(r) + "\n")
    with open(ev_path, "w") as f:
        for r in ev_rows:
            f.write(json.dumps(r) + "\n")

    print(f"riscv pool={len(rows)} groups={len({r['group'] for r in rows})}  "
          f"train-slice={len(tr_rows)} ({len({r['group'] for r in tr_rows})} groups)  "
          f"eval-holdout={len(ev_rows)} ({len({r['group'] for r in ev_rows})} groups)")
    print("train-slice label distribution:", dict(Counter(r["label"] for r in tr_rows)))
    print("eval-holdout label distribution:", dict(Counter(r["label"] for r in ev_rows)))


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run tests to verify they pass**

```bash
.venv_fix/bin/pytest tests/eval/test_split_riscv_holdout.py -v
```

Expected: all 7 tests pass (4 pre-existing + 3 new).

- [ ] **Step 5: Commit**

```bash
git add eval/split_riscv_holdout.py tests/eval/test_split_riscv_holdout.py
git commit -m "fix: stratify riscv holdout split by label instead of pure random group shuffle"
```

---

### Task 2: Regenerate the pipeline and update the results report

**Files:**
- Regenerate (no code changes): `eval/data/riscv_labeled.jsonl`, `eval/data/riscv_train_slice.jsonl`, `eval/data/riscv_eval_holdout.jsonl`, `eval/data/riscv_augmented_train.jsonl`, `eval/group_holdout_riscv/viz_s*/*`, `eval/group_holdout_riscv/*.log`
- Modify (manual doc edit): `eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md`

**Interfaces:**
- Consumes: Task 1's `build_riscv_split()` (via `eval/split_riscv_holdout.py`'s unchanged `main()`), plus `eval/build_riscv_labeled.py`, `eval/train_riscv_augmented.py`, `eval/evaluate_riscv_augmented.py` — all three used exactly as they already exist, no modifications.
- Produces: a real, current `RISCV_INTEGRATION_RESULTS.md` with L1TF measurable, plus a preserved comparison section showing the prior (L1TF-blind) result.

- [ ] **Step 1: Regenerate the labeled corpus**

```bash
.venv_fix/bin/python3 eval/build_riscv_labeled.py
```

Expected: prints a summary ending in `families=27` (down from 28 — losing BENIGN's 1 group), `excluded(BENIGN, vulnerable-classes-only by design)=2`. Confirm `eval/data/riscv_labeled.jsonl` no longer contains any `BENIGN` records: `grep -c '"label": "BENIGN"' eval/data/riscv_labeled.jsonl` should print `0`.

- [ ] **Step 2: Run the new stratified split**

```bash
.venv_fix/bin/python3 eval/split_riscv_holdout.py
```

Expected: prints train/eval group and record counts. Confirm L1TF now has real eval-holdout examples: `python3 -c "import json; print(sum(1 for l in open('eval/data/riscv_eval_holdout.jsonl') if json.loads(l)['label']=='L1TF'))"` must print a number greater than 0. Confirm `SPECTRE_V4` still has zero: same check with `SPECTRE_V4` should print `0`.

- [ ] **Step 3: Retrain**

```bash
.venv_fix/bin/python3 eval/train_riscv_augmented.py
```

Expected: real ~87-minute run (same as the original integration — 5 seeds, no shortcuts). Prints `5/5 seeds succeeded` at the end (if fewer succeed but at least 3 do, that's an acceptable fallback per the original plan's precedent — state it explicitly if it happens, don't hide it).

- [ ] **Step 4: Evaluate and get the new report**

```bash
.venv_fix/bin/python3 eval/evaluate_riscv_augmented.py
```

Expected: regenerates `eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md` fresh. Confirm the per-class table now shows a real (non-UNMEASURABLE) row for `L1TF` with a nonzero `n (real corpus examples)` count. `SPECTRE_V4` and `SPECTRE_V1` should still show `UNMEASURABLE` — that's expected and correct, not a regression.

- [ ] **Step 5: Add the prior-result comparison section**

The regenerated report from Step 4 has no memory of the pre-stratification result. Manually add this section immediately after the report's title (use `Edit`, not a script — this is a one-time documentation addition, not logic worth encoding):

```markdown
## Prior result (pre-stratification split, kept for comparison)

Before this fix, the RISC-V holdout split was a pure random group shuffle
that happened to put all 6 of L1TF's groups on the train side, leaving it
with zero real holdout examples. The headline numbers under that split:

- RISC-V holdout accuracy: 64.24% +/- 6.18% (apples-to-apples control: 30.00% +/- 7.45%)
- x86/ARM regression check: 95.60% +/- 1.67% vs baseline 94.83% +/- 1.50%
- Unmeasurable classes (0 real holdout examples): L1TF, SPECTRE_V4, BENIGN, SPECTRE_V1

See docs/superpowers/specs/2026-08-12-riscv-l1tf-coverage-gap-design.md for
why the split changed. The numbers below reflect the new stratified split,
where L1TF is measurable for the first time. BENIGN no longer appears in
the RISC-V corpus at all as of this run (filtered per the "vulnerable
classes only" constraint) -- it is absent by design, not unmeasurable.
```

- [ ] **Step 6: Run the full test suite**

```bash
.venv_fix/bin/pytest tests/ -q
```

Expected: no regressions vs. the pre-Task-1 baseline, plus Task 1's 3 new tests.

- [ ] **Step 7: Commit**

```bash
git add eval/data/riscv_labeled.jsonl eval/data/riscv_train_slice.jsonl \
        eval/data/riscv_eval_holdout.jsonl eval/data/riscv_augmented_train.jsonl \
        eval/group_holdout_riscv/*/gine_metrics.json \
        eval/group_holdout_riscv/*/training_history.json \
        eval/group_holdout_riscv/*/edge_scale_history.json \
        eval/group_holdout_riscv/*.log \
        eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md
git commit -m "results: stratified riscv split makes L1TF measurable, retrain + updated report"
```

Note: `*.pt` checkpoint files are already gitignored globally — do not force-add them. `.jsonl`/`.log` files needed `git add -f` in the original integration work (they're gitignored by blanket patterns) — check `git status` after the `git add` above; if any of these show as still untracked, use `git add -f` on exactly those paths, matching the precedent from the original integration's Task 3.

---

## Self-Review Notes

- **Spec coverage**: design doc's 3 numbered design sections map directly to Task 1 (stratification algorithm) and Task 2 (re-run pipeline + report comparison section). The design's "Expected outcome" (unmeasurable count 4→2) is Task 2 Step 4's verification check.
- **No placeholders**: both tasks contain complete, exact code/commands. The one open number (Task 2's real L1TF recall) is correctly left for Step 4 to report empirically, not pre-written — matching the design's own statement that this fixes measurability, not accuracy, so a bad-but-real number is a valid outcome.
- **Backward compatibility**: `build_riscv_split(rows)`'s signature is unchanged, so `eval/split_riscv_holdout.py:main()` needs no changes, and neither do `train_riscv_augmented.py`/`evaluate_riscv_augmented.py`, which only consume the output files, never call this function directly.
- **Type/interface consistency**: Task 1's rewritten `build_riscv_split()` returns the exact same `tuple[list[dict], list[dict]]` shape as before; Task 2's regenerated files keep the exact same record schema (`label`, `sequence`, `arch`, `group`, `source_file`) established in the original integration plan.
