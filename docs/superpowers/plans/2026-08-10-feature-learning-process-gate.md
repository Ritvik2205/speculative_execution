# Feature-Learning Process Gate Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Turn the three ad-hoc Phase 0/1 lessons — (1) an independent oracle catches real ISA-spec bugs self-comparison can't see, (2) "parity"/"lift" claims for the learned encoder need multi-seed equivalence testing, not single-seed numbers, (3) RISC-V (or any new arch) onboards via a spec file alone — into one repeatable, scriptable gate that runs before any spec/feature/encoder change is trusted or merged.

**Architecture:** Wrap the existing one-off validation scripts (`spec/validate_external.py`, `eval/equivalence_tost.py`, `eval/full_tost_aggregate.py`) behind two small gate CLIs with recorded baselines and pass/fail exit codes — one for oracle agreement regression, one for per-class recall lift — then chain both behind a single driver script and a written onboarding checklist for new ISAs.

**Tech Stack:** Python 3 (existing repo stack: numpy, scipy, capstone, llvm-mc subprocess), pytest (`.venv_fix/bin/pytest`, already present at `tests/`), bash driver script.

## Global Constraints

- No behavior change to existing validation scripts' current output — only extract reusable functions, don't rewrite their logic.
- Gate scripts must be runnable with **no live model training** (they read cached JSON artifacts already on disk under `eval/full_tost/`) — retraining is a separate, explicit, expensive step the gate does not trigger silently.
- `llvm-mc` is not on PATH in this environment (checked: not at `/opt/homebrew/opt/llvm/bin/llvm-mc` either) — any test touching `ExternalOracle` directly must mock/inject it; only pure comparison/statistics logic gets a real pytest run here. Note this explicitly to whoever runs Task 1/2's integration step.
- Baseline files (`spec/oracle_baseline.json`) are committed data, not code — updating them requires an explicit flag (`--i-verified-the-regression`) to prevent silent threshold creep, matching this repo's existing rigor style (see `SPECDISCOVER_VERIFICATION_GAPS.md` G-numbered findings).
- Follow existing repo conventions: scripts use `ROOT = Path(__file__).resolve().parent.parent`, `sys.path.insert` for cross-directory imports, argparse CLIs, docstring header explaining what/why/run command.

---

## File Structure

- Modify: `spec/validate_external.py` — extract `compute_agreement()` function, `main()` becomes a thin wrapper.
- Create: `spec/gate_oracle_check.py` — pass/fail gate CLI comparing current oracle agreement to a stored baseline.
- Create: `spec/oracle_baseline.json` — committed baseline (agreement %, confusion matrix, coverage) from the current known-good state (98.80%).
- Modify: `spec/validate_riscv_corpus.py` — add `--min-agreement` gate flag, mirroring the same threshold pattern, for new-ISA onboarding.
- Create: `eval/per_class_lift.py` — per-class recall lift statistics (learned/both vs hand) across cached multi-seed run directories.
- Create: `scripts/run_feature_gate.sh` — driver chaining oracle gate + per-class lift, writes `eval/gate_summary.json`.
- Create: `spec/ONBOARDING_NEW_ISA.md` — checklist for adding a new architecture spec, gated by the scripts above.
- Modify: `CLAUDE.md` — add "Feature / Spec Change Gate" pointer under Development Notes.
- Create: `tests/gate/test_oracle_gate.py` — unit tests for the oracle-gate comparison logic (baseline vs current, tolerance, flag enforcement).
- Create: `tests/gate/test_per_class_lift.py` — unit tests for the per-class lift statistics (mean diff, CI, flagging).
- Create: `tests/gate/__init__.py` — empty, package marker (repo's `tests/augmentation/` doesn't use one, but `conftest.py` path-injection at repo root means it's optional; check existing convention before adding — see Task 2 Step 1).

---

### Task 1: Extract reusable `compute_agreement()` from `validate_external.py`

**Files:**
- Modify: `spec/validate_external.py`
- Test: manual re-run (documented below); no pytest here since it requires `llvm-mc`/`capstone` end-to-end.

**Interfaces:**
- Produces: `compute_agreement(data_paths: list[Path] | None = None, limit: int = 0) -> dict` with keys `checked`, `covered`, `agree`, `agreement_pct` (float, `100*agree/covered`), `confusion` (`dict[str, dict[str, int]]`, coarse categories as keys, JSON-serializable — not `defaultdict(Counter)`), `disagreements` (list of `[arch, instr, spec_cat, oracle_cat]`), `skipped_arch` (`dict[str, int]`). `data_paths` defaults to the module's existing `DATA` list when `None`.

- [ ] **Step 1: Read current `main()` to confirm the exact loop body to extract**

Re-read `spec/validate_external.py` lines 56-120 (already read this session) — the loop from `for arch, instr in iter_instructions():` through building `confusion`/`disagreements`/`skipped_arch` is what moves into the new function. Keep `iter_instructions()` as-is but give it a `data_paths` parameter (default `DATA`) instead of reading the module-level `DATA` directly, so `compute_agreement` can point it at a different corpus later (Task 6 doc references this).

- [ ] **Step 2: Write `compute_agreement()`**

Replace lines 56-120 of `spec/validate_external.py` with:

```python
def iter_instructions(data_paths=None):
    seen = set()
    for path in (data_paths or DATA):
        if not path.exists():
            continue
        for line in open(path):
            line = line.strip()
            if not line:
                continue
            r = json.loads(line)
            arch = r.get("arch", "unknown")
            for instr in r.get("sequence", []):
                key = (arch, instr)
                if key in seen:
                    continue
                seen.add(key)
                yield arch, instr


def compute_agreement(data_paths=None, limit=0):
    """Run the oracle cross-check and return a JSON-serializable results dict.

    Shared by the reporting CLI (main, below) and spec/gate_oracle_check.py's
    pass/fail gate — keep this the single source of truth for the comparison
    logic so the two never drift.
    """
    oracle = ExternalOracle()
    engines = {
        "x86_64": load_engine("x86_64.json"),
        "arm64": load_engine("arm64.json"),
        "arm32": load_engine("arm64.json"),
    }

    checked = covered = agree = 0
    confusion = defaultdict(Counter)
    disagreements = []
    skipped_arch = Counter()

    for arch, instr in iter_instructions(data_paths):
        eng = engines.get(arch)
        if eng is None:
            skipped_arch[arch] += 1
            continue
        checked += 1
        if limit and checked > limit:
            checked -= 1
            break

        spec_cat = spec_coarse(eng._cat_name(eng.classify_opcode(instr)))
        orc_cat = oracle.category(instr, arch)
        if orc_cat is None:
            continue
        covered += 1
        confusion[spec_cat][orc_cat] += 1
        if spec_cat == orc_cat:
            agree += 1
        elif len(disagreements) < 40:
            disagreements.append([arch, instr, spec_cat, orc_cat])

    return {
        "checked": checked,
        "covered": covered,
        "agree": agree,
        "agreement_pct": (100 * agree / covered) if covered else 0.0,
        "confusion": {sc: dict(confusion[sc]) for sc in COARSE},
        "disagreements": disagreements,
        "skipped_arch": dict(skipped_arch),
    }
```

Then rewrite `main()` to call it and print the same report format as before (same numbers, same layout) — replace the body from `oracle = ExternalOracle()` through the confusion-matrix/disagreements printing with a call to `result = compute_agreement(limit=args.limit)` and print from `result`'s fields instead of local variables. Keep the `sys.exit(0 if covered > 0 else 2)` line, reading `result["covered"]`.

- [ ] **Step 3: Confirm output is unchanged (manual, requires llvm-mc + capstone)**

This step needs `llvm-mc` on PATH, which is **not present in this environment** — run it wherever that dependency is installed:

```bash
python3 spec/validate_external.py > /tmp/validate_external_after.txt
diff /tmp/validate_external_after.txt spec/external_findings.txt
```

Expected: no diff in the numeric fields (coverage 87.9%, agreement 98.80%, same confusion matrix). If `llvm-mc`/`capstone` aren't available where this runs, skip this step and rely on Task 2's pytest coverage of the pure logic instead — note that in the task's completion message rather than silently skipping.

- [ ] **Step 4: Commit**

```bash
git add spec/validate_external.py
git commit -m "refactor: extract compute_agreement() from validate_external for gate reuse"
```

---

### Task 2: Build `spec/gate_oracle_check.py` + seed `spec/oracle_baseline.json`

**Files:**
- Create: `spec/gate_oracle_check.py`
- Create: `spec/oracle_baseline.json`
- Create: `tests/gate/__init__.py`
- Test: `tests/gate/test_oracle_gate.py`

**Interfaces:**
- Consumes: `compute_agreement()` from Task 1 (`spec/validate_external.py`).
- Produces: `compare_to_baseline(current: dict, baseline: dict, tolerance_pct: float) -> tuple[bool, str]` — `(passed, message)`. Pure function, no I/O, so it's testable without `llvm-mc`.

- [ ] **Step 1: Check whether `tests/` needs `__init__.py` packages**

```bash
ls tests/augmentation/ | head -5
cat tests/pytest.ini 2>/dev/null || find /Users/ritvikgupta/SpecExec -maxdepth 1 -iname "pytest.ini" -o -maxdepth 1 -iname "pyproject.toml"
```

If `tests/augmentation/` has no `__init__.py` and pytest discovers it fine (rootdir-relative discovery, the common case), skip creating `tests/gate/__init__.py` — match the existing convention exactly rather than introducing a new one.

- [ ] **Step 2: Write the failing test for `compare_to_baseline`**

Create `tests/gate/test_oracle_gate.py`:

```python
"""Tests for spec/gate_oracle_check.py's pure comparison logic.

No llvm-mc/capstone dependency here — compare_to_baseline() takes
already-computed dicts, so it's testable without the oracle's external deps
(which are not guaranteed to be on PATH — see plan Global Constraints).
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "spec"))

from gate_oracle_check import compare_to_baseline  # noqa: E402


def _result(agreement_pct, covered=22807):
    return {"agreement_pct": agreement_pct, "covered": covered, "agree": int(covered * agreement_pct / 100)}


def test_pass_when_agreement_matches_baseline():
    baseline = _result(98.80)
    current = _result(98.80)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert passed
    assert "PASS" in msg


def test_pass_when_agreement_improves():
    baseline = _result(98.80)
    current = _result(99.50)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert passed


def test_fail_when_agreement_regresses_beyond_tolerance():
    baseline = _result(98.80)
    current = _result(97.00)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert not passed
    assert "FAIL" in msg
    assert "97.00" in msg and "98.80" in msg


def test_pass_when_regression_within_tolerance():
    baseline = _result(98.80)
    current = _result(98.50)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert passed


def test_fail_when_coverage_collapses_even_if_agreement_pct_holds():
    # 5/5 agreement on covered=5 is 100% agreement but worthless if coverage
    # cratered from 22807 to 5 (e.g. llvm-mc silently broke). Gate must catch this.
    baseline = _result(98.80, covered=22807)
    current = _result(100.0, covered=5)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert not passed
    assert "coverage" in msg.lower()
```

- [ ] **Step 3: Run test to verify it fails (module doesn't exist yet)**

```bash
.venv_fix/bin/pytest tests/gate/test_oracle_gate.py -v
```

Expected: FAIL / collection error — `ModuleNotFoundError: No module named 'gate_oracle_check'`.

- [ ] **Step 4: Write `spec/gate_oracle_check.py`**

```python
#!/usr/bin/env python3
"""
gate_oracle_check.py — pass/fail gate on external-oracle control-flow
agreement, for use before merging any spec/pdg_builder change.

Wraps validate_external.compute_agreement() (the same independent llvm-mc +
capstone cross-check used for the Phase-0 findings, see
PHASE0_EXTERNAL_FINDINGS.md) with a stored baseline and a tolerance, so a spec
edit that silently regresses control-flow categorization fails CI/local gate
instead of being caught by chance in a later ablation run.

Run (check against baseline, exit 1 on regression):
  python3 spec/gate_oracle_check.py

Update the baseline after a verified, intentional improvement (requires the
explicit flag so baselines can't be silently ratcheted down):
  python3 spec/gate_oracle_check.py --update-baseline --i-verified-the-regression
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from validate_external import compute_agreement  # noqa: E402

BASELINE_PATH = ROOT / "spec" / "oracle_baseline.json"
DEFAULT_TOLERANCE_PCT = 0.5
DEFAULT_MIN_COVERAGE = 0.9  # current run's covered count must be >= 90% of baseline's


def compare_to_baseline(current: dict, baseline: dict, tolerance_pct: float = DEFAULT_TOLERANCE_PCT) -> tuple[bool, str]:
    """Pure comparison — no I/O, so it's unit-testable without the oracle deps."""
    cur_pct, base_pct = current["agreement_pct"], baseline["agreement_pct"]
    cur_cov, base_cov = current["covered"], baseline["covered"]

    if base_cov and cur_cov < DEFAULT_MIN_COVERAGE * base_cov:
        return False, (
            f"FAIL: oracle coverage collapsed ({cur_cov} vs baseline {base_cov}, "
            f"< {DEFAULT_MIN_COVERAGE:.0%} threshold) — agreement_pct alone is "
            f"meaningless here (current={cur_pct:.2f}%, baseline={base_pct:.2f}%)"
        )

    diff = cur_pct - base_pct
    if diff < -tolerance_pct:
        return False, (
            f"FAIL: oracle agreement regressed {cur_pct:.2f}% vs baseline "
            f"{base_pct:.2f}% (diff {diff:+.2f}pp, tolerance {tolerance_pct}pp)"
        )
    return True, f"PASS: oracle agreement {cur_pct:.2f}% (baseline {base_pct:.2f}%, diff {diff:+.2f}pp)"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tolerance-pct", type=float, default=DEFAULT_TOLERANCE_PCT)
    ap.add_argument("--update-baseline", action="store_true")
    ap.add_argument("--i-verified-the-regression", action="store_true",
                     help="required alongside --update-baseline to confirm the "
                          "new baseline was reviewed, not just accepted by default")
    args = ap.parse_args()

    current = compute_agreement()
    print(f"current: agreement={current['agreement_pct']:.2f}% "
          f"covered={current['covered']} checked={current['checked']}")

    if args.update_baseline:
        if not args.i_verified_the_regression:
            print("FAIL: --update-baseline requires --i-verified-the-regression "
                  "(prevents silent baseline creep)")
            sys.exit(1)
        BASELINE_PATH.write_text(json.dumps(current, indent=2) + "\n")
        print(f"baseline updated -> {BASELINE_PATH}")
        sys.exit(0)

    if not BASELINE_PATH.exists():
        print(f"FAIL: no baseline at {BASELINE_PATH}; run with --update-baseline "
              f"--i-verified-the-regression to seed one")
        sys.exit(1)

    baseline = json.loads(BASELINE_PATH.read_text())
    passed, msg = compare_to_baseline(current, baseline, args.tolerance_pct)
    print(msg)
    sys.exit(0 if passed else 1)


if __name__ == "__main__":
    main()
```

- [ ] **Step 5: Run test to verify it passes**

```bash
.venv_fix/bin/pytest tests/gate/test_oracle_gate.py -v
```

Expected: 5 passed.

- [ ] **Step 6: Seed `spec/oracle_baseline.json` from the known-good Phase-0 numbers**

This needs a live run (`llvm-mc` required — see Global Constraints). If `llvm-mc` is available in the run environment:

```bash
python3 spec/gate_oracle_check.py --update-baseline --i-verified-the-regression
```

If it is **not** available in this environment, hand-seed the file from the already-verified numbers in `spec/PHASE0_EXTERNAL_FINDINGS.md` (checked=25942, covered=22807, agree=22533) instead of leaving the gate unusable — write `spec/oracle_baseline.json`:

```json
{
  "checked": 25942,
  "covered": 22807,
  "agree": 22533,
  "agreement_pct": 98.79993858288815,
  "confusion": {
    "CALL": {"CALL": 60, "OTHER": 42},
    "RET": {"RET": 18, "OTHER": 3},
    "JUMP": {"JUMP": 749, "OTHER": 19},
    "OTHER": {"CALL": 31, "JUMP": 179, "OTHER": 21706}
  },
  "disagreements": [],
  "skipped_arch": {}
}
```

Note in the commit message which path was taken (live run vs. hand-seeded from the findings doc) so a future run knows whether to re-verify.

- [ ] **Step 7: Commit**

```bash
git add spec/gate_oracle_check.py spec/oracle_baseline.json tests/gate/test_oracle_gate.py
git commit -m "feat: add oracle-agreement regression gate with baseline tracking"
```

---

### Task 3: Add `--min-agreement` gate flag to `spec/validate_riscv_corpus.py`

**Files:**
- Modify: `spec/validate_riscv_corpus.py`

**Interfaces:**
- Consumes: nothing new from other tasks — this is a small, self-contained addition mirroring Task 2's threshold idea for the RISC-V-specific (corpus-dir-based, not jsonl-based) oracle check, so new-ISA onboarding (Task 7's doc) has one command to gate on.

- [ ] **Step 1: Read the rest of the file to find where agreement % is computed/printed**

```bash
sed -n '1,200p' spec/validate_riscv_corpus.py
```

(Already read lines 1-40 this session; read the remainder to find the exact variable name holding the final agreement percentage and the `if __name__` block.)

- [ ] **Step 2: Add the flag**

In the `argparse` setup (add one if none exists — check first), add:

```python
ap.add_argument("--min-agreement", type=float, default=None,
                 help="exit 1 if oracle agreement %% falls below this threshold "
                      "(for gating new-ISA onboarding, see spec/ONBOARDING_NEW_ISA.md)")
```

At the end of `main()`, after the agreement percentage is computed and printed (reuse the existing local variable — do not recompute), add:

```python
if args.min_agreement is not None and agreement_pct < args.min_agreement:
    print(f"FAIL: RISC-V oracle agreement {agreement_pct:.2f}% < "
          f"required {args.min_agreement:.2f}%")
    sys.exit(1)
```

Adjust `agreement_pct`'s actual variable name to whatever Step 1 finds — do not guess if it differs from this sketch.

- [ ] **Step 3: Verify the script still runs its default (no-flag) path unchanged**

```bash
python3 spec/validate_riscv_corpus.py
```

(Requires `llvm-mc` — if unavailable here, verify by reading the diff instead: confirm the only change is the new flag and the trailing `if` block, nothing in the existing print/compute logic touched.)

- [ ] **Step 4: Commit**

```bash
git add spec/validate_riscv_corpus.py
git commit -m "feat: add --min-agreement gate flag to RISC-V corpus oracle check"
```

---

### Task 4: Build `eval/per_class_lift.py` (per-class recall lift, learned/both vs hand)

**Files:**
- Create: `eval/per_class_lift.py`
- Test: `tests/gate/test_per_class_lift.py`
- Test fixtures: `tests/gate/fixtures/per_class_lift/` (small synthetic `gine_metrics.json` files)

**Interfaces:**
- Consumes: nothing from other tasks. Reads `{results_dir}/viz_{mode}_s{seed}/gine_metrics.json` (produced by `v54/train_gine_v38.py`, confirmed this session: `report_dict = classification_report(..., output_dict=True)` saved under `metrics['classification_report']`, with class keys `BENIGN, BRANCH_HISTORY_INJECTION, INCEPTION, L1TF, MDS, RETBLEED, SPECTRE_RSB, SPECTRE_V1, SPECTRE_V2, SPECTRE_V4` plus `accuracy/macro avg/weighted avg`).
- Produces: `load_recalls(results_dir: Path, mode: str, seeds: list[int]) -> dict[str, list[float]]` (class name -> per-seed recall list) and `per_class_lift(hand: dict, other: dict) -> dict[str, dict]` (class name -> `{mean_diff, ci95, lift_significant}`, where `lift_significant` is true iff the 95% CI of `other - hand` excludes 0).

- [ ] **Step 1: Write the failing test**

Create `tests/gate/fixtures/per_class_lift/viz_hand_s1/gine_metrics.json` and four more seed dirs (`s7`, `s13`, `s21`, `s42`) for `hand`, and the same five seeds under `viz_both_s{seed}/gine_metrics.json`, each containing a minimal `classification_report` dict:

```python
# fixture generator — run once to materialize the files, not part of the test itself
import json
from pathlib import Path

FIX = Path(__file__).parent / "fixtures" / "per_class_lift"
SEEDS = [1, 7, 13, 21, 42]
# hand: L1TF recall hovers ~0.80; both: L1TF recall hovers ~0.90 (a real, consistent lift)
HAND_L1TF = [0.79, 0.81, 0.80, 0.78, 0.82]
BOTH_L1TF = [0.91, 0.89, 0.90, 0.92, 0.88]
# BENIGN: both modes ~identical (noise only, no real lift)
HAND_BENIGN = [0.97, 0.96, 0.98, 0.97, 0.96]
BOTH_BENIGN = [0.96, 0.98, 0.97, 0.96, 0.97]

for mode, l1tf, benign in [("hand", HAND_L1TF, HAND_BENIGN), ("both", BOTH_L1TF, BOTH_BENIGN)]:
    for seed, l1tf_r, benign_r in zip(SEEDS, l1tf, benign):
        d = FIX / f"viz_{mode}_s{seed}"
        d.mkdir(parents=True, exist_ok=True)
        report = {
            "BENIGN": {"recall": benign_r, "precision": 0.95, "f1-score": 0.96, "support": 100},
            "L1TF": {"recall": l1tf_r, "precision": 0.85, "f1-score": 0.82, "support": 50},
            "accuracy": 0.9,
            "macro avg": {"recall": 0.9, "precision": 0.9, "f1-score": 0.9, "support": 150},
        }
        (d / "gine_metrics.json").write_text(json.dumps({"classification_report": report}))
```

Run this generator once by hand (`python3 -c "exec(open('/tmp/gen_fixtures.py').read())"` with the snippet above saved to a temp file, or inline it directly as a pytest fixture using `tmp_path` instead of committed files — **prefer `tmp_path`**: it avoids committing generated JSON and keeps the test self-contained). Rewrite `tests/gate/test_per_class_lift.py` to build fixtures via `tmp_path`:

```python
"""Tests for eval/per_class_lift.py's recall-lift statistics."""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "eval"))

from per_class_lift import load_recalls, per_class_lift  # noqa: E402

SEEDS = [1, 7, 13, 21, 42]


def _write_mode(results_dir, mode, l1tf, benign):
    for seed, l1tf_r, benign_r in zip(SEEDS, l1tf, benign):
        d = results_dir / f"viz_{mode}_s{seed}"
        d.mkdir(parents=True)
        report = {
            "BENIGN": {"recall": benign_r},
            "L1TF": {"recall": l1tf_r},
            "accuracy": 0.9,
            "macro avg": {"recall": 0.9},
        }
        (d / "gine_metrics.json").write_text(json.dumps({"classification_report": report}))


def test_load_recalls_reads_per_seed_values(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    recalls = load_recalls(tmp_path, "hand", SEEDS)
    assert recalls["L1TF"] == [0.79, 0.81, 0.80, 0.78, 0.82]
    assert len(recalls["BENIGN"]) == 5


def test_real_lift_flagged_significant(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.91, 0.89, 0.90, 0.92, 0.88], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls(tmp_path, "hand", SEEDS)
    both = load_recalls(tmp_path, "both", SEEDS)
    result = per_class_lift(hand, both)
    assert result["L1TF"]["mean_diff"] > 0.05
    assert result["L1TF"]["lift_significant"] is True


def test_noise_only_not_flagged_significant(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.91, 0.89, 0.90, 0.92, 0.88], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls(tmp_path, "hand", SEEDS)
    both = load_recalls(tmp_path, "both", SEEDS)
    result = per_class_lift(hand, both)
    assert result["BENIGN"]["lift_significant"] is False
```

- [ ] **Step 2: Run test to verify it fails**

```bash
.venv_fix/bin/pytest tests/gate/test_per_class_lift.py -v
```

Expected: FAIL — `ModuleNotFoundError: No module named 'per_class_lift'`.

- [ ] **Step 3: Write `eval/per_class_lift.py`**

```python
#!/usr/bin/env python3
"""
per_class_lift.py — does fusing learned encoder features actually lift RARE
classes, or is the aggregate-accuracy TOST result (eval/full_tost_aggregate.py)
hiding a per-class story?

eval/equivalence_tost.py and eval/full_tost_aggregate.py answer "is learned
equivalent to hand overall" (macro accuracy/F1). Neither breaks that down by
class, so the claim "learned complements hand, mainly on rare classes" was
never directly measured — only inferred. This reads the per-seed
classification_report already saved by v54/train_gine_v38.py
(gine_metrics.json['classification_report'][CLASS]['recall']) across the
hand/learned/both runs in eval/full_tost/, and for each class reports the mean
recall diff (other_mode - hand) with a 95% CI, flagging classes where the CI
excludes 0 (a real, not noise-level, per-class effect).

Run (against the cached full_tost results already on disk):
  python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode both
  python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode learned
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

import numpy as np
from scipy import stats

DEFAULT_SEEDS = [42, 1, 7, 13, 21]
NON_CLASS_KEYS = {"accuracy", "macro avg", "weighted avg"}


def load_recalls(results_dir: Path, mode: str, seeds: list[int]) -> dict:
    """class name -> list of per-seed recall values, across seeds where the
    class was present in the test set's classification_report."""
    per_class = {}
    for seed in seeds:
        p = Path(results_dir) / f"viz_{mode}_s{seed}" / "gine_metrics.json"
        if not p.exists():
            continue
        report = json.loads(p.read_text())["classification_report"]
        for cls, stats_dict in report.items():
            if cls in NON_CLASS_KEYS:
                continue
            per_class.setdefault(cls, []).append(stats_dict["recall"])
    return per_class


def per_class_lift(hand: dict, other: dict) -> dict:
    """For each class present in both modes with >=2 seeds each, compute the
    mean recall diff (other - hand) and a 95% CI (paired-by-seed-index t-CI on
    the diffs would be tighter, but hand/other seed lists aren't guaranteed
    aligned 1:1 by seed value across sparse test-set class presence — use the
    unpaired two-sample CI on the difference of means, consistent with how
    eval/equivalence_tost.py treats accuracy)."""
    result = {}
    for cls in sorted(set(hand) & set(other)):
        h, o = np.asarray(hand[cls], float), np.asarray(other[cls], float)
        if len(h) < 2 or len(o) < 2:
            continue
        diff = o.mean() - h.mean()
        se = np.sqrt(h.var(ddof=1) / len(h) + o.var(ddof=1) / len(o))
        dof = (h.var(ddof=1) / len(h) + o.var(ddof=1) / len(o)) ** 2 / (
            (h.var(ddof=1) / len(h)) ** 2 / (len(h) - 1)
            + (o.var(ddof=1) / len(o)) ** 2 / (len(o) - 1)
        )
        half = se * stats.t.ppf(0.975, dof) if se > 0 else 0.0
        lo, hi = diff - half, diff + half
        result[cls] = {
            "hand_mean": h.mean(), "other_mean": o.mean(),
            "mean_diff": diff, "ci95": [lo, hi],
            "lift_significant": bool(lo > 0 or hi < 0),
        }
    return result


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--results-dir", type=Path, default=Path("eval/full_tost"))
    ap.add_argument("--other-mode", choices=["learned", "both"], default="both")
    ap.add_argument("--seeds", type=int, nargs="+", default=DEFAULT_SEEDS)
    ap.add_argument("--out", type=Path, default=None,
                     help="optional path to write the full result dict as JSON")
    args = ap.parse_args()

    hand = load_recalls(args.results_dir, "hand", args.seeds)
    other = load_recalls(args.results_dir, args.other_mode, args.seeds)
    result = per_class_lift(hand, other)

    print(f"per-class recall lift: {args.other_mode} vs hand "
          f"({args.results_dir}, seeds={args.seeds})\n")
    print(f"{'class':30s} {'hand':>8s} {args.other_mode:>8s} {'diff':>8s} {'95% CI':>18s} {'sig?':>5s}")
    for cls, r in sorted(result.items(), key=lambda kv: -abs(kv[1]["mean_diff"])):
        sig = "YES" if r["lift_significant"] else "no"
        print(f"{cls:30s} {r['hand_mean']:8.3f} {r['other_mean']:8.3f} "
              f"{r['mean_diff']:+8.3f} [{r['ci95'][0]:+.3f},{r['ci95'][1]:+.3f}] {sig:>5s}")

    if args.out:
        args.out.write_text(json.dumps(result, indent=2))
        print(f"\nwritten -> {args.out}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

```bash
.venv_fix/bin/pytest tests/gate/test_per_class_lift.py -v
```

Expected: 3 passed.

- [ ] **Step 5: Commit**

```bash
git add eval/per_class_lift.py tests/gate/test_per_class_lift.py
git commit -m "feat: add per-class recall lift stats for learned-feature fusion claims"
```

---

### Task 5: Run `per_class_lift.py` against the real cached `eval/full_tost/` results

**Files:**
- Create: `eval/per_class_lift_results.json` (generated output, committed as evidence)

**Interfaces:**
- Consumes: `eval/per_class_lift.py` from Task 4, real data already on disk at `eval/full_tost/viz_{hand,learned,both}_s{1,7,13,21,42}/gine_metrics.json` (confirmed present this session).

- [ ] **Step 1: Run against real data — no training needed, this data already exists**

```bash
python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode both \
  --out eval/per_class_lift_results.json
python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode learned
```

- [ ] **Step 2: Read the output and check it against the memory claim**

The memory file (`specdiscover-phase1-learned-features.md` per `MEMORY.md`) says learned features help rare classes when combined. Check whether `BRANCH_HISTORY_INJECTION`, `L1TF`, `RETBLEED`, `SPECTRE_V2` show `lift_significant: true` with positive `mean_diff` in the `both` output, and whether `BENIGN`/majority classes don't. This step doesn't change code — it's the first real evidence check this plan produces. If the result contradicts the memory's framing, that's a genuine finding — do not force the numbers to match the prior belief; report what the script says.

- [ ] **Step 3: Commit the evidence artifact**

```bash
git add eval/per_class_lift_results.json
git commit -m "results: first per-class recall lift measurement (learned+both vs hand)"
```

---

### Task 6: Build the driver `scripts/run_feature_gate.sh`

**Files:**
- Create: `scripts/run_feature_gate.sh`

**Interfaces:**
- Consumes: `spec/gate_oracle_check.py` (Task 2), `eval/per_class_lift.py` (Task 4).
- Produces: `eval/gate_summary.json` with `{"oracle_gate": "PASS"|"FAIL", "per_class_lift_computed": true|false, "timestamp_note": "..."}`.

- [ ] **Step 1: Check existing shell script conventions**

```bash
cat eval/run_full_tost.sh   # already read this session — mirror its style: set -uo pipefail, cd to repo-relative dir, no fancy bashisms
```

- [ ] **Step 2: Write `scripts/run_feature_gate.sh`**

```bash
#!/usr/bin/env bash
# run_feature_gate.sh — the one command to run before trusting/merging any
# spec, feature-extraction, or encoder change. Chains:
#   1. oracle-agreement regression gate (spec/gate_oracle_check.py)
#   2. per-class recall lift report (eval/per_class_lift.py, reads cached
#      eval/full_tost/ results — does NOT retrain; run eval/run_full_tost.sh
#      separately first if those results are stale for your change)
# Writes eval/gate_summary.json with a PASS/FAIL verdict for stage 1 (stage 2
# is a report, not a gate — no pre-registered per-class threshold exists yet).
set -uo pipefail
cd "$(dirname "$0")/.."

echo "=== 1/2: oracle agreement gate ==="
python3 spec/gate_oracle_check.py
ORACLE_STATUS=$?

echo
echo "=== 2/2: per-class recall lift (reads cached eval/full_tost/ results) ==="
python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode both \
  --out eval/per_class_lift_results.json
LIFT_STATUS=$?

python3 - "$ORACLE_STATUS" "$LIFT_STATUS" <<'PYEOF'
import json
import sys
oracle_status, lift_status = int(sys.argv[1]), int(sys.argv[2])
summary = {
    "oracle_gate": "PASS" if oracle_status == 0 else "FAIL",
    "per_class_lift_computed": lift_status == 0,
}
with open("eval/gate_summary.json", "w") as f:
    json.dump(summary, f, indent=2)
print(f"\ngate summary -> eval/gate_summary.json: {summary}")
PYEOF

exit $ORACLE_STATUS
```

- [ ] **Step 3: Make it executable and run it**

```bash
chmod +x scripts/run_feature_gate.sh
./scripts/run_feature_gate.sh
```

Expected: prints both stages, writes `eval/gate_summary.json`, exits 0 if the oracle gate passes (it will fail here without `llvm-mc` — note that in the run output rather than treating it as a script bug; the gate script working correctly and the environment lacking `llvm-mc` are two different things).

- [ ] **Step 4: Commit**

```bash
git add scripts/run_feature_gate.sh eval/gate_summary.json
git commit -m "feat: add run_feature_gate.sh driver chaining oracle + lift gates"
```

---

### Task 7: Write `spec/ONBOARDING_NEW_ISA.md`

**Files:**
- Create: `spec/ONBOARDING_NEW_ISA.md`

**Interfaces:**
- Consumes: nothing executable — references Tasks 2, 3, 6's scripts by path and documents the RISC-V precedent (`spec/riscv.json`, `spec/validate_riscv_corpus.py`, `spec/diagnose_riscv_failure.py`'s G6 finding of 15.32% zero-shot accuracy) as the worked example.

- [ ] **Step 1: Write the checklist doc**

```markdown
# Onboarding a New ISA Spec

Adding a new architecture (the RISC-V precedent: `spec/riscv.json`) should
require **spec-file changes only** — no edits to classification code. This
checklist is how you verify that held, instead of assuming it.

## Steps

1. **Write the spec file** (`spec/<arch>.json`) — extend `base.json` or
   `x86_64.json`/`arm64.json` as appropriate. See `spec/isa_spec.py` for the
   schema (`extends`, `name`, `arch`, `provenance`, `patterns`, `addressing`,
   `realize`, `pipeline`).

2. **Gate on independent-oracle control-flow agreement.**
   `external_oracle.py`'s `_ARCH` map already lists `riscv64` — check whether
   your new arch is present there too (add it if not: `llvm-mc --arch=...`
   name + capstone `(arch, mode)` pair). Then:
   ```bash
   python3 spec/validate_riscv_corpus.py --min-agreement 98.0
   ```
   (or the analogous per-arch corpus-check script, if this isn't RISC-V —
   copy `validate_riscv_corpus.py`'s pattern rather than validate_external.py's,
   since it reads a raw `.s` corpus dir, not the existing v54 jsonl pool your
   new arch isn't in yet). A failing gate here means the spec has real control-
   flow classification bugs an independent tool can see — fix the spec, not
   the check.

3. **Do not silently trust "spec file only, 0 code changes."** The Phase-0
   external-oracle audit (`spec/PHASE0_EXTERNAL_FINDINGS.md`) found 274 real
   disagreements this way, inherited from bugs in `v54/pdg_builder.py` that
   predated the spec engine — "the spec round-trips against itself with 0
   mismatches" is NOT evidence of correctness, only of refactor fidelity.

4. **Measure real classifier accuracy on your new arch, not just spec
   agreement.** RISC-V's own history is the cautionary example:
   `spec/diagnose_riscv_failure.py` found only 15.32% zero-shot accuracy
   despite a clean spec — caused by an untrained arch-embedding row plus
   sparse spec-flag firing rates on the new corpus, not a spec bug. Run the
   analogous multiseed eval (see `eval_riscv_multiseed.py`,
   `eval_riscv_real.py` for the RISC-V pattern) before claiming the new arch
   "works."

5. **Run the full gate before merging:**
   ```bash
   ./scripts/run_feature_gate.sh
   ```

## Known state (RISC-V, as of the Phase-0/1 rigor pass)

- Oracle control-flow agreement: gated by `validate_riscv_corpus.py`.
- Classifier zero-shot accuracy: 15.32% (G6, `diagnose_riscv_failure.py`) —
  this was the state BEFORE the arch-embedding/spec-flag fixes; re-run to get
  the current number rather than quoting this one going forward.
```

- [ ] **Step 2: Commit**

```bash
git add spec/ONBOARDING_NEW_ISA.md
git commit -m "docs: new-ISA onboarding checklist gated by oracle + accuracy checks"
```

---

### Task 8: Point `CLAUDE.md` at the gate

**Files:**
- Modify: `CLAUDE.md`

- [ ] **Step 1: Add a subsection under "Development Notes"**

Insert after the existing "Feature Engineering Guidelines" subsection in `CLAUDE.md`:

```markdown
### Feature / Spec Change Gate

Before trusting or merging any change to `spec/*.json`, `v54/pdg_builder.py`,
or a "learned features achieve parity/lift" claim, run:

```bash
./scripts/run_feature_gate.sh
```

This checks (1) independent-oracle (llvm-mc + capstone) control-flow
agreement hasn't regressed vs. the recorded baseline (`spec/oracle_baseline.json`),
and (2) reports per-class recall lift for learned-feature fusion vs. the
cached multi-seed `eval/full_tost/` results — single-seed "parity" numbers are
not trusted in this repo (see `spec/PHASE0_EXTERNAL_FINDINGS.md` and
`eval/equivalence_tost.py` for why). Adding a new ISA? See
`spec/ONBOARDING_NEW_ISA.md`.
```

- [ ] **Step 2: Commit**

```bash
git add CLAUDE.md
git commit -m "docs: point CLAUDE.md at the feature/spec change gate"
```

---

## Self-Review Notes

- **Spec coverage:** all three source lessons are covered — oracle regression gate (Task 1-2), multi-seed lift measurement replacing single-seed parity framing (Task 4-5), RISC-V/new-ISA-via-spec-file-only workflow formalized with a gate (Task 3, 7). CLAUDE.md points future work at all of it (Task 8).
- **No placeholders:** every step has real code, real paths confirmed to exist this session (`v54/train_gine_v38.py:982-1017` for the `gine_metrics.json` schema, `eval/full_tost/viz_*_s*/` directories confirmed present, `external_oracle.py`'s `_ARCH` dict confirmed to already list `riscv64`).
- **Known gap, flagged not hidden:** `llvm-mc` is not installed in this environment. Tasks 1-3's live-run verification steps say so explicitly and route around it with pure-logic pytest coverage + a hand-seeded baseline fallback, rather than silently skipping or faking a pass.
- **Type/name consistency check:** `compute_agreement()` (Task 1) is consumed by `gate_oracle_check.py` (Task 2) using the exact key names produced (`agreement_pct`, `covered`, `agree`, `confusion`, `disagreements`, `skipped_arch`). `load_recalls()`/`per_class_lift()` (Task 4) are consumed by `run_feature_gate.sh` (Task 6) via CLI flags only (`--results-dir`, `--other-mode`, `--out`), not direct import, so no signature drift risk there.
