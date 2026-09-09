# W3 result — arch-invariance x handcrafted ablation (3 seeds each)

Trained on v55h_train (de-shortcut set), tested on locked v54_test. Mean±95%CI.

| config | locked macroF1 | arm64 macroF1 | x86 macroF1 | trigger-masked macroF1 | locked ECE |
|---|---|---|---|---|---|
| embed + hand | 0.822±0.011 | 0.641±0.056 | 0.870±0.064 | 0.814±0.016 | 0.024±0.003 |
| embed, NO hand | 0.836±0.019 | 0.638±0.167 | 0.817±0.090 | 0.829±0.017 | 0.030±0.013 |
| adversarial + hand | 0.797±0.014 | 0.494±0.073 | 0.856±0.071 | 0.792±0.011 | 0.032±0.015 |
| adversarial, NO hand | 0.821±0.008 | 0.537±0.108 | 0.753±0.055 | 0.812±0.013 | 0.034±0.006 |

**arm64 gap (x86 − arm64):** embed +0.229  vs  adversarial +0.362  → DANN does NOT close the gap.
**handcrafted ablation (locked macroF1):** hand-on 0.822 vs hand-off 0.836 → dropping the 256-dim hand branch costs -0.014 macroF1.
