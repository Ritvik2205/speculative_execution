# Real-transfer — held-out real-hardware recall: baseline vs trained-with-real (mean±95%CI)

Generalizes P3 (SPECTRE_V4) to MDS/L1TF/SPECTRE_V1. Held-out sets are POSITIVES ONLY (oracle/revizor/build_hw_transfer.py) — no fenced-BENIGN twins the way real_v4_p3.md has, so no false-positive-rate column.

| class | BEFORE (w3_embed_on) | AFTER (<class>_hw) |
|---|---|---|
| MDS | 0.000±0.000 | 0.800±0.392 |
| L1TF | 0.700±0.240 | 1.000±0.000 |
| SPECTRE_V1 | 0.400±0.480 | 1.000±0.000 |
