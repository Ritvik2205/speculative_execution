# 03 — Validate the Unicorn speculative emulator against Spectector-labelled pairs

Status: needs-triage
Type: task
Blocked by: nothing

## Question

Does `oracle/spec_emulator.py` reproduce the Spectector tainted-victim verdict on both sides of the 982 injected pairs (pass: 0.95 agreement on leaking and on safe sides, no pair kind under 0.90; kill: under 0.90 after one round of fixes)?

## Done when

`oracle/SPEC_EMULATOR_VALIDATION.md` with the agreement table and every disagreement listed by cause, and a stated pass or kill.

Spec: `../spec.md` section 5, W3.

## Comments
