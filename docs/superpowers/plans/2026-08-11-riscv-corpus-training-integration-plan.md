# RISC-V Corpus Training Integration Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Integrate the real, already-compiled `riscv_corpus/` (498 files) into the training pipeline with a leakage-safe held-out split, retrain the flagship GINE spec-builder with it mixed in, and measure whether real RISC-V training exposure closes the gap from the 29-34% zero-shot baseline.

**Architecture:** Four scripts in `eval/`, each producing one artifact the next consumes: label+family-group the corpus → group-holdout split it → merge the train slice into the existing x86/ARM group-holdout training pool and retrain 5 seeds → evaluate every checkpoint on both the untouched x86/ARM regression set and the new RISC-V holdout, write a results report.

**Tech Stack:** Python 3, PyTorch (`v54/train_gine_v38.py`, `v54/gine_classifier_v38.py`), numpy/scipy for CI, sklearn for classification reports. Reuses `spec/eval_riscv_real.py`'s label mapping and `eval/group_holdout_full.py`'s split/train mechanics rather than reimplementing them.

## Global Constraints

- No new compilation and no emulators — `riscv_corpus/` already exists and is real; this plan only integrates it into training.
- RISC-V BENIGN class is explicitly out of scope (deferred, tracked as a follow-up in the design doc) — do not add any BENIGN riscv records anywhere in this plan.
- The retrain (Task 3) MUST use the exact same hyperparameters and seeds as `eval/group_holdout_full.py`: `epochs=60, patience=10, hidden-dim=128, num-layers=3, jk-mode=cat, batch-size=32, lr=1e-3, --use-spec-builder`, seeds `[42, 1, 7, 13, 21]`. Reusing the identical recipe is what makes the before/after comparison valid — do not tune or vary any of these values.
- Every new `group` id derived from `riscv_corpus` MUST be prefixed `riscv_` (Task 1) — this guarantees zero namespace collision with existing x86/ARM group ids once the two pools are concatenated in Task 3.
- Group-holdout splitting (Tasks 2) must assert zero group overlap between the two output sides before writing anything, mirroring the existing assertion in `eval/group_holdout_full.py`.
- Regression-check baseline is `eval/data/group_holdout_test.jsonl` evaluated against the *already-existing* group-holdout run (`eval/group_holdout/viz_s*/gine_metrics.json`) — **not** the locked-split "96.14%" number, which is a different, non-comparable split. That existing run's mean±CI (94.83% ± 1.50% accuracy, 89.67% ± 2.84% macro-F1 over the same 5 seeds) is the number Task 4 compares against.
- `eval/data/group_holdout_train.jsonl` and `eval/data/group_holdout_test.jsonl` already exist on disk (produced by a prior `eval/group_holdout_full.py` run) — Tasks 3/4 read them as-is; do not regenerate or modify them.

---

## File Structure

- **Create:** `eval/build_riscv_labeled.py` — labels `riscv_corpus/*.s`, assigns family-collapsed groups, writes `eval/data/riscv_labeled.jsonl`.
- **Create:** `eval/split_riscv_holdout.py` — group-holdout splits `riscv_labeled.jsonl` into `eval/data/riscv_train_slice.jsonl` / `eval/data/riscv_eval_holdout.jsonl`.
- **Create:** `eval/train_riscv_augmented.py` — merges the train slice onto the existing x86/ARM group-holdout training pool, retrains 5 seeds, writes checkpoints under `eval/group_holdout_riscv/viz_s<seed>/`.
- **Create:** `eval/evaluate_riscv_augmented.py` — evaluates every checkpoint on both axes, writes `eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md`.
- **Test:** `tests/eval/test_build_riscv_labeled.py`, `tests/eval/test_split_riscv_holdout.py`, `tests/eval/test_train_riscv_augmented.py`, `tests/eval/test_evaluate_riscv_augmented.py`.

---

### Task 1: Label + family-group `riscv_corpus`

**Files:**
- Create: `eval/build_riscv_labeled.py`
- Test: `tests/eval/test_build_riscv_labeled.py`

**Interfaces:**
- Consumes: `spec/eval_riscv_real.py`'s `CORPUS`, `EXCLUDED_KEYWORDS`, `label_for_stem()`, `extract_sequence()` (existing, unmodified).
- Produces: `family_group(stem: str) -> str` (pure function, later tasks don't call it directly but Task 2 depends on its output shape: groups always prefixed `riscv_`). Writes `eval/data/riscv_labeled.jsonl`, records shaped `{"label": str, "sequence": list[str], "arch": "riscv64", "group": str, "source_file": str}`.

- [ ] **Step 1: Write the failing test**

Create `tests/eval/test_build_riscv_labeled.py`:

```python
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from build_riscv_labeled import family_group  # noqa: E402


def test_family_group_collapses_gen_variants():
    a = family_group("c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0")
    b = family_group("c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_7")
    assert a == b


def test_family_group_strips_arch_marker_before_gen():
    result = family_group("c_vulns_c_code_retbleed_variants_retbleed_rsb_x86_64_gen_3")
    assert "_gen_3" not in result
    assert "x86_64" not in result


def test_family_group_falls_back_to_full_stem_without_gen_suffix():
    result = family_group("c_vulns_c_code_l1tf_pf")
    assert result == "c_vulns_c_code_l1tf_pf"


def test_family_group_distinguishes_different_families():
    a = family_group("c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0")
    b = family_group("c_vulns_c_code_enhanced_variants_bhi_arm64_gen_0")
    assert a != b
```

- [ ] **Step 2: Run test to verify it fails**

Run: `.venv_fix/bin/pytest tests/eval/test_build_riscv_labeled.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'build_riscv_labeled'`

- [ ] **Step 3: Write the implementation**

Create `eval/build_riscv_labeled.py`:

```python
#!/usr/bin/env python3
"""
build_riscv_labeled.py -- builds a family-grouped, labeled jsonl slice of
riscv_corpus/*.s for use as REAL training data (not just zero-shot eval).

Reuses spec/eval_riscv_real.py's exact label mapping (KEYWORD_TO_LABEL,
EXCLUDED_KEYWORDS, extract_sequence) -- already correct and already used by
the existing zero-shot eval scripts -- but replaces its per-opt-level
`group` field with a family-collapsed group that also merges `_gen_N`
mutation variants of the same base template into one group. This matters
for a real train/eval split: distinct `_gen_N` variants of the same source
are near-duplicates, and leaving them in separate groups would let a
near-duplicate of a training example land in the held-out eval set --
exactly the kind of leakage this project already found and fixed once
this session (the spec-vs-hand-features locked-split sign reversal).

Run:  python3 eval/build_riscv_labeled.py
Output: eval/data/riscv_labeled.jsonl
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from eval_riscv_real import (  # noqa: E402
    CORPUS, EXCLUDED_KEYWORDS, label_for_stem, extract_sequence,
)

_OPT_SUFFIX = re.compile(r'\.O[0-9]+\.riscv64\.s$')
FAMILY_RE = re.compile(r'^(.*?)(_arm64|_x86_64)?_gen_\d+')
OUT_PATH = ROOT / "eval" / "data" / "riscv_labeled.jsonl"


def family_group(stem: str) -> str:
    """Collapse `_gen_N` mutation variants of the same base template into
    one group; falls back to the full opt-stripped stem when no `_gen_N`
    suffix is present (e.g. hand-written one-off sources). Always prefixed
    `riscv_` so it can never collide with an x86/ARM group id once merged
    into the shared training pool (Task 3)."""
    m = FAMILY_RE.match(stem)
    base = m.group(1) if m else stem
    return f"riscv_{base}"


def build_records():
    records = []
    excluded = 0
    skipped_unlabeled = 0
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
            "group": family_group(stem),
            "source_file": str(f.relative_to(ROOT)),
        })
    print(f"riscv_corpus files={len(list(CORPUS.glob('*.s')))}  "
          f"labeled records={len(records)}  "
          f"excluded(no ground truth)={excluded}  "
          f"skipped(unrecognized keyword)={skipped_unlabeled}  "
          f"families={len({r['group'] for r in records})}")
    return records


def main():
    if not CORPUS.exists():
        print(f"missing {CORPUS}")
        sys.exit(2)
    records = build_records()
    if not records:
        print("no labeled RISC-V records built")
        sys.exit(2)
    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")
    print(f"wrote {len(records)} records to {OUT_PATH}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

Run: `.venv_fix/bin/pytest tests/eval/test_build_riscv_labeled.py -v`
Expected: 4 passed

- [ ] **Step 5: Run the real pipeline**

Run: `python3 eval/build_riscv_labeled.py`
Expected: prints a summary line (files, labeled records, excluded/skipped counts, family count) and writes `eval/data/riscv_labeled.jsonl`. Based on the corpus's known composition, expect roughly 480-498 labeled records (a handful excluded for `downfall` / unrecognized keywords) across well under 498 families (many files share a family via `_gen_N` collapsing).

- [ ] **Step 6: Commit**

```bash
git add eval/build_riscv_labeled.py tests/eval/test_build_riscv_labeled.py eval/data/riscv_labeled.jsonl
git commit -m "feat: label + family-group riscv_corpus for training integration"
```

---

### Task 2: Group-holdout split of the labeled RISC-V pool

**Files:**
- Create: `eval/split_riscv_holdout.py`
- Test: `tests/eval/test_split_riscv_holdout.py`

**Interfaces:**
- Consumes: `eval/data/riscv_labeled.jsonl` (Task 1's output — records with `group` always prefixed `riscv_`).
- Produces: `build_riscv_split(rows: list[dict]) -> tuple[list[dict], list[dict]]` (pure function — Task 3 does not call this directly, but relies on its output files existing). Writes `eval/data/riscv_train_slice.jsonl`, `eval/data/riscv_eval_holdout.jsonl`.

- [ ] **Step 1: Write the failing test**

Create `tests/eval/test_split_riscv_holdout.py`:

```python
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from split_riscv_holdout import build_riscv_split  # noqa: E402


def _row(group, label="L1TF"):
    return {"group": group, "label": label, "sequence": ["nop"], "arch": "riscv64",
            "source_file": f"riscv_corpus/{group}.s"}


def test_no_group_appears_in_both_sides():
    rows = [_row(f"riscv_fam_{i}") for i in range(20)]
    tr_rows, ev_rows = build_riscv_split(rows)
    tr_groups = {r["group"] for r in tr_rows}
    ev_groups = {r["group"] for r in ev_rows}
    assert not (tr_groups & ev_groups)


def test_both_sides_nonempty_for_realistic_group_count():
    rows = [_row(f"riscv_fam_{i}") for i in range(20)]
    tr_rows, ev_rows = build_riscv_split(rows)
    assert len(tr_rows) > 0
    assert len(ev_rows) > 0


def test_split_is_deterministic():
    rows = [_row(f"riscv_fam_{i}") for i in range(20)]
    tr1, ev1 = build_riscv_split(rows)
    tr2, ev2 = build_riscv_split(rows)
    assert {r["group"] for r in tr1} == {r["group"] for r in tr2}
    assert {r["group"] for r in ev1} == {r["group"] for r in ev2}


def test_multiple_records_same_group_stay_together():
    rows = [_row("riscv_fam_a"), _row("riscv_fam_a"), _row("riscv_fam_b")] * 5
    tr_rows, ev_rows = build_riscv_split(rows)
    tr_groups = {r["group"] for r in tr_rows}
    ev_groups = {r["group"] for r in ev_rows}
    for g in ("riscv_fam_a", "riscv_fam_b"):
        assert not (g in tr_groups and g in ev_groups)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `.venv_fix/bin/pytest tests/eval/test_split_riscv_holdout.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'split_riscv_holdout'`

- [ ] **Step 3: Write the implementation**

Create `eval/split_riscv_holdout.py`:

```python
#!/usr/bin/env python3
"""
split_riscv_holdout.py -- group-holdout split of eval/data/riscv_labeled.jsonl
into a train slice (to merge into the x86/ARM training pool, Task 3) and a
held-out eval slice (to measure whether real RISC-V training exposure helps
-- never touched by training). Same split mechanics as
eval/group_holdout_full.py (np.random.default_rng(0), shuffle groups, cut
ratio), scoped to RISC-V's own family groups only.

Run:  python3 eval/split_riscv_holdout.py
Output: eval/data/riscv_train_slice.jsonl, eval/data/riscv_eval_holdout.jsonl
"""
from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
LABELED = ROOT / "eval" / "data" / "riscv_labeled.jsonl"
DATA_DIR = ROOT / "eval" / "data"
GROUP_CUT = 0.77


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_riscv_split(rows):
    groups = sorted({r["group"] for r in rows})
    rng = np.random.default_rng(0)
    rng.shuffle(groups)
    gcut = int(GROUP_CUT * len(groups))
    eval_groups = set(groups[gcut:])

    tr_rows = [r for r in rows if r["group"] not in eval_groups]
    ev_rows = [r for r in rows if r["group"] in eval_groups]

    assert not ({r["group"] for r in tr_rows} & {r["group"] for r in ev_rows}), \
        "group leakage in constructed RISC-V split!"
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

- [ ] **Step 4: Run test to verify it passes**

Run: `.venv_fix/bin/pytest tests/eval/test_split_riscv_holdout.py -v`
Expected: 4 passed

- [ ] **Step 5: Run the real pipeline**

Run: `python3 eval/split_riscv_holdout.py`
Expected: prints pool/group/split counts and per-side label distributions, writes both output files. Check the printed eval-holdout label distribution — classes with very few families will show up with very few examples on the eval side; this is expected and exactly the "low confidence" case Task 4's report must flag, not a bug to fix here.

- [ ] **Step 6: Commit**

```bash
git add eval/split_riscv_holdout.py tests/eval/test_split_riscv_holdout.py eval/data/riscv_train_slice.jsonl eval/data/riscv_eval_holdout.jsonl
git commit -m "feat: group-holdout split of labeled riscv_corpus"
```

---

### Task 3: Merge into training pool and retrain

**Files:**
- Create: `eval/train_riscv_augmented.py`
- Test: `tests/eval/test_train_riscv_augmented.py`

**Interfaces:**
- Consumes: `eval/data/group_holdout_train.jsonl`, `eval/data/group_holdout_test.jsonl` (pre-existing, from a prior `eval/group_holdout_full.py` run), `eval/data/riscv_train_slice.jsonl` (Task 2's output).
- Produces: `build_augmented_train() -> Path` (pure-ish function over module-level path constants — Task 4 does not call it, but depends on its file-writing side effect: `eval/data/riscv_augmented_train.jsonl`). Trained checkpoints at `eval/group_holdout_riscv/viz_s<seed>/gine_best.pt` + `gine_metrics.json` (Task 4 reads these directly).

- [ ] **Step 1: Write the failing test**

Create `tests/eval/test_train_riscv_augmented.py`:

```python
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

import train_riscv_augmented as tra  # noqa: E402


def _write_jsonl(path, rows):
    with open(path, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")


def test_build_augmented_train_concatenates_both_pools(tmp_path, monkeypatch):
    base_path = tmp_path / "base.jsonl"
    riscv_path = tmp_path / "riscv.jsonl"
    _write_jsonl(base_path, [{"label": "BENIGN", "group": "g1"}] * 3)
    _write_jsonl(riscv_path, [{"label": "L1TF", "group": "riscv_g1"}] * 2)

    monkeypatch.setattr(tra, "GROUP_HOLDOUT_TRAIN", base_path)
    monkeypatch.setattr(tra, "RISCV_TRAIN_SLICE", riscv_path)
    monkeypatch.setattr(tra, "DATA_DIR", tmp_path)

    merged_path = tra.build_augmented_train()
    merged = [json.loads(l) for l in open(merged_path)]
    assert len(merged) == 5
    assert sum(1 for r in merged if r["label"] == "L1TF") == 2
    assert sum(1 for r in merged if r["label"] == "BENIGN") == 3
```

- [ ] **Step 2: Run test to verify it fails**

Run: `.venv_fix/bin/pytest tests/eval/test_train_riscv_augmented.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'train_riscv_augmented'`

- [ ] **Step 3: Write the implementation**

Create `eval/train_riscv_augmented.py`:

```python
#!/usr/bin/env python3
"""
train_riscv_augmented.py -- merges eval/data/riscv_train_slice.jsonl onto
the x86/ARM group-holdout training pool (eval/data/group_holdout_train.jsonl,
produced by eval/group_holdout_full.py) and retrains the flagship GINE
spec-builder (train_gine_v38.py --use-spec-builder) with the SAME
hyperparameters and seeds eval/group_holdout_full.py already used for the
x86/ARM group-holdout baseline -- reusing the same recipe is what makes the
before/after comparison meaningful.

The x86/ARM test set (eval/data/group_holdout_test.jsonl) is left completely
unmodified -- it's the regression check, evaluated separately by
eval/evaluate_riscv_augmented.py.

Prerequisite: eval/data/group_holdout_{train,test}.jsonl and
eval/data/riscv_train_slice.jsonl must already exist (run
eval/group_holdout_full.py, then eval/build_riscv_labeled.py and
eval/split_riscv_holdout.py, before this script).

Run:  python3 eval/train_riscv_augmented.py
~8 min/seed (measured from the existing group_holdout_full.py run's log
timestamps), ~40 min for all 5 seeds.
"""
from __future__ import annotations

import json
import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GROUP_HOLDOUT_TRAIN = ROOT / "eval" / "data" / "group_holdout_train.jsonl"
GROUP_HOLDOUT_TEST = ROOT / "eval" / "data" / "group_holdout_test.jsonl"
RISCV_TRAIN_SLICE = ROOT / "eval" / "data" / "riscv_train_slice.jsonl"
DATA_DIR = ROOT / "eval" / "data"
OUT_DIR = ROOT / "eval" / "group_holdout_riscv"
SEEDS = [42, 1, 7, 13, 21]


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_augmented_train():
    base = load(GROUP_HOLDOUT_TRAIN)
    riscv = load(RISCV_TRAIN_SLICE)
    merged_path = DATA_DIR / "riscv_augmented_train.jsonl"
    with open(merged_path, "w") as f:
        for r in base + riscv:
            f.write(json.dumps(r) + "\n")
    print(f"augmented train pool: {len(base)} base + {len(riscv)} riscv = "
          f"{len(base) + len(riscv)} records")
    return merged_path


def run_seed(sd: int, tr_path: Path, te_path: Path):
    out_dir = OUT_DIR / f"viz_s{sd}"
    log_path = OUT_DIR / f"s{sd}.log"
    cmd = [
        sys.executable, "-u", "train_gine_v38.py",
        "--train-data", str(tr_path), "--test-data", str(te_path),
        "--output-dir", str(out_dir), "--viz-dir", str(out_dir),
        "--epochs", "60", "--patience", "10",
        "--hidden-dim", "128", "--num-layers", "3", "--jk-mode", "cat",
        "--batch-size", "32", "--lr", "1e-3",
        "--use-spec-builder", "--seed", str(sd),
    ]
    print(f"\n=== seed {sd} ===")
    with open(log_path, "w") as logf:
        proc = subprocess.run(cmd, cwd=str(ROOT / "v54"), stdout=logf,
                               stderr=subprocess.STDOUT,
                               env={"TQDM_DISABLE": "1", **os.environ})
    if proc.returncode != 0:
        print(f"  seed {sd} FAILED (see {log_path})")
        return False
    print(f"  seed {sd}: done, checkpoint at {out_dir}/gine_best.pt")
    return True


def main():
    for p in (GROUP_HOLDOUT_TRAIN, GROUP_HOLDOUT_TEST, RISCV_TRAIN_SLICE):
        if not p.exists():
            print(f"missing {p} -- see this script's docstring for prerequisites")
            sys.exit(2)

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    tr_path = build_augmented_train()

    results = {sd: run_seed(sd, tr_path, GROUP_HOLDOUT_TEST) for sd in SEEDS}
    ok = [sd for sd, success in results.items() if success]
    failed = [sd for sd, success in results.items() if not success]
    print(f"\n{len(ok)}/{len(SEEDS)} seeds succeeded" +
          (f"; failed: {failed}" if failed else ""))
    if not ok:
        sys.exit(1)


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

Run: `.venv_fix/bin/pytest tests/eval/test_train_riscv_augmented.py -v`
Expected: 1 passed

- [ ] **Step 5: Run the real pipeline**

Run: `python3 eval/train_riscv_augmented.py`
Expected: prints the augmented pool size, then trains 5 seeds sequentially (~40 min total). If wall-clock makes all 5 seeds impractical in one sitting, it is acceptable to stop after 3 (minimum, per the design doc's stated fallback) — state explicitly in Task 4's report which seeds actually ran; never silently report fewer than intended without saying so. Checkpoints land at `eval/group_holdout_riscv/viz_s<seed>/gine_best.pt`.

- [ ] **Step 6: Commit**

`*.pt` is already globally gitignored (confirmed: `.gitignore:162`), so the checkpoint binaries (`gine_best.pt`) are automatically excluded — do not force-add them. The small metrics/history JSON files are NOT ignored and should be committed, matching the existing `eval/group_holdout/viz_s*/*.json` precedent already in this repo:

```bash
git add eval/train_riscv_augmented.py tests/eval/test_train_riscv_augmented.py \
        eval/data/riscv_augmented_train.jsonl \
        eval/group_holdout_riscv/*/gine_metrics.json \
        eval/group_holdout_riscv/*/training_history.json \
        eval/group_holdout_riscv/*/edge_scale_history.json \
        eval/group_holdout_riscv/*.log
git commit -m "feat: merge riscv train slice into group-holdout pool and retrain"
```

---

### Task 4: Evaluate both axes and write the results report

**Files:**
- Create: `eval/evaluate_riscv_augmented.py`
- Test: `tests/eval/test_evaluate_riscv_augmented.py`

**Interfaces:**
- Consumes: `eval/group_holdout_riscv/viz_s<seed>/gine_best.pt` (Task 3's checkpoints), `eval/data/group_holdout_test.jsonl`, `eval/data/riscv_eval_holdout.jsonl` (Task 2's output).
- Produces: `ci(x: list[float]) -> tuple[float, float]` (pure function). Writes `eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md`.

- [ ] **Step 1: Write the failing test**

Create `tests/eval/test_evaluate_riscv_augmented.py`:

```python
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from evaluate_riscv_augmented import ci  # noqa: E402


def test_ci_single_value_has_zero_width():
    mean, half_width = ci([95.0])
    assert mean == 95.0
    assert half_width == 0.0


def test_ci_identical_values_has_zero_width():
    mean, half_width = ci([90.0, 90.0, 90.0])
    assert mean == 90.0
    assert half_width == 0.0


def test_ci_mean_is_correct():
    mean, half_width = ci([90.0, 92.0, 94.0])
    assert abs(mean - 92.0) < 1e-9
    assert half_width > 0.0
```

- [ ] **Step 2: Run test to verify it fails**

Run: `.venv_fix/bin/pytest tests/eval/test_evaluate_riscv_augmented.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'evaluate_riscv_augmented'`

- [ ] **Step 3: Write the implementation**

Create `eval/evaluate_riscv_augmented.py`:

```python
#!/usr/bin/env python3
"""
evaluate_riscv_augmented.py -- evaluates each of the riscv-augmented
checkpoints (eval/train_riscv_augmented.py's output) on two axes:
  1. eval/data/group_holdout_test.jsonl -- x86/ARM regression check, compared
     against the pre-existing group-holdout baseline (eval/group_holdout_full.py,
     94.83% +/- 1.50% accuracy / 89.67% +/- 2.84% macro-F1 over the same 5 seeds).
  2. eval/data/riscv_eval_holdout.jsonl -- the actual measurement: does real
     RISC-V training exposure raise accuracy above the 29-34% zero-shot
     baseline.
Reports mean +/- 95% CI over available seeds for both axes, plus a per-class
breakdown for the RISC-V holdout with classes under LOW_CONFIDENCE_THRESHOLD
real examples flagged as low-confidence (too few to trust individually).

Run:  python3 eval/evaluate_riscv_augmented.py
Output: eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md
"""
from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
from scipy import stats
from sklearn.metrics import classification_report

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))

from train_gine_v38 import GINEDatasetV47, collate_fn, evaluate, select_device  # noqa: E402
from gine_classifier_v38 import GINEClassifier  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES  # noqa: E402

SEEDS = [42, 1, 7, 13, 21]
CKPT_DIR = ROOT / "eval" / "group_holdout_riscv"
GROUP_HOLDOUT_TEST = ROOT / "eval" / "data" / "group_holdout_test.jsonl"
RISCV_HOLDOUT = ROOT / "eval" / "data" / "riscv_eval_holdout.jsonl"
REPORT_PATH = CKPT_DIR / "RISCV_INTEGRATION_RESULTS.md"
LOW_CONFIDENCE_THRESHOLD = 10

# Cited baselines -- see docs/superpowers/specs/
# 2026-08-11-riscv-corpus-training-integration-design.md
ZERO_SHOT_RISCV_BASELINE = (29.0, 34.0)  # range, prior-session zero-shot eval
XARCH_GROUP_HOLDOUT_BASELINE_ACC = (94.83, 1.50)  # mean, 95% CI half-width


def load_jsonl(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return float(x.mean()), 0.0
    return float(x.mean()), float(x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1))


def evaluate_checkpoint(ckpt_path: Path, records: list, device):
    ckpt = torch.load(ckpt_path, map_location=device, weights_only=False)
    label_to_id = ckpt["label_to_id"]
    feature_names = ckpt["feature_names"]
    ckpt_args = ckpt["args"]
    id_to_label = {i: l for l, i in label_to_id.items()}

    filtered = [r for r in records if r["label"] in label_to_id]

    dataset = GINEDatasetV47(
        filtered, label_to_id, feature_names,
        speculative_window=ckpt_args["speculative_window"],
        strip_bp=not ckpt_args["no_strip"],
        node_feature_mode=ckpt_args["node_feature_mode"],
        use_spec_builder=ckpt_args["use_spec_builder"],
    )
    if len(dataset) == 0:
        return None

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

    acc, preds, labels = evaluate(model, loader, device, desc=ckpt_path.parent.name)
    return acc, preds, labels, id_to_label


def main():
    device = select_device()
    xarch_records = load_jsonl(GROUP_HOLDOUT_TEST)
    riscv_records = load_jsonl(RISCV_HOLDOUT)
    riscv_label_counts = Counter(r["label"] for r in riscv_records)

    xarch_accs, riscv_accs = [], []
    riscv_all_preds, riscv_all_labels, riscv_id_to_label = [], [], None
    seeds_run = []

    for sd in SEEDS:
        ckpt_path = CKPT_DIR / f"viz_s{sd}" / "gine_best.pt"
        if not ckpt_path.exists():
            print(f"seed {sd}: no checkpoint at {ckpt_path}, skipping")
            continue

        xr = evaluate_checkpoint(ckpt_path, xarch_records, device)
        rr = evaluate_checkpoint(ckpt_path, riscv_records, device)
        if xr is None or rr is None:
            print(f"seed {sd}: empty dataset on one axis, skipping")
            continue

        seeds_run.append(sd)
        xarch_accs.append(xr[0] * 100)
        riscv_accs.append(rr[0] * 100)
        riscv_all_preds.extend(rr[1])
        riscv_all_labels.extend(rr[2])
        riscv_id_to_label = rr[3]
        print(f"seed {sd}: x86/ARM acc={xr[0]*100:.2f}%  riscv-holdout acc={rr[0]*100:.2f}%")

    if not seeds_run:
        print("no successful seed evaluations")
        sys.exit(1)

    xarch_mean, xarch_h = ci(xarch_accs)
    riscv_mean, riscv_h = ci(riscv_accs)

    present = sorted(set(riscv_all_labels))
    names = [riscv_id_to_label[i] for i in present]
    per_class = classification_report(riscv_all_labels, riscv_all_preds,
                                       labels=present, target_names=names,
                                       zero_division=0, output_dict=True)

    lines = []
    lines.append("# RISC-V Corpus Training Integration -- Results\n\n")
    lines.append(f"Seeds evaluated: {seeds_run}\n\n")
    lines.append("## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)\n\n")
    lines.append(f"- Baseline (pre-existing group-holdout run): "
                 f"{XARCH_GROUP_HOLDOUT_BASELINE_ACC[0]:.2f}% +/- {XARCH_GROUP_HOLDOUT_BASELINE_ACC[1]:.2f}%\n")
    lines.append(f"- After RISC-V augmentation: {xarch_mean:.2f}% +/- {xarch_h:.2f}%\n\n")
    lines.append("## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)\n\n")
    lines.append(f"- Zero-shot baseline (prior session, no RISC-V training exposure): "
                 f"{ZERO_SHOT_RISCV_BASELINE[0]:.0f}-{ZERO_SHOT_RISCV_BASELINE[1]:.0f}%\n")
    lines.append(f"- After RISC-V augmentation: {riscv_mean:.2f}% +/- {riscv_h:.2f}%\n\n")
    lines.append("## Per-class RISC-V holdout breakdown\n\n")
    lines.append("| class | precision | recall | f1 | n (real examples) | confidence |\n")
    lines.append("|---|---|---|---|---|---|\n")
    for name in names:
        row = per_class[name]
        n = int(row["support"])
        conf = "LOW (few real examples)" if riscv_label_counts.get(name, 0) < LOW_CONFIDENCE_THRESHOLD else "ok"
        lines.append(f"| {name} | {row['precision']:.2f} | {row['recall']:.2f} | "
                     f"{row['f1-score']:.2f} | {n} | {conf} |\n")

    REPORT_PATH.parent.mkdir(parents=True, exist_ok=True)
    REPORT_PATH.write_text("".join(lines))
    print(f"\nwrote {REPORT_PATH}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

Run: `.venv_fix/bin/pytest tests/eval/test_evaluate_riscv_augmented.py -v`
Expected: 3 passed

- [ ] **Step 5: Run the real pipeline**

Run: `python3 eval/evaluate_riscv_augmented.py`
Expected: prints per-seed accuracy on both axes, writes `eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md`. Read the report and state the real numbers honestly — including if the RISC-V holdout number does NOT improve much, or if the regression check shows a real drop on x86/ARM. Both are legitimate, reportable outcomes; this task's job is to measure, not to guarantee a positive result.

- [ ] **Step 6: Run the full test suite**

Run: `.venv_fix/bin/pytest tests/ -q`
Expected: no regressions vs. the pre-Task-1 baseline (246 passed, 1 skipped) plus this plan's new tests.

- [ ] **Step 7: Commit**

```bash
git add eval/evaluate_riscv_augmented.py tests/eval/test_evaluate_riscv_augmented.py eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md
git commit -m "feat: evaluate riscv-augmented checkpoints on regression + riscv-holdout axes"
```

---

## Self-Review Notes

- **Spec coverage**: design's 5 numbered sections map 1:1 to Tasks 1-4 (section 1→Task 1, section 2→Task 2, section 3→Task 3, sections 4+5→Task 4's two-axis evaluation). The design's "Deferred follow-up" (RISC-V BENIGN) is intentionally not a task here — captured only in Global Constraints as an explicit non-goal.
- **No placeholders**: all four scripts are complete, runnable code — no TBD/TODO, no "add error handling" hand-waves. The one genuinely open number (the real post-retrain RISC-V accuracy) is correctly left as an empirical result for Task 4's Step 5 to report, not pre-written.
- **Baseline correction carried through**: the design doc's self-review caught that the correct x86/ARM baseline is the group-holdout run (94.83% ± 1.50%), not the locked-split "96.14%" — that exact corrected number is hardcoded into Task 4's `XARCH_GROUP_HOLDOUT_BASELINE_ACC` constant, verified this session against the existing `eval/group_holdout/viz_s*/gine_metrics.json` files.
- **Type/interface consistency**: `family_group()` (Task 1) always returns a `riscv_`-prefixed string; Task 2's `build_riscv_split()` operates on `group` fields generically, so it doesn't need to know about the prefix but correctly inherits it. Task 3's `build_augmented_train()` and Task 4's `evaluate_checkpoint()` both consume the same `{"label", "sequence", "arch", "group", "source_file"}` record shape Task 1 produces — no field renames across tasks.
- **Prerequisite check**: confirmed this session that `eval/data/group_holdout_train.jsonl` / `group_holdout_test.jsonl` already exist on disk with 5 already-completed seed runs at `eval/group_holdout/viz_s{42,1,7,13,21}/gine_metrics.json` — Task 3 does not need to regenerate them, and Global Constraints says so explicitly.
