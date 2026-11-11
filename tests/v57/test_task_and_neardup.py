"""Step 6: detector task definition and near-duplicate-disjoint splitting."""
import random
import sys
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO))

from v57 import task, neardup  # noqa: E402


@pytest.mark.parametrize("label,leak,mech", [
    ("BENIGN", "SAFE", None),
    ("SPECTRE_V1", "LEAK", "COND_BRANCH"),
    ("SPECTRE_V2", "LEAK", "INDIRECT_BRANCH"),
    ("BRANCH_HISTORY_INJECTION", "LEAK", "INDIRECT_BRANCH"),
    ("BHI", "LEAK", "INDIRECT_BRANCH"),
    ("RETBLEED", "LEAK", "RETURN"),
    ("INCEPTION", "LEAK", "RETURN"),
    ("SPECTRE_RSB", "LEAK", "RETURN"),
    ("SPECTRE_V4", "LEAK", "STORE_BYPASS"),
    ("MDS", "LEAK", "FAULTING_LOAD"),
    ("L1TF", "LEAK", "FAULTING_LOAD"),
])
def test_nine_way_label_maps_to_leak_and_code_level_mechanism(label, leak, mech):
    assert task.leak_label(label) == leak
    assert task.mechanism(label) == mech


def test_unknown_label_is_an_error_not_a_silent_class():
    with pytest.raises(KeyError):
        task.mechanism("SOMETHING_NEW")


def test_opcode_multiset_ignores_operands_prefixes_labels_and_directives():
    seq = ["movq (%rax), %rbx", "lock addq $1, (%rcx)", ".Lfoo:", "\tMOVQ %rbx, %rdx",
           ".p2align 4", "rep movsb", "ret"]
    assert neardup.opcodes(seq) == {"movq": 2, "addq": 1, "movsb": 1, "ret": 1}


def test_jaccard_is_multiset_overlap():
    a = {"mov": 4, "add": 1}
    b = {"mov": 2, "add": 1, "ret": 1}
    assert neardup.jaccard(a, b) == pytest.approx(3 / 6)
    assert neardup.jaccard(a, a) == 1.0
    assert neardup.jaccard({}, {}) == 0.0


def _rec(arch, ops, group):
    return {"arch": arch, "group": group, "sequence": [f"{o} x" for o in ops]}


def test_clusters_join_near_duplicates_and_shared_groups_but_not_other_isas():
    base = ["mov"] * 8 + ["add", "ret"]
    recs = [
        _rec("x86_64", base, "g1"),                       # 0
        _rec("x86_64", base[:-1] + ["nop"], "g2"),        # 1  jaccard 9/11 = 0.82 with 0
        _rec("x86_64", ["cmp", "jne", "call", "ret"], "g2"),  # 2  shares a group with 1
        _rec("x86_64", ["xor"] * 5, "g3"),                # 3  alone
        _rec("arm64", base, "g4"),                        # 4  same opcodes, other ISA
    ]
    cl = neardup.clusters(recs, threshold=0.8)
    assert cl[0] == cl[1] == cl[2]
    assert len({cl[0], cl[3], cl[4]}) == 3


def test_fast_clustering_agrees_with_the_quadratic_definition():
    rng = random.Random(0)
    ops = ["mov", "add", "sub", "cmp", "jne", "ret", "lea", "xor"]
    recs = [_rec("x86_64", [rng.choice(ops[: rng.randint(2, 8)]) for _ in range(rng.randint(3, 14))],
                 f"g{i}") for i in range(120)]
    got = neardup.clusters(recs, threshold=0.8)
    bags = [neardup.opcodes(r["sequence"]) for r in recs]
    for i in range(len(recs)):
        for j in range(i):
            if neardup.jaccard(bags[i], bags[j]) >= 0.8:
                assert got[i] == got[j], (i, j)


def test_cross_split_near_duplicate_rate():
    base = ["mov"] * 8 + ["add", "ret"]
    train = [_rec("x86_64", base, "a")]
    test = [_rec("x86_64", base, "b"), _rec("x86_64", ["xor"] * 6, "c")]
    assert neardup.leak_rate(train, test, 0.8) == 0.5


def test_thin_keeps_one_record_per_near_duplicate_neighbourhood_per_isa():
    base = ["mov"] * 8 + ["add", "ret"]
    recs = [_rec("x86_64", base, "p1"), _rec("x86_64", base, "p2"),
            _rec("x86_64", base[:-1] + ["nop"], "p3"), _rec("x86_64", ["xor"] * 5, "p4"),
            _rec("arm64", base, "p5")]
    kept = neardup.thin(recs, 0.8)
    assert [r["group"] for r in kept] == ["p1", "p4", "p5"]
    bags = [neardup.opcodes(r["sequence"]) for r in kept if r["arch"] == "x86_64"]
    assert all(neardup.jaccard(a, b) < 0.8 for i, a in enumerate(bags) for b in bags[:i])
