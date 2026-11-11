# v57 bars: opcode-count gradient boosting

10 seeds, mean ± sd. Train 4693, test 1196; mechanism train 2354, test 615.

| measure | opcode-count GBM |
|---|---|
| leak: balanced accuracy, all | 0.957 ± 0.000 |
| leak: balanced accuracy, arm64 | 0.955 ± 0.000 |
| leak: balanced accuracy, x86_64 | 0.957 ± 0.000 |
| leak: recall on hardware attacks (n=110) | 1.000 ± 0.000 |
| leak: recall on synthetic attacks (n=505) | 0.996 ± 0.000 |
| external real-world x86 benign: false-positive rate (n=670) | 0.064 ± 0.000 |
| hardware revizor_hwlabel_variants: leak-vs-mitigated balanced accuracy (n=806) | 0.500 ± 0.000 |
| hardware revizor_hwlabel_variants: share of mitigated called SAFE | 0.000 ± 0.000 |
| hardware revizor_hwlabel_cf_heldout: leak-vs-mitigated balanced accuracy (n=301) | 0.500 ± 0.000 |
| hardware revizor_hwlabel_cf_heldout: share of mitigated called SAFE | 0.000 ± 0.000 |
| hardware revizor_hwlabel_nofence_heldout: leak-vs-mitigated balanced accuracy (n=274) | 0.500 ± 0.000 |
| hardware revizor_hwlabel_nofence_heldout: share of mitigated called SAFE | 0.000 ± 0.000 |
| mechanism (attacks only): macro-F1 | 0.884 ± 0.000 |
| mechanism (attacks only): accuracy | 0.912 ± 0.000 |

| shortcut on leak/safe (balanced accuracy) | |
|---|---|
| ISA alone | 0.500 |
| length alone | 0.425 |
