#!/usr/bin/env python3
"""Dataset-wide (all 496 RISC-V records, all classes): is instruction count
higher for misclassified records than correctly-classified ones? Point-biserial
correlation + group means, as a class-agnostic robustness check on the
per-class pattern found in h2_precise_edge_dist.py / h2_other_pairs.py."""
import json
import re
import sys
from pathlib import Path
import statistics as st

ROOT = Path(sys.argv[1])
PRED_JSON = Path(sys.argv[2])
_COMMENT = re.compile(r"[#;].*$")


def is_instr(line):
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":") and ":" not in s.split()[0]


def extract_sequence(path):
    seq = []
    for raw in path.read_text(errors="ignore").splitlines():
        line = _COMMENT.sub("", raw).rstrip()
        if is_instr(line):
            seq.append(line.strip())
    return seq


d = json.loads(PRED_JSON.read_text())
pair_sources = d["pair_sources"]

correct_lens = []
wrong_lens = []
for pair, sources in pair_sources.items():
    true_c, pred_c = pair.split("->")
    for s in sources:
        seq = extract_sequence(ROOT / s)
        n = len(seq)
        if true_c == pred_c:
            correct_lens.append(n)
        else:
            wrong_lens.append(n)

print(f"n_correct={len(correct_lens)}  mean_instr={st.mean(correct_lens):.1f}  median={st.median(correct_lens):.0f}")
print(f"n_wrong  ={len(wrong_lens)}  mean_instr={st.mean(wrong_lens):.1f}  median={st.median(wrong_lens):.0f}")

try:
    from scipy import stats as scistats
    t, p = scistats.ttest_ind(correct_lens, wrong_lens, equal_var=False)
    print(f"Welch t-test: t={t:.3f} p={p:.2e}")
except ImportError:
    print("scipy unavailable, skipping t-test")
