# Generator A/B: base vs pretrained (before RL)

Same-prompt, multi-seed diagnostic: isolates whether pretraining changed generation quality independent of any RL fine-tuning.

- class: `SPECTRE_V1`  arch: `x86_64`
- samples per seed: 40  seeds: [1, 2, 3]
- temperature: 0.9  top_k: 20
- base: `gen/generator.pt`
- pretrained: `gen/generator_pretrained.pt`

## Side-by-side (mean +/- spread across seeds)

| metric | base | pretrained |
|---|---|---|
| total samples | 120 | 120 |
| unique-rate | 0.850 +/- 0.061 | 1.000 +/- 0.000 |
| mean pairwise similarity (Ruzicka) | 0.252 +/- 0.011 | 0.151 +/- 0.004 |
| mean sequence length | 22.675 +/- 1.030 | 33.600 +/- 2.360 |
| realize-rate | 0.950 +/- 0.020 | 1.000 +/- 0.000 |

## Verdict

pretrained looks better on unique-rate (base=0.850 vs pretrained=1.000); mean pairwise similarity (base=0.252 vs pretrained=0.151) -- this isolates a pretraining effect independent of RL (measured before any RL fine-tuning, so RL's yield-saturation can't hide it).
