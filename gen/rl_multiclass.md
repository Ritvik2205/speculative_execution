# Oracle-RL per-class (x86 symbolic oracle) — Phase 1

Runs: RETBLEED_s1, RETBLEED_s2, RETBLEED_s3, SPECTRE_V1_s1, SPECTRE_V1_s2, SPECTRE_V1_s3, SPECTRE_V2_s1, SPECTRE_V2_s2, SPECTRE_V2_s3, SPECTRE_V4_s1, SPECTRE_V4_s2, SPECTRE_V4_s3

Mean ± 95% CI across seeds. `adjudicable %` matters for the PARTIAL classes (V2/V4/RETBLEED): Spectector cannot rule on every gadget, so `adjudicated yield` (leak among ruled samples) is the fair per-class leak rate; `raw yield` counts UNSUPPORTED/UNRUNNABLE against the class.

| metric | RETBLEED | SPECTRE_V1 | SPECTRE_V2 | SPECTRE_V4 |
|---|---|---|---|---|
| raw yield (leak/all) | 0.000±0.000 (n=3) | 0.823±0.064 (n=3) | 0.000±0.000 (n=3) | 0.562±0.125 (n=3) |
| adjudicable % (oracle could rule) | 0.002±0.003 (n=3) | 0.824±0.061 (n=3) | 0.148±0.026 (n=3) | 0.873±0.053 (n=3) |
| adjudicated yield (leak/ruled) | 0.000±0.000 (n=1) | 0.998±0.004 (n=3) | 0.000±0.000 (n=3) | 0.648±0.173 (n=3) |
| unique leaking gadgets | 0.000±0.000 (n=3) | 105.667±51.115 (n=3) | 0.000±0.000 (n=3) | 75.667±46.799 (n=3) |
| unique-rate | 0.692±0.041 (n=3) | 0.692±0.262 (n=3) | 0.792±0.037 (n=3) | 0.702±0.181 (n=3) |
| top-1 template multiplicity | 22.333±3.457 (n=3) | 24.000±20.400 (n=3) | 16.333±3.457 (n=3) | 28.000±18.211 (n=3) |

## Per-class read

- **RETBLEED**: adjudicable 0% (PARTIALLY adjudicable — report adjudicated yield, not raw); adjudicated yield 0.00; ~0 unique leaking gadgets
- **SPECTRE_V1**: adjudicable 82% (PARTIALLY adjudicable — report adjudicated yield, not raw); adjudicated yield 1.00; ~106 unique leaking gadgets
- **SPECTRE_V2**: adjudicable 15% (PARTIALLY adjudicable — report adjudicated yield, not raw); adjudicated yield 0.00; ~0 unique leaking gadgets
- **SPECTRE_V4**: adjudicable 87% (PARTIALLY adjudicable — report adjudicated yield, not raw); adjudicated yield 0.65; ~76 unique leaking gadgets
