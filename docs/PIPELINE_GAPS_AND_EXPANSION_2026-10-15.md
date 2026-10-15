# SpecExec — Remaining Gaps, Pending Runs, and Expansion Plan

_Status snapshot, 2026-10-15. Supersedes the "next steps" portion of
`NEXT_STEPS_PLAN_2026-10-12.md` with the post-V4 state folded in. Every "leak"
verdict in this project is made by an external oracle (symbolic, simulator, or
real hardware), never by our own classifier; that constraint governs every item
below. Classes: BENIGN, SPECTRE_V1, SPECTRE_V2, SPECTRE_V4, L1TF, MDS, RETBLEED,
INCEPTION, BHI._

This document is the single to-do map. It has four parts:

1. **Paper TODOs** — every `\todo{}` still in `paper/specexec_methodology.tex`,
   with what closes it, where it runs, and the blocker.
2. **Pending runs on hardware we already have** (i5-8300H + cluster + this Mac).
3. **Unexplored expansions** across each pipeline stage.
4. **New-hardware mapping** — a decision framework keyed on microarchitecture,
   so that when the exact device list is given (Raspberry Pi 3, etc.) each
   device drops into the gap it can actually close.

A prioritised sequence is at the end.

---

## 0. Where the pipeline stands (one-line per stage)

| Stage | State | Hard number |
|---|---|---|
| ISA spec / graph | Done, oracle-checked | 4 silent bugs found + fixed |
| Detector (GINE/PDG) | Done, locked | 95.6±0.7% in-dist, **89.8% group-holdout** |
| Generator — x86 | **Done** | V1 yield ~1.0, **V4 0.98** (len-cond, 8-round loop) |
| Generator — arm64 | Assembles, partial execute | assembles 0.95, executes 0.84 (emulator) |
| Generator — riscv64 | Assembles only | assembles 1.00, **executes 0.02** |
| Oracle — Spectector (x86) | Done | adjudicates V1, V4 |
| Oracle — Spectector-Combined | Labeler only | V2 82% adjudicable, <1% yield |
| Oracle — Revizor i5 | Done | V1/V4/L1TF replay-verified; **MDS unverified** |
| Oracle — InvisiSpec | Done (V1) | 40/40 bytes |
| Oracle — spec. emulator | **Unvalidated** | 0/806 HW labels; textbook-correct only |
| Filter / ranker | Built, **not in loop** | frozen-head AUC 0.656 / 0.772 |
| Minimality | Pass built, **not tabulated** | `tab:min` empty |
| HW mitigation labels | Partial | lfence-at-boundary rule beats all models |

---

## 1. Paper TODOs (every `\todo{}` left in the LaTeX)

| # | Location | What it asks | Closes with | Runs on | Blocker |
|---|---|---|---|---|---|
| T1 | abstract / `tab:stages` | "ranker and minimality results" | T6 + T7 below | — | those two |
| T2 | `sec:detector` (~1120) | shared-config Revizor campaign number | T-SharedCfg (§2) | i5 | time only |
| T3 | `sec:hw-transfer` (~1146) | `allhw3` result vs interior-fence rule | fenced-matrix replay on held-out + training pools | i5 | run time |
| T4 | `tab:isavalid` (~1260) | raise riscv64 executes 0.02 | realiser semantics fix (§3) | this Mac | realiser work |
| T5 | `sec:hwlabel` (~1440) | HW labels for fenced variants on held-out + training pools | `reproduce_fenced_matrix.sh` + `run_hw_label_variants.sh` | i5 | run time |
| T6 | `sec:rank` (~1617) | wire encoder head into RL loop, report leaks-per-call | wire `rank/` head into `rl_from_oracle` reward gate | cluster | small code |
| T7 | `sec:min` (~1650) | fill `tab:min`; delta-debug generated V1/V4 | Revizor removal pass (real) + ddmin+Spectector (generated) | i5 + cluster | code + run |

All seven are reachable with hardware already in hand. None needs new silicon.

---

## 2. Pending runs on hardware we already have

### A. i5-8300H (Coffee Lake, bare-metal Linux, root) — scripted, not yet finished

Everything here is **no-exploit**: Revizor fuzzing, replay of recorded
violations, mitigation on/off controls, and byte-match PoC drivers. No attack
code ships in the repo.

1. **Fenced-variant mitigation matrix** (T3, T5). Turns the lfence-placement
   claim into a replayed silicon result on the full pools, not just the 423
   seed set.
   ```bash
   sudo bash oracle/revizor/scripts/reproduce_fenced_matrix.sh
   sudo bash oracle/revizor/scripts/run_hw_label_variants.sh
   ```
   Fills `allhw3` and the `tab:min` neighbours; settles whether any learned
   model beats the interior-fence rule on fresh labels.

2. **Minimality on real violations** (T7). The Revizor instruction-removal pass
   produces `_min/status.json`; run it across the reproducing classes and
   tabulate `tab:min` (L1TF, MDS, V1, V4: dirs, body median, essential median).
   ```bash
   sudo bash oracle/revizor/scripts/run_multiclass_campaign.sh \
     --classes "SPECTRE_V4 L1TF SPECTRE_V1" --minimize
   ```

3. **MDS re-fuzz** (settles the one ⚠️ in the coverage table). MDS was
   fuzzer-flagged but 0/6 on replay (fast-path discard, SMT-independent). A
   fresh fuzz with a longer timeout and the assist path forced either finds a
   reproducing MDS violation (promote MDS to verified) or confirms it does not
   reproduce on this part (keep unverified, and that becomes a finding).
   ```bash
   sudo bash oracle/revizor/scripts/refuzz_mds.sh
   ```

4. **V4 cross-validation on `bpas`** (the one caveat on the new 0.98). Take a
   sample of the generator's confirmed-V4 leaks, run them through Revizor's
   store-bypass clause on the i5 with the SSBD MSR off→on. If they trigger
   off and die on, the Spectector-symbolic 0.98 is corroborated on silicon —
   the strongest possible V4 result and removes "Spectector-only" from the V4
   claim. (New small driver needed: feed `gen/rl_lencond_samples.jsonl` leaks
   into the `bpas` harness; §4 of the runbook.)

5. **V2 / RETBLEED published-PoC campaign** (unlocks the only two classes the
   i5 can physically show but no oracle covers). Coffee Lake is an affected part
   for both. Needs a **user-supplied published PoC binary** (SafeSide for V2,
   ETH artifact for RETBLEED); the script only runs it under a mitigation
   control and demands byte-match output.
   ```bash
   sudo bash oracle/revizor/scripts/run_v2_retbleed_campaign.sh --class SPECTRE_V2 --poc <path>
   sudo bash oracle/revizor/scripts/run_v2_retbleed_campaign.sh --class RETBLEED --poc <path>
   ```
   **Blocked on: you supplying the PoC binaries.** Nothing else.

### B. Cluster (GPU, sbatch) — generator side

6. **Filter in the loop** (T6). The frozen-encoder head beats the length bar
   statically (AUC 0.656 within-round, 0.772 prospective). Wire it as a
   pre-oracle gate in `rl_from_oracle` and report confirmed-leaks-per-oracle-call
   with the gate on vs off. This is the last open pipeline-efficiency claim.

7. **Generated-leak minimality** (T7, second half). ddmin with Spectector as the
   test on the V1/V4 leaks already in `gen/rl_lencond_samples.jsonl`, removals
   ordered by a learned survival probability (ProbDD-style) to save oracle calls.

### C. This Mac — symbolic / realiser

8. **riscv64 executes fix** (T4). riscv assembles 1.00 but executes 0.02: the
   realiser emits architecturally valid but faulting loads (uninitialised
   pointers the riscv addressing modes don't sandbox). Fix is realiser
   *semantics*, not syntax — seed-load the base register the way the x86/arm
   splice already does. Raises the one embarrassing number in `tab:isavalid`.

---

## 3. Unexplored expansions, by pipeline stage

Grouped by where a reviewer would ask "why didn't you also…".

### Generator
- **xlong bucket for V4.** V4 leaks average 52 instructions and the yield rose
  monotone to the end at `long`. A fourth length bucket (`>32`) may push the V4
  ceiling or reveal where it breaks; cheap (retrain with a 4th `<LEN_*>` token).
- **Conditioning on length *and* a target gadget skeleton** (not just class/arch).
  The V4 carry-secret splice is a hand-built skeleton; learning the skeleton as
  a conditioning signal would generalise it to the other store/forward classes.
- **arm64 execute lift.** arm64 is at assembles 0.95 / executes 0.84 (emulator).
  The same realiser seed-load fix as riscv, plus a real arm64 execute host
  (§4), would make arm64 runnability a silicon number instead of an emulator one.
- **GRPO / policy-gradient instead of rejection-sampling** for the classes the
  loop concentrates slowly (was flagged for V4; V4 is now solved by the splice,
  but it remains the lever for any future low-yield class).

### Oracle
- **Spectector-Combined RETBLEED return model.** The V2 fork labels V2 at 82%;
  the open question is whether its return clause models the RSB-underflow→BTB
  fallback that RETBLEED actually uses. Settle it before claiming RETBLEED
  symbolic coverage.
- **Speculative emulator re-posed as a contract check** (many inputs grouped by
  model-contract trace, not secret-vs-public). This is the *only* route to
  validating the emulator against the 806 real labels it currently misses, and
  it gates every emulator-based ARM64/riscv64 claim. High value, medium effort.
- **Emulator: indirect-branch + return misprediction clauses.** Rollback
  mechanism already exists; only "other successor" changes. Route to V2/BHI/
  RETBLEED/INCEPTION on all three ISAs with no hardware — but every verdict
  stays model-level until the contract-check above makes validation possible.

### Detector
- **Train and report the hardware-label-only detector** against all three
  non-learned bars (in progress on the i5 labels). This is the honest "does the
  model learn hardware leakage, not synthetic style" test.
- **Shared-instruction-set evaluation** to kill the class–configuration confound
  (T2): currently a bag-of-opcodes model matches the graph model on real gadgets
  because class correlates with instruction mix. Needs the shared-config Revizor
  campaign.

### Filter / Minimality
- Both covered by T6 / T7; no unexplored lever beyond them.

### ISA coverage
- **riscv64 end-to-end** needs the executes fix (T4) then a hardware or RTL
  oracle (§4).
- **A second ISA with real-silicon ground truth** is the single biggest
  credibility gap — see §4.

---

## 4. New-hardware mapping (decision framework)

The exact device list (Raspberry Pi 3, …) is pending. What matters is **not the
brand but the microarchitecture**, because a speculative-execution leak requires
specific hardware properties. Use this table to slot each device:

| Property a device has | Unlocks | Why |
|---|---|---|
| **Out-of-order execution** (OoO) | any real Spectre/Meltdown repro | in-order cores retire before the transient load's cache effect; little/no leak |
| **Branch predictor speculating past a cond. branch** | V1, and a Revizor arm64 `cond` backend | the PHT mechanism |
| **AMD Zen 2/3/4, bare-metal Linux** | **INCEPTION**, AMD-variant RETBLEED | AMD-specific BTB/RSB; no Intel part and no emulator can show it |
| **Enhanced-IBRS-era Intel** | **BHI** as its own mechanism | on pre-eIBRS it collapses into plain BTI; not separately testable |
| **OoO Arm core, bare-metal Linux + PMU** | **ARM64 silicon oracle** (Revizor arm64: cond/bpas/delayed-exception only) | first non-x86 hardware ground truth — the biggest single credibility gain |
| **OoO RISC-V silicon, or an open RTL core in sim** | **riscv64 oracle** | riscv is generated but has zero hardware oracle today |

### Where a Raspberry Pi 3 lands
The Pi 3 is a **Cortex-A53 — in-order**. Consequence:

- It is **not** a useful leak oracle. In-order A53 does not execute far enough
  down a mispredicted path to turn a transient load into a measurable cache
  footprint for most classes, so it will mostly report "no leak" even where a
  real leak exists on an OoO part. Do **not** use it to claim ARM64 leaks.
- It **is** useful for two concrete, honest things:
  1. **Real arm64 assemble + execute ground truth.** `tab:isavalid`'s arm64
     `executes` 0.84 is from our *emulator*. Running the generator's arm64
     output on a real A53 (assemble with native `as`, execute, check it doesn't
     fault) replaces an emulator number with a **silicon runnability** number —
     a strict improvement to a figure a reviewer will poke.
  2. **A negative control for the architecture-dependence claim.** Showing that
     a known-leaking gadget triggers on an OoO part but **not** on the in-order
     A53 is a clean, publishable data point that the leak is a microarchitectural
     (OoO-speculation) property, not an ISA property — directly supports the
     "mechanism, not mnemonics" thread already in the paper.

A **Raspberry Pi 4 or 5** (Cortex-A72 / A76, both OoO) is a different story: it
is a genuine candidate for the **ARM64 silicon oracle** (bullet 5 above) via a
bare-metal Linux + PMU harness, which is currently the single biggest missing
piece. If the acquired list includes a Pi 4/5 or any OoO Arm SBC, that is the
one to prioritise.

**When the device list is given**, map each entry through the property table:
vendor + core → OoO? → which row → which gap. The decisions above are mechanical
once the cores are known.

---

## 5. Prioritised sequence

Ordered by credibility gained per unit of effort, hardware already in hand first.

1. **V4 silicon cross-validation on i5 `bpas`** (§2.A.4) — removes the only
   caveat on the headline new result (V4 0.98 is Spectector-only today).
2. **Fenced-variant matrix + minimality tables on i5** (T3, T5, T7, §2.A.1–2) —
   fills four paper TODOs and the empty `tab:min` with one evening of runs.
3. **Filter in the loop** (T6, §2.B.6) — closes the last pipeline-efficiency
   claim; small code change, cluster run.
4. **riscv64 executes fix** (T4, §2.C.8) — kills the 0.02 embarrassment; local.
5. **MDS re-fuzz** (§2.A.3) — settles the one ⚠️ either way; both outcomes are
   reportable.
6. **V2 / RETBLEED PoC campaign** (§2.A.5) — unlocks two classes, **blocked on
   you supplying the published PoC binaries**.
7. **Emulator contract-check re-pose** (§3 Oracle) — unblocks every ARM64/riscv64
   emulator claim; medium effort, no hardware.
8. **New OoO-Arm hardware → ARM64 oracle** (§4) — the biggest credibility gain,
   gated on the device list.

Items 1–5 need nothing new. Item 6 needs PoC binaries from you. Items 7–8 are
the expansion frontier.

---

## 6. Implemented this session (2026-10-15) + exact run commands

What was built/run on the Mac, and the commands for the boxes that have the
oracles. Nothing here ships an exploit.

### Built (code, unit-tested offline on the Mac)
- **ddmin leak minimiser** `gen/minimize_leaks.py` (+ `tests/gen/test_minimize_leaks.py`,
  5 tests). Zeller delta-debug to a 1-minimal body, Spectector as the test.
  Fills the generated half of `tab:min`. Runs where Spectector runs (cluster).
- **Filter-in-loop gate** (T6): `rank/filter_gate.py` (train + `LeakGate`, pass-
  through-safe) and `--filter-head`/`--filter-threshold` in `gen/rl_from_oracle.py`
  (+ gate tests in `tests/gen/test_rl_cli.py`). Prints
  `leaks_per_oracle_call` per round. Runs on the cluster.
- **xlong length bucket** (expansion): 4-bucket scheme (short/med/long/xlong,
  xlong = >32 instrs) via `--xlong` on `gen/train_generator.py`; the 3-bucket
  default and the existing `generator_lencond.pt` are unchanged. Needs a retrain.

### Diagnosed on the Mac (finding, not a fix)
- **riscv64 `executes`** on `generator_lencond.pt` is ~0.10 overall (not the
  committed 0.02), and the failures are **`fault_insn` 482/534, `fault_mem` 0** —
  i.e. Unicorn's RISCV decoder rejecting instructions llvm-mc *assembled*
  (`assembles` 0.99). The gap is the **emulator decoder**, not (as the paper's
  appendix text currently says) the realiser emitting faulting loads. **Paper
  correction to make:** the riscv `executes` cause in App.~\ref{app:gendev}
  should read "Unicorn RISCV decoder rejects extension instructions llvm-mc
  accepts", and the next step is to identify the offending mnemonics and either
  enable the Unicorn extension or mask them in the riscv decode table. Left as a
  precise next step; not blindly re-fitted.

### CLUSTER -- all as sbatch jobs (nothing compute/memory-heavy on the head node)
```bash
# 1. Generated-leak minimality -> tab:min generated rows (oracle-bound, CPU job)
sbatch gen/minimize_leaks.sbatch                  # PER_CLASS=20 for a faster pass

# 2. Filter-in-loop (T6): (a) train both heads, then (b) run the loop GATED.
#    Submit the gated loop only after the head job finishes (it reads the .pkl).
sbatch gen/train_filter_head.sbatch               # -> rank/filter_head_SPECTRE_{V1,V4}.pkl
TARGET_LEN=long ROUNDS=5 K=120 \
  EXTRA_ARGS="--filter-head rank/filter_head_{cls}.pkl --filter-threshold 0.5" \
  sbatch gen/rl_lencond.sbatch                    # leaks_per_oracle_call in the .out
#   or chain with a dependency so you can fire both at once:
#   jid=$(sbatch --parsable gen/train_filter_head.sbatch)
#   TARGET_LEN=long ROUNDS=5 K=120 \
#     EXTRA_ARGS="--filter-head rank/filter_head_{cls}.pkl --filter-threshold 0.5" \
#     sbatch --dependency=afterok:$jid gen/rl_lencond.sbatch

# 3. xlong V4 retrain (expansion, GPU job) -> then the yield loop at xlong
sbatch gen/train_xlong_generator.sbatch           # -> gen/generator_lencond_x.pt
TARGET_LEN=xlong GEN=gen/generator_lencond_x.pt sbatch gen/rl_lencond.sbatch
#   or chained:
#   jid=$(sbatch --parsable gen/train_xlong_generator.sbatch)
#   TARGET_LEN=xlong GEN=gen/generator_lencond_x.pt \
#     sbatch --dependency=afterok:$jid gen/rl_lencond.sbatch
```
All four jobs need the Spectector `.sif` on `$HOME` and `SPECEXEC_SPECTECTOR_SIF`
exported (the minimality + both yield loops hit the oracle; the header of each
`.sbatch` repeats the one-time publish/pull). None runs on the head node.

### i5-8300H commands (bare-metal Linux, root; no-exploit)
```bash
# A. Fenced-variant mitigation matrix on the full pools (T3, T5)
sudo bash oracle/revizor/scripts/reproduce_fenced_matrix.sh
sudo bash oracle/revizor/scripts/run_hw_label_variants.sh

# B. Minimality on real violations -> fills tab:min real rows
sudo bash oracle/revizor/scripts/run_multiclass_campaign.sh \
    --classes "SPECTRE_V4 L1TF SPECTRE_V1" --minimize

# C. MDS re-fuzz (settle the one unverified class either way)
sudo bash oracle/revizor/scripts/refuzz_mds.sh

# D. V2 / RETBLEED published-PoC campaign (BLOCKED: you supply the PoC binary)
sudo bash oracle/revizor/scripts/run_v2_retbleed_campaign.sh --class SPECTRE_V2 --poc <path>
sudo bash oracle/revizor/scripts/run_v2_retbleed_campaign.sh --class RETBLEED --poc <path>
```

### Ruled out (policy)
- **Generator-V4 silicon cross-validation.** Running generated V4 gadgets on the
  i5 for a *timing* verdict needs a Flush+Reload exfiltration harness = an
  exploit, which the i5 V4 scripts are forbidden to ship (only user-supplied
  published PoCs run). So V4 stays grounded on silicon at the *class* level
  (Revizor `bpas`, SSBD off->on, replay 14/14) and symbolically at the
  *gadget* level (Spectector 0.98). Not closing this by writing an exfil harness.
