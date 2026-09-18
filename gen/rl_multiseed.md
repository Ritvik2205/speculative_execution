# Oracle-RL multi-seed: baseline vs pretrained

Runs: baseline_s1, baseline_s2, baseline_s3, pretrained_s1, pretrained_s2, pretrained_s3

Mean ± 95% CI across seeds. Yield saturates after round 0, so round-0 yield and the diversity metrics are the discriminating ones.

| metric | baseline | pretrained |
|---|---|---|
| round-0 yield | 0.500±0.026 (n=3) | 0.496±0.061 (n=3) |
| overall yield | 0.824±0.065 (n=3) | 0.847±0.023 (n=3) |
| unique leaking gadgets | 95.333±31.387 (n=3) | 71.667±10.453 (n=3) |
| unique-rate | 0.638±0.157 (n=3) | 0.506±0.066 (n=3) |
| top-1 template multiplicity | 30.333±9.147 (n=3) | 34.667±27.819 (n=3) |

## Verdict

- **round-0 yield**: pretrained < baseline — CIs overlap (not significant at n)
- **unique leaking gadgets**: pretrained < baseline — CIs overlap (not significant at n)
- **top-1 multiplicity (lower=less collapse)**: pretrained > baseline — CIs overlap (not significant at n)
