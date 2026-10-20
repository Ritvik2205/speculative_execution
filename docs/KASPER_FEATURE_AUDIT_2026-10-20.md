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

---

## Implementation status (2026-10-20): F1/F2/F3 shipped as opt-in node flags

All three implemented in `spec/dataflow_taint.py::apply_kasper_taint`, wired into
`spec/spec_pdg_builder.py` (runs after `apply_dataflow_taint`), registered as
`KASPER_FLAGS` in `v54/pdg_builder.py`. **Opt-in and off by default**: the flags
live outside `SPEC_FLAGS` and are concatenated into the node feature vector only
when `INCLUDE_KASPER_FLAGS` / env `SPECEXEC_KASPER_FLAGS=1` is set, so the default
build is byte-identical (40-dim nodes) and every existing checkpoint — the
locked classifier included — loads and scores exactly as before.

Each flag ANCHORS on a confirmed `is_secret_source` node, so it refines that set
rather than widening it (keeps them off benign by construction).

### Existing results verified intact (default path)
- Node feature vector default **40** dims (opt-in **43**).
- KASPER `find_keyring_by_name` gadget still scores **0.996** (V1) — unchanged.
- Oracle agreement gate: **PASS 99.86 %, +0.00 pp** vs baseline
  (`eval/oracle_gate_result.json`). Control-flow spec untouched, as expected
  for taint-only features.
- Unit tests: `tests/spec/test_kasper_taint.py` 10/10 pass.

### By-construction corpus validation (`spec/validate_kasper_taint.py`, 5532 recs)
Records-firing rate, attack classes vs BENIGN:

| flag | strongest class(es) | BENIGN | reading |
|---|---|---|---|
| F1 `is_control_gated_source` | **V1 83.7 %**, RSB 23.1 %, L1TF 18.1 %, MDS 11.8 % | 7.9 % | strong, V1-specific (~10:1 over benign) — the bounds-check-bypass shape |
| F2 `is_stale_forward_source` | L1TF 15.6 %, BHI 10.3 %, MDS 6.8 %, V4 3.4 % | 1.5 % | low benign, but **fires broader than intended** — a store-bypass-shaped source across mem-disclosure classes, weaker on V4 than hoped (corpus V4 often lacks an explicit same-base/diff-offset store at asm level) |
| F3 `is_varlat_sink` | **MDS only, 2.5 %** | **0 %** | surgically clean (zero benign) but rare (n=4) — real port-contention idiom, tiny signal |

Honest caveat: F2 did not achieve the clean V4/MDS separation the audit
predicted; it is a low-benign mem-disclosure-source signal. F1 is the strong
win; F3 is clean-but-rare.

### To measure detector lift (pending; not claimed here)
Lift must come from a multi-seed retrain with the flags on — single-seed
"parity" is not trusted in this repo. Retrain + gate:

```bash
# retrain the spec-builder GINE with the 3 flags on, all seeds
SPECEXEC_KASPER_FLAGS=1 bash eval/run_full_tost.sh        # or v54/run.sh per seed
# then the gate reads the fresh cached results:
./scripts/run_feature_gate.sh                             # stage-2 per-class lift
```
Until that multiseed run lands, F1/F2/F3 are validated-by-construction and
result-neutral (off by default); the accuracy/lift claim is explicitly open.

---

## Lift result (2026-10-20): NEGATIVE — flags stay off by default

Ran the paired multiseed retrain (`eval/kasper_tost.sbatch`, "both" node-feature
mode, flags OFF vs ON, same seeds/graphs). 3 seeds landed (42, 1, 7).
Source: `eval/kasper_tost/kasper_tost.md`.

**Accuracy:** baseline 93.87 % ± 0.20 → +F1/F2/F3 93.89 % ± 0.79. Delta **+0.02 pp**
(noise), and adding the three features **inflated seed variance** (0.20 → 0.79).

**Per-class recall:** nothing clears the combined-std band. Nominal positives all
within noise (MDS +0.053, V2 +0.030, INCEPTION +0.017, V1 +0.013); beyond-band
regressions on BHI (−0.040) and RETBLEED (−0.043); L1TF −0.053 (within noise via
high variance); SPECTRE_RSB 0.000→0.333±0.471 is pure instability.

**Conclusion.** The audit's gaps are real (the detector is demonstrably
channel-blind on the KASPER gadget), but **adding the taint flags as explicit
node features does not close them in this detector.** The GINE + learned-MLM
representation already encodes the bounds-check / store / probe structure the
flags name, so appending them is redundant and adds noise, not signal — the same
pattern this repo has seen before (learned ≯ hand, spec-generic ≯ hand). The one
directional hint (MDS +0.053, consistent with F3 being MDS-specific) is not real
at n=3 and not worth more compute given the inflated variance.

**Decision:** F1/F2/F3 stay **off by default** (already the case; zero impact on
any existing result). They remain in the tree, validated-by-construction and
opt-in, as a documented negative. Closing the channel-blindness would be an
architectural/data change (e.g. a channel-labelled training signal), not a
feature append.
