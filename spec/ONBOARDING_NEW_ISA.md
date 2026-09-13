# Onboarding a New ISA Spec

Adding a new architecture (the RISC-V precedent: `spec/riscv.json`) should
require **spec-file changes only** — no edits to classification code. This
checklist is how you verify that held, instead of assuming it.

## Steps

0. **`riscv_corpus/*.s` is gitignored.** It matches the repo's global `*.s`
   pattern in `.gitignore`, so the compiled RV64 corpus won't exist in a
   fresh checkout or worktree — only the tracked `*.s.pre_corpus_fix` backups
   are present. If `validate_riscv_corpus.py` prints "no RV64 asm in
   riscv_corpus/ — run the compile step first", regenerate the `.s` files
   first via `python3 scripts/patch_riscv_corpus_asm.py --apply` (see that
   script's docstring for what it does).

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
