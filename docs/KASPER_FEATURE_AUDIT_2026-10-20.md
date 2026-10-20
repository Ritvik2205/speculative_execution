# Dataflow/taint feature audit against KASPER's leakage model (2026-10-20)

KASPER (Johannesmeyer et al., NDSS 2022) decides "this is a transient-execution
gadget" when a taint policy connects **three** steps on a speculative path:

1. **CONTROL** — attacker-controlled data reaches the speculative path (direct
   input, memory massaging, or LVI-style injection).
2. **SECRET ACCESS** — a secret is read out of bounds (OOB) or after free (UAF)
   on that path.
3. **LEAK CHANNEL** — the secret is transmitted through a covert channel:
   **cache**, **MDS** (stale microarchitectural buffer), or **port contention**.

This audits our dataflow/taint features against those three steps. Our model is
`spec/dataflow_taint.py` (`apply_dataflow_taint`, wired into
`spec/spec_pdg_builder.py`), the `is_secret_source`/`is_transmitter`
`spec_flag_rules` in `spec/base.json`, and `has_page_probe_load` /
`_PAGE_SHIFT_RE` in `v54/inline_features.py`.

## What our model actually computes

- **secret-source** (`is_secret_source`): a LOAD whose address is indexed
  (single-instruction `(%base,%idx)` on x86/ARM, or a cross-instruction
  `add addr,base,idx; ld ...` chain on RISC-V).
- **transmitter** (`is_transmitter`): a LOAD *or* STORE to a secret-dependent
  address where the backward data-dependence path passes through a SHIFT by a
  **probe-scale** immediate — 6 bits (64 B, cache line) or 9–15 bits
  (512 B–32 KB, page). This is the Flush+Reload / Meltdown receiver idiom.

## Mapping to KASPER's three steps

| KASPER step | Our coverage | Verdict |
|---|---|---|
| 1. CONTROL (attacker input on spec path) | **none** — taint starts at the secret LOAD; no origin for attacker-controlled input or a bypassed bounds check | **GAP** |
| 2. SECRET ACCESS (OOB/UAF read) | indexed LOAD = "reads memory at a computed index" | **partial** — captures the load, not that it is *out of bounds* |
| 3a. CACHE channel | probe-shift (6-bit) → secret-dependent load/store | **covered** |
| 3b. L1TF/page channel | probe-shift (9–15-bit) → secret-dependent load | **covered** (our L1TF signature) |
| 3c. MDS channel (stale buffer source) | only the 6-bit *receiver* shift; the stale store-buffer/fill-buffer *forwarding source* is not tainted | **GAP** — MDS is indistinguishable from cache-Spectre to this feature |
| 3d. port-contention channel (SMoTherSpectre) | **none** | **GAP** |

## Findings

1. **Step 1 (attacker control) is not represented at all.** We begin taint at
   the secret load, so our `is_secret_source` fires on *any* indexed load, not
   only ones whose index is attacker-controlled and bypasses a check. This is
   the structural reason an earlier "any load reachable from a load" attempt put
   89.5 % of its signal on BENIGN (recorded in `dataflow_taint.py`); the current
   code suppresses that by gating the *transmit* on a probe-shift, but it never
   adds the *control* evidence KASPER uses. Fix direction: a feature that the
   secret-source index is reachable (DATA_DEP) from a function argument or from
   the compare of a preceding conditional branch it bypasses — i.e. the V1
   bounds-check-bypass shape, made explicit.

2. **Our covert-channel axis is cache-only (plus the page variant).** Steps 3a
   and 3b are covered; **3c (MDS) and 3d (port contention) are not.** MDS is one
   of our nine classes, yet the dataflow feature cannot separate it from a
   cache-Spectre gadget: both end in a 6-bit probe-shift receiver. MDS's
   distinguishing trait is the *source* — a store-to-load forward with a
   mismatched address (stale buffer), the same family as V4 SSB. Fix direction:
   taint a store→load forward whose addresses do not provably match as an
   MDS/V4 secret source, independent of the receiver shift.

3. **Port contention is entirely unmodeled.** A secret-dependent
   variable-latency instruction (e.g. a secret-controlled `div`/`mul` or a
   secret-gated branch feeding a contended port) is a leak with no cache
   footprint. No current feature fires on it. Fix direction: a sink feature for
   secret-dependent operand of a variable-latency / port-pressure op.

4. **On x86 the cross-instruction taint adds zero new signal**
   (`eval/validate_dataflow_taint_results.txt`: +0 secret-source, +0
   transmitter across all nine classes; multiseed accuracy 95.3–96.4 %, no lift
   over baseline). x86 already has base+index addressing, so the
   single-instruction rule already fires there; the cross-instruction
   generalization earns its keep only on RISC-V. Consequence for this audit: on
   x86 our taint = the receiver-shift half of step 3a/3b and nothing of steps 1,
   3c, or 3d — exactly the gaps above, now quantified as "nothing extra on x86".

## Actionable, cheap next steps (no KASPER install needed)

- **F1 (control origin).** Add `secret_index_from_input`: the secret-source
  load's index register is DATA_DEP-reachable from a function argument or from
  the operands of the compare feeding a bypassed conditional branch. Directly
  encodes KASPER step 1 and should tighten `is_secret_source`'s benign
  over-fire. Testable on the existing 5533-record corpus.
- **F2 (MDS/V4 source).** Add `stale_forward_source`: a LOAD that reuses a
  recently STOREd address region with a non-matching offset (store-buffer
  forward), tainted as a secret source independent of the receiver shift — the
  feature that would let the detector tell MDS/V4 from cache-Spectre.
- **F3 (port-contention sink).** Add `varlatency_secret_sink`: a
  variable-latency op (`div`, `idiv`, some `mul`, gather) whose operand is
  secret-dependent. Covers KASPER channel 3d, currently a blind spot.

F1–F3 are feature additions to `spec/dataflow_taint.py` / `candidate_features.py`
measurable with the existing multiseed harness
(`eval/run_dataflow_taint_multiseed.sh`), gated by `./scripts/run_feature_gate.sh`
like any feature change. None requires running KASPER; KASPER's model is the
specification they implement.
