# Oracle-RL multi-seed: baseline vs pretrained

Runs: baseline_s1, baseline_s2, baseline_s3, baseline_s4, baseline_s5, pretrained_s1, pretrained_s2, pretrained_s3, pretrained_s4, pretrained_s5

Mean ± 95% CI across seeds. Yield saturates after round 0, so round-0 yield and the diversity metrics are the discriminating ones.

| metric | baseline | pretrained |
|---|---|---|
| round-0 yield | 0.540±0.048 (n=5) | 0.545±0.072 (n=5) |
| overall yield | 0.839±0.078 (n=5) | 0.703±0.030 (n=5) |
| unique leaking gadgets | 102.400±17.970 (n=5) | 134.800±5.860 (n=5) |
| unique-rate | 0.674±0.083 (n=5) | 0.971±0.021 (n=5) |
| top-1 template multiplicity | 28.800±6.303 (n=5) | 3.000±1.074 (n=5) |

## Verdict

- **round-0 yield**: pretrained > baseline — CIs overlap (not significant at n)
- **overall yield (raw leak rate)**: pretrained < baseline — CIs SEPARATE (real)
- **unique leaking gadgets**: pretrained > baseline — CIs SEPARATE (real)
- **top-1 multiplicity (lower=less collapse)**: pretrained < baseline — CIs SEPARATE (real)
