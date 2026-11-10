# Step 1 — loop comparison on the gate harness (2026-11-11)

All local (Docker Spectector), SPECTRE_V1, x86_64, `--harness gate`,
`--target-len long`, k=60/round, 6 rounds, fine-tune LR 1e-4, seeds 0–4.
Yield = oracle-confirmed leaks / fresh samples drawn that round.
Raw logs: scratchpad (not committed); aggregator `agg.py` logic reproduced below.

| generator | r0 leak/n | r5 leak/n | paired lift r5−r0 (per seed) | t (df 4) | distinct plain templates among leaks r0→r5 | top-template multiplicity r0→r5 |
|---|---|---|---|---|---|---|
| `generator_slot` (identity stream) | 0.71 ± 0.03 | **0.86 ± 0.03** | +0.14 (+.12 +.20 +.12 +.12 +.17), 5/5 | 8.4 | 0.85 → 0.77 | 6.2 → 10.8 |
| `generator_plainx86` (plain, same engine) | 0.74 ± 0.05 | 0.83 ± 0.06 | +0.09 (+.15 +.05 +.08 +.10 +.05), 5/5 | 4.7 | 0.81 → **0.54** | 7.6 → **18.2** |
| `generator_lencond` (old plain) | 0.66 ± 0.10 | 0.80 ± 0.04 | +0.14 (+.33 +.22 +.12 −.02 +.07), 4/5 | 2.4 | 0.84 → 0.65 | 4.8 → 9.4 |

Bars (n=100, length-matched, same harness): benign via slot stream 0.30,
benign via plain stream 0.51, raw benign 0.25, random tokens 0.03, empty/NOP 0.

Reading:
- On a harness where the body must carry the leak, every generator is far
  above benign, and the loop adds a consistent lift.
- With the identity stream the lift is the most consistent (5/5 seeds, t 8.4)
  and comes without collapse; the plain loop gains partly by concentrating on
  a few templates (distinct templates 0.81 → 0.54).
- Adjudicability is ~0.9 throughout, length is flat (24–30 instructions), so
  neither explains the lift.

Not yet shown: that leaks are *novel* (not copies of training windows), that
their minimal cores differ from benign's, and anything on hardware.
