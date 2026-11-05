"""Tests for eval/shared_config_identifiability.py: is the class readable from
the program text under the shared config, by any non-learned feature set?"""
from eval.shared_config_identifiability import KINDS, features, identifiability
from tests.eval.test_shared_config import rec


def toy(separable):
    out = []
    for cls, op in [("MDS", "movq (%r14), %rax"), ("L1TF", "addq (%r14), %rax")]:
        for seed in range(1000, 1010):
            for n in range(3):
                body = [op if separable else "xorq %rbx, %rax", "andq $0x1fff, %rax"]
                out.append(rec(cls, seed, seed * 10 + n, body))
    return out


def test_feature_kinds():
    r = toy(True)[0]
    assert set(KINDS) == {"bag", "bigram", "struct", "all"}
    assert features(r, "bag") == {"u:movq": 1, "u:andq": 1}
    s = features(r, "struct")
    assert s["len"] == 2 and s["memr"] == 1 and s["mem:movq"] == 1


def test_separable_classes_score_high_and_identical_ones_do_not():
    hi = identifiability(toy(True), ("MDS", "L1TF"), kinds=("bag",), reps=2)
    lo = identifiability(toy(False), ("MDS", "L1TF"), kinds=("bag",), reps=2)
    assert hi[("bag", "LR")][0] > 0.95
    assert lo[("bag", "LR")][0] < 0.65
