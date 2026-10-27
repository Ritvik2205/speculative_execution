# Spec: F (riscv executes) + G (pairwise ranker) — 2026-10-27

Two next-step items from `PAPER_GAPS_AND_NEXT_STEPS_2026-10-26.md`, spec'd
against the actual code before implementing.

---

## F — riscv64 executes 0.02 → x86/arm band

### Correction (important)
The gaps doc assumed the cause was **faulting load addresses** and the fix was
an **address-sandbox in the realiser**. That is **wrong**, per the repo's own
evidence:
- `gen/isa_runnability_riscv.md`: riscv64 = `fault_insn 176`, `ok 4`, **0
  `fault_mem`**.
- `gen/precheck.py:399-402`: Unicorn runs ~RV64I and raises
  `UC_ERR_INSN_INVALID` on the M/A/C/Zicbom forms clang (RV64GC) emits.
- The realiser and the emulator seed memory **identically** across ISAs (every
  GPR → middle of a mapped data region, `gen/precheck.py:335-340`), so there is
  no x86/arm address-sandbox that riscv lacks. Address masking cannot move a
  `fault_insn` count (0 memory faults to fix).

### What's actually needed — NO new realiser code
The sanctioned fix is **already implemented and tested**: `RiscvQemuRunner`
(`gen/precheck.py:442`, dispatched in `PreCheck.check` for `riscv64`, tests
`tests/gen/test_riscv_qemu.py`) assembles a freestanding static RV64GC ELF and
runs it under `qemu-riscv64`, which decodes the full extension set. It is
fail-open: absent `qemu-riscv64` + a riscv static linker it is a no-op and
stage C falls back to Unicorn (why it's inert on the dev Mac).

So F is a **cluster-tooling + eval** task, not an implementation:
1. Install `qemu-riscv64-static` + a riscv static linker in the `specexec` env.
2. Re-run `gen/isa_runnability.py --archs riscv64` through the now-active QEMU
   backend, using a **riscv-capable generator** (the default `generator.pt`
   vocab has no riscv64 — needs the riscv-corpus checkpoint, e.g.
   `gen/generator_expanded.pt`).
3. Pass bar (`RISCV_FUNCTIONAL_ORACLE_SPEC.md §7`): riscv `executes` ≥ ~0.4
   (the extension-illegal `fault_insn` wall gone); residual faults then reflect
   genuine generator output.
4. Regenerate `gen/isa_runnability_riscv.md`, note backend `qemu-riscv64`.

### Deliverable in this pass
The only buildable artifact: a validation sbatch
`gen/isa_runnability_riscv_qemu.sbatch` that fails loud if the QEMU tooling is
absent (the whole point is to exercise it, so fail-open would silently
re-measure the 0.02), checks the generator has riscv64 in vocab, runs the
eval, and writes the new md. Installing the tooling + picking the checkpoint is
the operator's step.

---

## G — pairwise (order-aware) leak-vs-safe ranker

### Goal
The supervisor asked for a pairwise ranker; only a **pointwise** head exists
(`StandardScaler + LogisticRegression` on the frozen GINE `combined` embedding,
`rank/filter_gate.py:train`). Add a pairwise head that ranks leak above safe
**within an RL round** (the dominant confounder), staying **drop-in** behind the
existing `LeakGate` pickle contract so the RL loop and both static evals consume
it unchanged.

### Hard constraints (from the code)
- `LeakGate` (`rank/filter_gate.py:105`) does `pickle.load` →
  `h["scaler"], h["model"], h["cls"]` → `scaler.transform(emb)` →
  `model.predict_proba(x)[0,1]`. The pairwise artifact **must** be the same dict
  `{scaler, model, combined_dim, cls}` with `model.predict_proba(X)[:,1]`
  monotone in the rank score. LeakGate stays untouched.
- No torch at gate/load time: export a **pure-numpy** scorer so unpickling needs
  no torch (torch only in training).
- Pairs formed **within round only** (mirrors `within_round` /
  `prospective_oof` in `rank/eval_v4_filter.py`).

### Design
- **Model (training, torch):** MLP `Linear(d,hidden) → ReLU → Dropout →
  Linear(hidden,1)` → scalar score `s(x)`. No BatchNorm (keeps the numpy
  forward exact and batch-size-free). Mirrors `rank/regressor.py:LeakRanker`'s
  backbone, different loss.
- **Loss:** pairwise logistic (RankNet) over within-round (leak_i, safe_j)
  pairs: `mean softplus(-(s_i - s_j))`. Cap pairs/round to bound cost.
- **Export:** fold weights to numpy in `NumpyMLPScorer(W1,b1,W2,b2)` with
  `predict_proba(X) = [1-σ(s), σ(s)]`, `s = relu(X@W1+b1)@W2+b2`. Picklable,
  torch-free, importable by `LeakGate` (defined in `rank/pairwise_head.py`,
  imported by `filter_gate.py`).
- **Scaler:** same `StandardScaler` on built embeddings, stored in the dict;
  LeakGate applies it before `predict_proba`. Threshold semantics: σ(s) ∈ [0,1],
  0.5 ↔ s>0; the gate needs only a monotone ordering, re-tunable per class.

### Touch list
1. **NEW `rank/pairwise_head.py`** — `NumpyMLPScorer`, `fit_pairwise(emb, y,
   rnd, hidden, epochs, lr, device, max_pairs_per_round) -> NumpyMLPScorer`, and
   `pairwise_oof(emb, built, y, rnd, device)` wrapping the eval's
   `prospective_oof` with a pairwise feat_fn (fit pairs on train, score test).
2. **`rank/filter_gate.py`** — add `train_pairwise(samples, cls, out, device)`
   (reuses `_asm_from_record` + the embed/dedup from `train`) + CLI subcommand
   `train-pairwise`. Pickles the same dict shape. `LeakGate` unchanged.
3. **`rank/eval_v4_filter.py` + `rank/eval_v2_filter.py`** — add one
   "pairwise head (prospective)" row via the existing `add()` harness, reusing
   the already-built `emb`/`built` and `pairwise_oof`.
4. **`gen/train_filter_head.sbatch`** — add a pairwise training invocation
   alongside the pointwise one, artifact `rank/filter_head_pairwise_${CLS}.pkl`.
5. **NEW `tests/rank/test_pairwise_head.py`** — pure (no GPU/PDG): numpy forward
   == torch forward; within-round pairs never cross rounds; score monotone;
   pickle round-trips and `predict_proba` is drop-in for LeakGate.

### Non-goals
Not replacing the pointwise head (kept as default); not changing `LeakGate` or
the RL loop wiring; not a GPU requirement (trains on CPU for these sizes).
