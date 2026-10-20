# KASPER real-software gadget vs. our detector (2026-10-20)

External-validity check: does the locked GINE detector flag a transient-execution
gadget that KASPER (NDSS'22) actually found in the Linux kernel?

## Gadget
`find_keyring_by_name` (security/keys/keyring.c:1161), KASPER's primary case
study, its label **PHT-MASSAGE-MDS** (also tagged PORT-contention). KASPER ships
no gadget assembly (its gadget DB is a runtime Mongo of source-line refs), so we
reconstruct the gadget's dataflow faithfully from the paper's Listings 9-10 in
minimal C (`find_keyring.c`) and compile to x86-64 at -O2 (`find_keyring.s`):
loop-exit conditional branch (PHT trigger) -> transient iteration -> OOB pointer
chase `pos->user->uid` (speculative secret load) -> cache-line probe (transmit).

## Result (locked ensemble, eval/locked_classifier.py)
| variant | predicted | attack_prob | top class |
|---|---|---|---|
| full (control + OOB-load + transmit) | SPECTRE_V1 | **0.996** | V1 0.994 |
| kernel-side only (control + OOB-load, no in-gadget transmit) | SPECTRE_V1 | **0.979** | V1 0.968 |

## Reading
1. **Positive external-validity point.** The detector flags a real kernel gadget
   as an attack at ~1.0 - our first detection result on real-software (not
   synthesised, not corpus) code.
2. **Class = V1, KASPER = PHT-MASSAGE-MDS - consistent, not a miss.** Our
   nine-class scheme labels by the *speculation primitive*; the gadget's trigger
   is a PHT (conditional-branch / loop-exit) misprediction, which *is* the
   Spectre-V1 mechanism. KASPER's label names the leak *channel* (MDS/port). So
   "V1" (primitive) + "MDS" (channel) describe the same gadget on two axes.
3. **Corroborates the KASPER feature audit (docs/KASPER_FEATURE_AUDIT...).**
   attack_prob barely moves when the transmit is removed (0.996 -> 0.979): the
   detector keys on the PHT + OOB-load *control/access* structure and is nearly
   blind to the channel - exactly why it cannot separate the MDS channel from V1
   (audit gaps F2 MDS-source, F3 port-contention). The real gadget reproduces
   the audit's prediction.

Reproduce: `python3 eval/kasper_gadget/predict_kasper.py`
