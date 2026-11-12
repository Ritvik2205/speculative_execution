# 03 — Validate the Unicorn speculative emulator against Spectector-labelled pairs

Status: done (KILL — see comment of 2026-11-12)
Type: task
Blocked by: nothing

## Question

Does `oracle/spec_emulator.py` reproduce the Spectector tainted-victim verdict on both sides of the 982 injected pairs (pass: 0.95 agreement on leaking and on safe sides, no pair kind under 0.90; kill: under 0.90 after one round of fixes)?

## Done when

`oracle/SPEC_EMULATOR_VALIDATION.md` with the agreement table and every disagreement listed by cause, and a stated pass or kill.

Spec: `../spec.md` section 5, W3.

## Comments

### 2026-11-12 — result: KILL (Claude)

Full run, 982 pairs (1,265 distinct programs), after one round of fixes (lenient memory mode).
Report: `oracle/SPEC_EMULATOR_VALIDATION.md`.

- Leaking sides the emulator calls leaking: 554 of 824 runnable (0.672). 158 not runnable.
- Safe sides the emulator calls safe: 771 of 824 runnable (0.936). 158 not runnable.
- By kind (leak side / safe side): fence 0.639 / 0.947, inject 0.638 / 0.944, reorder 0.765 / 0.910.
- Largest cause: 270 leaking sides with "no speculative difference found". Suspected, not
  verified: the emulator mispredicts one branch at a time, and many cores sit behind a second
  branch of the host function.
- 316 sides not runnable (undefined local labels after injection, instructions Unicorn rejects,
  unmappable addresses, operand-size errors in the benign bodies).

Under the rule fixed before the run (kill below 0.90) the emulator is not used as an oracle.
It stays in the repository as an unvalidated tool. Ticket 04 is dropped.
