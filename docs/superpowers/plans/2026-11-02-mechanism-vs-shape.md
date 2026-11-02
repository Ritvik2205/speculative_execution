# Mechanism-vs-Shape Experiments Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Test whether the detector's failure on real hardware gadgets comes from learning gadget *shape* instead of the speculative *mechanism*. Then test whether making the mechanism (a fence cutting the speculative window) explicit, and training on hardware labels, beats the non-learned interior-fence rule (0.991).

**Architecture:** A frozen, non-learned *mechanism rule* computes each trigger's speculative window (speculation trigger → transmitter) and asks whether a fence on the executed path cuts it. It is scored next to the existing bars (fence-count, adjacent-fence, interior-fence) and the learned models on two sets:
- the 806 hardware-labelled variants (dev);
- new hardware-labelled mid-sequence counterfactuals (test). These are the only set where interior-fence and mechanism disagree by construction.

The same window computation becomes 3 opt-in detector features, and `allhw3` is trained with and without them on hardware labels only.

**Tech Stack:** Python 3, pytest, existing GINE stack (`v54/`), Revizor on the i5-8300H, Slurm cluster (`eval/cluster/`).

**Spec:** this plan is the spec. Sources:
- `paper/specexec_methodology.tex` §`sec:hw-transfer`, §`sec:hwlabel`, §`sec:hw-mitig`, `tab:hwscore`;
- `docs/PAPER_GAPS_AND_NEXT_STEPS_2026-10-26.md` items 6, 7, 9;
- `docs/HW_LABEL_RESULTS_2026-10-07.md`.

## Hypotheses (pre-registered — freeze before Task 4 labels exist)

- **H0 (shape):** every learned detector scores ≤ the interior-fence rule on `cf_heldout`.
- **H1 (the mechanism is the signal):** the mechanism rule beats the interior-fence rule **and** the constant always-attack baseline on `cf_heldout`. Both 95% cluster-bootstrap CIs of the accuracy difference, resampled by base gadget and over hardware-confirmed classes (MDS excluded), must exclude 0.
  - *Why both bars (review, 2026-11-02):* the interior rule calls every counterfactual BENIGN by construction. Mode "all" calls nearly every counterfactual vulnerable, because V4/MDS/L1TF programs open several windows (V4 median 8) and one mid-sequence fence leaves the rest uncut. Beating interior alone could just mean "hardware labels most cf variants vulnerable".
  - *Modes:* `mechanism` (mode "all", the frozen primary) and `mechanism-any` are both reported. "all" is primary; "any" is secondary. If they disagree on H1, report H1 as **not established**.
  - *Reading:* read H1 per counterfactual type (cf_wrong_path / cf_nonleak / cf_after_bypass / cf_fencepass), not only pooled. cf_wrong_path is the cleanest test (one V1 window).
  - *Known limitation:* the transmitter is the *first* qualifying read, not the essential one. A fence between a non-essential first read and the essential read counts as "not cut".
- **H2 (learnable):** `allhw3_mech` beats the interior-fence rule on `cf_heldout` over 5 seeds (mean CI excludes the bar), and does not regress on dev-806.
- **H2b (discoverable):** `allhw3` without mechanism features does the same. This tells whether the GNN finds the mechanism unaided.

| H1 | H2 | H2b | Paper reading |
|---|---|---|---|
| ✗ | – | – | Counterfactuals don't separate mechanism from position. Fix the variant design before claiming anything. |
| ✓ | ✗ | ✗ | Mechanism is real, but the model can't use it. The rule is the contribution. |
| ✓ | ✓ | ✗ | Explicit mechanism features are needed. Main result: a mechanism-aware detector beats the 1-line rule. |
| ✓ | ✓ | ✓ | The GNN learns the mechanism from hardware labels alone. Strongest result. |

**Freeze rule:** create the git tag `mech-rule-frozen` after Task 2 passes and before any `cf_*` hardware label is read. Any later change to `spec_window.py` invalidates H1; the results doc must report this.

## Global Constraints

- Hardware ground truth = `rvzr reproduce` ×3 on the i5. A label counts only if hits ∈ {0, 3}. Drop any base whose `original` fails to reproduce.
- Report MDS separately and keep it out of the headline: its replay is unconfirmed (0/6).
- Dev set is pinned to the in-tree **806** `eval/data/revizor_hwlabel_variants.jsonl`. Do not switch to the 821 snapshot.
- Every learned number is 5 seeds (mean ± std). No single-seed claims.
- Always print the fence-count, adjacent-fence and interior-fence bars next to every model number.
- `--mech-features` off ⇒ features byte-identical to today (58 dims).
- Any change to `v54/inline_features.py` must pass `./scripts/run_feature_gate.sh` before merge.
- Commit only when the user asks; tasks end with a commit step for the executor to batch.

## Review Focus

1. **No trigger found in a sequence** (e.g., a V1 body with no `jcc` followed by `jmp`). The rule must return `None`, and the scoreboard must count abstain as wrong and report the abstain count. It must not silently default to BENIGN. *(test in Task 2)*
2. **A `lock` prefix on its own line** before an RMW (`lock` / `orq …, (%r14,%rcx)`). It must be treated as one memory op, so a fence is never counted "between" the prefix and its instruction. *(test in Task 2)*
3. **Sub-register aliasing** (`%al`/`%ax`/`%eax`/`%rax`, `%sil`/`%rsi`) in def-use. A write to `%eax` defines `%rax` for dependence. *(test in Task 2)*
4. **Base leakage between allhw3 train and test.** Train-pool and held-out base IDs must be disjoint. Assert in the builder. *(test in Task 6)*
5. **Jump-displacement tokens** (`jnp 0x54 <.bb_0.1>` vs `jnp 0x7e …`) differ between fence variants of one base. The rule must not key on them. *(test in Task 2: same verdict after rewriting displacements)*

---

### Task 1: Extract the non-learned bars into one module

**Files:**
- Create: `eval/mechanism/__init__.py`, `eval/mechanism/bars.py`
- Modify: `eval/cluster/aggregate_results.py:189-221`: import the bars from `eval.mechanism.bars` and delete the local copies.
- Modify: `eval/score_hwlabel_variants.py:191`: `fence_count` imported from `bars`.
- Test: `tests/eval/test_mechanism_bars.py`

**Interfaces:**
- Produces:
  - `fence_count(seq: list[str]) -> int`
  - `fence_count_pred(rec: dict, threshold: float) -> str`
  - `adjacent_fence_pred(rec: dict) -> str`
  - `interior_fence_pred(rec: dict) -> str`
  - `BARS: dict[str, Callable[[dict], str]]`, keyed `"adjacent"` and `"interior"`.
  - Every `*_pred` returns `"BENIGN"` or the record's `vuln_class` (falling back to `label`).

- [ ] **Step 1: Write the failing test**

```python
from eval.mechanism.bars import adjacent_fence_pred, interior_fence_pred
DEV = ROOT / "eval/data/revizor_hwlabel_variants.jsonl"
def test_bars_reproduce_recorded_counts():
    recs = load(DEV)
    assert len(recs) == 806
    assert sum(adjacent_fence_pred(r) == r["label"] for r in recs) == 702
    assert sum(interior_fence_pred(r) == r["label"] for r in recs) == 799
def test_interior_ignores_leading_and_trailing_runs():
    r = {"label": "SPECTRE_V1", "vuln_class": "SPECTRE_V1",
         "sequence": ["lfence", "movq (%r14), %rax", "lfence"]}
    assert interior_fence_pred(r) == "SPECTRE_V1"
```

- [ ] **Step 2:** Run `pytest tests/eval/test_mechanism_bars.py -v`. Expected: FAIL (`ModuleNotFoundError`).
- [ ] **Step 3:** Move the bodies verbatim from `aggregate_results.py` into `bars.py` and re-import them at the old call sites.
- [ ] **Step 4:** Run the test (PASS), then `python3 eval/cluster/aggregate_results.py --help`. It must still import cleanly.
- [ ] **Step 5:** Commit: `eval: extract non-learned fence bars into eval/mechanism/bars.py`

---

### Task 2: Mechanism rule (speculative-window cut)

**Files:**
- Create: `eval/mechanism/spec_window.py`
- Test: `tests/eval/test_spec_window.py`

**Interfaces:**
- Consumes: nothing from Task 1.
- Produces:
  - `Window = NamedTuple(start: int, trigger: int, end: int, path: tuple[int, ...])`. `path` holds the sequence indices that execute between `start` and `end` on the speculated path.
  - `windows(seq: list[str], cls: str) -> list[Window]`
  - `window_cut(seq: list[str], w: Window) -> bool`: true iff some `lfence` index is in `w.path`.
  - `mechanism_pred(rec: dict, mode: str = FROZEN_MODE) -> str | None`. Returns `None` when there are no windows. Mode `"all"` = BENIGN iff every window is cut; `"any"` = BENIGN iff some window is cut.
  - `FROZEN_MODE: str`, set in Step 5.

**Definitions** (AT&T objdump text; strip a `lock` line into the next instruction first; normalise jump-displacement tokens away):
- **Def-use:** map each register to its 64-bit parent. An instruction defines its last operand when that operand is a register (not `cmp`/`test`/`bt`). Flags are defined by the arithmetic and compare mnemonics. A memory operand `(%b,%i)` uses `b` and `i`.
- **Chain start of instruction k:** the earliest index reached by walking back the def-use of k's used registers (and flags, for a `jcc`) within the same straight-line run. Stop at the previous jump.
- **SPECTRE_V1:** trigger = each `jcc` at i whose next line is `jmp`. The taken block starts at i+2. end = first memory access in the taken block. `path` = [chain_start(i), i) ∪ [i+2, end].
- **SPECTRE_V4:** trigger = each store S at i. end = first later memory access whose address register depends on a load issued after S. `path` = [chain_start(S), end].
- **MDS / L1TF:** trigger = each load L at i. end = first later memory access whose address register depends on L's destination. `path` = (i, end].

- [ ] **Step 1: Write the failing tests**

```python
V1 = ["andq $0x1fff, %rsi", "movw (%r14,%rsi), %ax", "cmpb %al, %sil",
      "jnp 0x54 <.bb_0.1>", "jmp 0x98 <.exit_0>",
      "andq $0x1fff, %rax", "movb (%r14,%rax), %bl"]
def rec(seq, cls="SPECTRE_V1"): return {"label": cls, "vuln_class": cls, "sequence": seq}
def test_v1_unfenced_is_vulnerable():   assert mechanism_pred(rec(V1)) == "SPECTRE_V1"
def test_v1_fence_in_taken_block_mitigates():
    assert mechanism_pred(rec(V1[:5] + ["lfence"] + V1[5:])) == "BENIGN"
def test_v1_fence_before_jcc_after_cmp_mitigates():      # 'shifted' variant
    assert mechanism_pred(rec(V1[:3] + ["lfence"] + V1[3:])) == "BENIGN"
def test_v1_entry_fence_does_not_mitigate():
    assert mechanism_pred(rec(["lfence"] + V1)) == "SPECTRE_V1"
def test_v1_tail_fence_does_not_mitigate():
    assert mechanism_pred(rec(V1 + ["lfence"])) == "SPECTRE_V1"
def test_no_trigger_abstains():
    assert mechanism_pred(rec(["addq $1, %rax"])) is None
def test_lock_prefix_is_one_op():  ...  # fence can't land between `lock` and its RMW
def test_subregister_alias():      ...  # write %eax -> later (%r14,%rax) depends on it
def test_displacement_invariance(): ... # rewrite every `0x.. <` token, same verdict
def test_mds_after_load_mitigates(): ... # load; lfence; dependent load -> BENIGN
def test_v4_fence_after_store_mitigates(): ...
```

  Write the `...` tests as the same pattern: a 4–7 line sequence plus one assertion.
- [ ] **Step 2:** Run `pytest tests/eval/test_spec_window.py -v`. Expected: FAIL.
- [ ] **Step 3:** Implement `windows`, `window_cut` and `mechanism_pred` per the definitions above.
- [ ] **Step 4:** Run the unit tests. Expected: PASS.
- [ ] **Step 5: Dev calibration** (806 only). Add `test_dev_accuracy`:
  - Compute accuracy for `mode in ("all", "any")`.
  - Set `FROZEN_MODE` to the better mode.
  - Assert ≥ 0.95, with abstains counted wrong, and print the abstain count.
  - If < 0.95, revise the definitions using the 806 only. Record each revision in the module docstring.
  - The rule should *explain* the dev set: the interior rule gets 0.991 there by construction.
- [ ] **Step 6:** Commit, then `git tag mech-rule-frozen`. **Do not edit this file after the tag** (see Freeze rule).

---

### Task 3: Scoreboard harness

**Files:**
- Create: `eval/mechanism/scoreboard.py`
- Test: `tests/eval/test_scoreboard.py`

**Interfaces:**
- Consumes:
  - `BARS` (Task 1);
  - `mechanism_pred` (Task 2);
  - model predictions as a JSONL of `{"group", "variant", "pred"}`, one file per checkpoint. Produce it from `eval/score_hwlabel_variants.py` by adding `--dump-preds <path>`.
- Produces:
  - `score(recs: list[dict], preds: list[str | None]) -> dict`, with keys `acc`, `vuln_recall`, `mitig_spec`, `abstain`, `per_variant: dict[str, float]`, `flip: float` (per-base, the existing definition).
  - `paired_bootstrap(recs, preds_a, preds_b, n=2000, seed=0) -> tuple[float, float, float]`: mean diff, 2.5th and 97.5th percentile of acc(a) − acc(b), resampling base groups (`base_id` from `eval/score_hwlabel_variants.py:185`).
  - CLI: `python3 -m eval.mechanism.scoreboard --data <jsonl>... --preds <jsonl>... --out eval/mechanism/scoreboard.md`. It prints all bars, the mechanism rule and every `--preds`, with per-class rows and MDS flagged.

- [ ] **Step 1: Failing tests:**
  - `score` on 4 toy recs gives the hand-computed values.
  - `paired_bootstrap` of identical preds gives (0, 0, 0).
  - Resampling is by group: a 2-group toy where all disagreement sits in one group has a CI that spans 0.
- [ ] **Step 2:** Run. Expected: FAIL.
- [ ] **Step 3:** Implement. Add `--dump-preds` to `score_hwlabel_variants.py`. It is additive only; default output stays unchanged.
- [ ] **Step 4:** Run the tests (PASS). Run the CLI on dev-806 with no `--preds`. The md must show adjacent 0.871, interior 0.991 and the mechanism rule's dev number.
- [ ] **Step 5:** Commit: `eval: mechanism scoreboard with base-clustered paired bootstrap`

---

### Task 4: [HARDWARE, i5] Label the counterfactuals and the training pool

User runs this on the i5. No code changes except the emit paths.

**Produces:**
- `eval/data/revizor_hwlabel_cf_heldout.jsonl`: `cf_*` variants of the held-out bases (the H1/H2 test set).
- `eval/data/revizor_hwlabel_trainpool.jsonl`: all variants (standard + `cf_*`) of the training-pool bases (`eval/data/revizor_{spectre_v1,spectre_v4,mds,l1tf}_real.jsonl`), for allhw3.

- [ ] **Step 1:** Check that the tag `mech-rule-frozen` exists (`git tag -l mech-rule-frozen`). If it doesn't, stop.
- [ ] **Step 2: Held-out counterfactuals:**

```bash
sudo bash oracle/revizor/scripts/run_hw_label_variants.sh \
  --stages "minimize plan run" \
  --variants "original cf_wrong_path cf_nonleak cf_after_bypass cf_fencepass" \
  --out ~/rvzr_hwlabel_cf --reps 3
python3 oracle/revizor/scripts/hw_label_variants.py emit --out ~/rvzr_hwlabel_cf
```

- [ ] **Step 3: Training pool,** all variants. Use the same command with `--records "eval/data/revizor_spectre_v1_trainpool.jsonl eval/data/revizor_spectre_v4_trainpool.jsonl eval/data/revizor_mds_trainpool.jsonl eval/data/revizor_l1tf_trainpool.jsonl"` and `--out ~/rvzr_hwlabel_train`. Then emit.
  - *(2026-11-02 correction)* Not `revizor_*_real.jsonl`: those contain every held-out base. The `_trainpool` files (`oracle/revizor/scripts/make_trainpool.py`) are real minus held-out minus dev, i.e. 552 bases (V1 166, V4 94, MDS 127, L1TF 165).
- [ ] **Step 4: Validate each emitted file** (one-off script, results go in the commit message):
  - every record has `hw_runs == 3` and `hw_hits ∈ {0, 3}`;
  - every base has a reproducing `original`;
  - print counts per class × variant, and the % of `cf_*` that stay vulnerable.
  - **If every cf variant mitigates or every one leaks, H1 is untestable.** Report this before going on.
- [ ] **Step 5:** Copy the jsonl files to the repo and commit (jsonl and md only, no `input_*.bin`).
  - Held-out run → `eval/data/revizor_hwlabel_cf_heldout.jsonl`. `emit` already drops `original` rows and unstable verdicts.
  - **Always pass `emit --jsonl`.** Its default is the pinned dev-806 file, which a bare `emit` overwrites.
  - Validate with `python3 oracle/revizor/scripts/check_hw_labels.py <file>`: exit 1 = bad labels, exit 2 = H1 untestable.
  - Training run → `eval/data/revizor_hwlabel_trainpool.jsonl` (all variants). These names are what `eval/cluster/submit_allhw3.sh` reads.

---

### Task 5: Opt-in mechanism features for the detector

**Files:**
- Modify: `v54/inline_features.py`. Add `MECH_FEATURE_NAMES = ["mech_all_windows_cut", "mech_frac_windows_cut", "mech_n_windows_log"]`. They are appended by `get_feature_names(mech: bool = False)` and `compute(..., mech: bool = False)`.
- Modify: `v54/train_gine_v38.py`. Add `--mech-features` (default off); pass it through and record it in `gine_metrics.json`.
- Test: `tests/v54/test_mech_features.py`

**Interfaces:**
- Consumes: `windows` and `window_cut` (Task 2), imported read-only.
- Produces: `handcrafted_dim = 58 + 3` when on. `eval/score_hwlabel_variants.py:load_run_config` must read the flag from metrics so scoring rebuilds the same features.

- [ ] **Step 1: Failing tests:**
  - `len(get_feature_names()) == 58`, and the names are identical to the committed list (off is byte-identical);
  - `len(get_feature_names(mech=True)) == 61`;
  - on the Task 2 `V1` fixture, `mech_all_windows_cut` is 0.0 unfenced and 1.0 with the taken-block fence;
  - no windows ⇒ `[0.0, 0.0, 0.0]`.
- [ ] **Step 2:** Run. Expected: FAIL.
- [ ] **Step 3:** Implement, then thread the flag through the training and scoring config.
- [ ] **Step 4:** Run the tests (PASS). Then run `./scripts/run_feature_gate.sh`. The oracle half must not regress. (If it FAILs because the cluster env lacks `capstone`, that is a known env issue: run it locally.)
- [ ] **Step 5:** Commit: `v54: opt-in speculative-window mechanism features (--mech-features)`

---

### Task 6: [CLUSTER] Train and score allhw3 / allhw3_mech

**Files:**
- Modify: `oracle/revizor/build_hw_joint.py`. Add `--hw-labels-only <jsonl...>`: train on hardware-labelled variants as labelled (BENIGN or class), with no structural twins and no synthetic misfenced. Assert the base IDs are disjoint from `--heldout-files` and from `revizor_hwlabel_variants.jsonl` / `_cf_heldout.jsonl`.
- Create: `eval/cluster/allhw3.sbatch` (copy the pattern of the existing allhw2 job). Tags are `allhw3` and `allhw3_mech`, seeds 1 7 13 21 42.
- Test: `tests/oracle/test_build_hw_joint.py`, adding `test_hw_labels_only_rejects_base_overlap` and `test_hw_labels_only_no_structural_twins`.

**Interfaces:**
- Consumes:
  - `revizor_hwlabel_trainpool.jsonl` (Task 4);
  - `--mech-features` (Task 5);
  - `--dump-preds` and the scoreboard CLI (Task 3).

- [ ] **Step 1:** Write the two failing builder tests and run them (FAIL).
- [ ] **Step 2:** Implement `--hw-labels-only` and run the tests (PASS).
- [ ] **Step 3:** Submit 2 arms × 5 seeds. Keep the bulk data out of the rsync'd repo; see the cluster gotcha in the memory notes.
- [ ] **Step 4:** For each checkpoint, run `score_hwlabel_variants.py --dump-preds` on the dev-806 and `cf_heldout` sets. Every checkpoint must pass its reproduce gate (tol 3e-3).
- [ ] **Step 5:** Run the scoreboard over both data sets, all bars, the mechanism rule and all 10 checkpoints. Also add the existing allhw / allhw2 / B1 preds so H0 has its learned baselines. Then:
  - compute the paired bootstrap of mechanism vs interior on `cf_heldout` (H1);
  - compute mean ± std and seed-level CI for each arm vs interior (H2, H2b).
- [ ] **Step 6:** Commit the sbatch, builder and `eval/mechanism/scoreboard.md`.

---

### Task 7: Regression checks and results write-up

**Files:**
- Create: `eval/mechanism/RESULTS.md`
- Modify: `paper/specexec_methodology.tex`:
  - `tab:hwscore`: fill the `allhw3` row, add `allhw3_mech` and mechanism-rule rows, add a `cf` column;
  - replace the `\todo{allhw3 result …}` and `\todo{hardware labels for these variants …}`.

- [ ] **Step 1: In-distribution regression.** Train B1 with `--mech-features` on the v54 split, 5 seeds. Compare with `eval/equivalence_tost.py` against the cached B1 95.62 ± 0.67. Report; the hypothesis does not need a lift here.
- [ ] **Step 2: Class transfer.** Score both allhw3 arms on the 173 held-out real violations, next to the scaled-opcode LR bar (0.97). Expectation: no change, because class ID stays confounded with Revizor config. State this; it is out of scope here.
- [ ] **Step 3:** Write `RESULTS.md`:
  - the hypothesis table filled with numbers and CIs;
  - which row of the decision table we landed in;
  - the abstain counts;
  - MDS shown separately;
  - whether the freeze tag held.
- [ ] **Step 4:** Fold into the paper using the decision-table reading. Rebuild with `tectonic -X compile specexec_methodology.tex` in `paper/`: exit 0, and no new undefined refs.
- [ ] **Step 5:** Commit: `paper+eval: mechanism-vs-shape result (allhw3, mechanism rule, cf counterfactuals)`

---

## Out of scope (separate plans)

- **Shared-instruction-set Revizor campaign.** Breaks the class↔config confound behind the 0.97 opcode bar (`sec:hw-transfer`). This is the fix for the *class-ID* transfer statistic. This plan fixes *leak/safe*.
- **Speculative emulator contract mode** (0.61 vs 0.98). Revisit only if H1 holds: then the mechanism rule gives the emulator a target to match.
- **Generator use.** If H1/H2 hold, use `mechanism_pred` as a cheap pre-oracle signal and reward-shaping term in `gen/rl_from_oracle.py`, so generated gadgets keep an uncut window. This is the bridge from "detect" to "produce gadgets that leak".
