# Real-transfer — held-out real-hardware recall: baseline vs trained-with-real (mean±95%CI)

Generalizes P3 (SPECTRE_V4) to MDS/L1TF/SPECTRE_V1. Held-out sets are POSITIVES ONLY by default (oracle/revizor/build_hw_transfer.py); built with `--with-synth-twins`, they additionally carry fenced-BENIGN twins (source=synth_mitigated_twin) — **SYNTHETIC / UNVERIFIED** structural mitigations (an `lfence` placed at the textbook boundary, no hardware or symbolic confirmation), NOT the HW-CONFIRMED kind real_v4_p3.md reports for SPECTRE_V4. Never conflate the two false-positive numbers.

| class | BEFORE (w3_embed_on) | AFTER (<class>_hw) | synthetic-twin FP (heldout twins predicted non-BENIGN) [SYNTHETIC/UNVERIFIED] |
|---|---|---|---|
| MDS | 0.200±0.392 | 0.170±0.304 | 0.170±0.211 |
| L1TF | 0.000±0.000 | 0.000±0.000 | 0.362±0.293 |
| SPECTRE_V1 | 0.285±0.281 | 0.026±0.019 | 0.407±0.236 |
