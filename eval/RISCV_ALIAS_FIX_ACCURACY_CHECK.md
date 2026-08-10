# RISC-V Alias Fix — Does It Move Classifier Accuracy?

*Follow-up to `eval/RISCV_ALIAS_FIX_RESULTS.md` (which proved the corpus-level
bug is fixed: 0/68 → 68/68 alias-flagged files now correctly taint via
`dataflow_taint.apply_dataflow_taint()`). This doc answers the next
question: does that translate into better classifier accuracy? Reran the
existing zero-shot eval scripts against the regenerated corpus — no
retraining involved (the classifier is scored zero-shot; RISC-V has zero
training records either way, see `eval/RISCV_CURRENT_STATUS.md`).*

## TL;DR: no. The fix is real and verified, but it does not move accuracy.

## Reproduce

```bash
# 1. Restore .s from .pre_corpus_fix originals (patch_riscv_corpus_asm.py
#    reads from *.s, so a second pass without this re-feeds already-
#    translated RISC-V text through the translator and corrupts it — the
#    first --report attempt without this step gave 1104/1564 unmatched
#    blocks, all spurious re-translation artifacts, not real regressions).
for f in riscv_corpus/*.s.pre_corpus_fix; do cp "$f" "${f%.pre_corpus_fix}"; done

# 2. Regenerate with the now-fixed scripts/translate_riscv_inline_asm.py
python3 scripts/patch_riscv_corpus_asm.py --apply   # 1564/1564 blocks, 498/498 assemble clean

# 3. Confirm the mechanism-level fix on the real corpus (not just the
#    fixing agent's now-deleted worktree copy)
python3 eval/riscv_h1_alias_dataflow_verify.py . "main-checkout-post-apply"
#   -> 68/68 alias-flagged files now correctly taint (was 0/68)

# 4. Re-run the actual accuracy evals
python3 spec/eval_riscv_multiseed.py     # 5-seed zero-shot, existing checkpoints
python3 spec/diagnose_riscv_failure.py   # single-checkpoint confusion matrix (Part 1)
```

## Multi-seed accuracy: unchanged

| | pre-fix (this session, `eval/eval_riscv_multiseed_current_results.txt`) | post-fix |
|---|---|---|
| accuracy | 29.56 ± 10.25% | **29.44 ± 10.39%** |
| L1TF recall | 9.38% mean `[4.9, 0, 0, 0, 42.0]` | **9.01% mean `[3.1, 0, 0, 0, 42.0]`** |
| MDS recall | 16.67% mean `[0, 66.7, 0, 0, 16.7]` | **16.67% mean `[0, 66.7, 0, 0, 16.7]`** (identical) |

Every number is within noise of its pre-fix counterpart. No seed's per-class recall meaningfully shifted.

## Single-checkpoint confusion matrix (`v54/viz_v54_spec/gine_best.pt`): a wash

| | pre-fix (accuracy=34.48%) | post-fix (accuracy=33.87%) |
|---|---|---|
| L1TF correct | 60/162 | **55/162 (down)** |
| L1TF → BENIGN | 57 | 60 |
| MDS correct | 4/36 | **6/36 (up)** |
| MDS → L1TF | 4 | 2 |
| BHI, INCEPTION, RETBLEED, SPECTRE_V2/V4 | unchanged | unchanged (expected — the fix only touched L1TF/MDS files) |

L1TF lost 5 records, MDS gained 2 — opposite directions, both small relative to base rates, consistent with noise/redistribution rather than a genuine improvement. Aggregate accuracy actually ticked down slightly (34.48%→33.87%), though this single-checkpoint number was never claimed to be stable evidence on its own.

## Why didn't a verified, real bug fix move the numbers?

This is the honest, slightly humbling finding. Best-supported explanation, consistent with `eval/RISCV_DEEPER_ROOT_CAUSE.md`'s ranking:

**H3 (graph-size out-of-distribution shift) dominates enough that fixing one specific feature signal (the `is_secret_source`/`is_transmitter` taint flag) doesn't change the model's prediction.** The GINE classifier was never trained on any RISC-V record — it's fully zero-shot. Its decision for an out-of-distribution graph is likely driven far more by aggregate structural properties (instruction count, edge-type density — the ones H3 found correlate strongly with correctness, t=-11.76, p=3.7e-28) than by any single node-level flag. Getting the taint flag to fire correctly on 68 records is a real, necessary fix (a model that never even *sees* the correct signal has no chance), but it is evidently not *sufficient* — the surrounding graph is still shaped unlike anything in the x86/ARM training distribution, and that appears to swamp the one-flag correction.

**This reframes the priority order from `eval/RISCV_DEEPER_ROOT_CAUSE.md`**: H1 (the alias bug) looked like the more tractable, "just fix a bug" lever going in. Empirically, it wasn't decisive. H3 (graph-size domain shift) is confirmed as the real bottleneck — and it's the harder problem: no clean single fix, likely needs either (a) RISC-V training data (currently zero) so the model can learn the RISC-V graph-size distribution, or (b) a size-invariant architecture change, both out of scope for a quick pass.

## Bottom line for the paper

- The alias-bug fix is legitimate, verified engineering work (0/68→68/68 at the mechanism level) — cite it as a real correctness fix to the corpus-generation pipeline.
- **Do not claim it improves RISC-V classifier accuracy** — measured directly, it doesn't (within noise, arguably a wash in the single-checkpoint view).
- The honest framing: "we found and fixed a real data-flow bug in the RISC-V corpus translator; it did not measurably improve zero-shot accuracy, which we attribute to a larger, unresolved domain-shift problem (RISC-V code requires more instructions per semantic operation than x86/ARM, producing out-of-distribution graph sizes the model was never trained on) that a single-flag fix cannot address." This is a legitimate, interesting negative result, not a failure to report.
