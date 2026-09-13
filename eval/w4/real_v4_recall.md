# Real-V4 recall: W4 store-forwarding edge, ON vs OFF

Test set: `eval/data/revizor_v4_real.jsonl` (16 real hardware-confirmed SPECTRE_V4 gadgets, Revizor i5-8300H campaign, `oracle/revizor/convert_v4_gadgets.py`).

This is the honest G1 test: the W4 locked-test edge-ablation showed V4 recall ON==OFF (0.995) only because the locked test's V4 was already at ceiling after W2 de-shortcutting. These 16 gadgets never touched training or the locked test — they are the first real held-out V4 measurement.

| condition | seeds | mean V4 recall | 95% CI (±) |
|---|---|---|---|
| ON (`--mem-order-edges`, eval/w4/memedge_s*) | 3 | 0.0000 | 0.0000 |
| OFF (baseline, eval/w2/viz_s*) | 3 | 0.0000 | 0.0000 |

**Verdict: NO — ON and OFF are identical (0.0000); the store-forwarding edge has zero measurable effect on real-V4 recall (both fail completely)**

Per-checkpoint detail:
- ON  `eval/w4/memedge_s42/gine_best.pt`: n=16, recall=0.0000
- ON  `eval/w4/memedge_s1/gine_best.pt`: n=16, recall=0.0000
- ON  `eval/w4/memedge_s7/gine_best.pt`: n=16, recall=0.0000
- OFF `eval/w2/viz_s42/gine_best.pt`: n=16, recall=0.0000
- OFF `eval/w2/viz_s1/gine_best.pt`: n=16, recall=0.0000
- OFF `eval/w2/viz_s7/gine_best.pt`: n=16, recall=0.0000

