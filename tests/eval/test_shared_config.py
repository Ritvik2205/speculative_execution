"""Tests for eval/shared_config.py — the class<->Revizor-config confound test on
the shared-config campaign (one instruction set + program shape for all
classes; COND_BR stays V1-only)."""
import json

from eval.shared_config import (CLASSES, branch_tell, is_control, opcode_lr_preds,
                                seed_group, split_by_seed, to_variant_rows)


def rec(cls, seed, n, ops):
    return {"label": cls, "arch": "x86_64", "sequence": ops,
            "group": f"revizor_{cls.lower()}_violation-{seed}-{n:06d}",
            "source": "revizor_hw_i5_8300h",
            "src_path": f"~/rvzr_runs/mcshared_261105-172300/{cls.lower()}/{seed}/violation-261105-{n:06d}/program.asm"}


def toy():
    out = []
    for cls, op in [("MDS", "movq (%r14), %rax"), ("L1TF", "addq (%r14), %rax"),
                    ("SPECTRE_V4", "xchgq %rax, (%r14)"), ("SPECTRE_V1", "jne .bb_0.1")]:
        for seed in range(1000, 1006):
            for n in range(2):
                out.append(rec(cls, seed, seed * 10 + n, [op, "andq $0x1fff, %rax"]))
    return out


def test_classes():
    assert CLASSES == ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1")


def test_seed_group_is_class_and_seed():
    r = toy()[0]
    assert seed_group(r) == "MDS::1000"


def test_control_dirs_detected():
    r = toy()[0]
    assert not is_control(r)
    r2 = dict(r, src_path=r["src_path"].replace("/mds/1000/", "/spectre_v4/ssbp_on/1000/"))
    r3 = dict(r, src_path=r["src_path"].replace("/mds/1000/", "/spectre_v4/smtoff/1000/"))
    assert is_control(r2) and is_control(r3)


def test_split_is_seed_disjoint_and_stratified():
    recs = toy()
    tr, te = split_by_seed(recs, frac=0.5, seed=0)
    assert len(tr) + len(te) == len(recs)
    assert not ({seed_group(r) for r in tr} & {seed_group(r) for r in te})
    for c in CLASSES:
        assert any(r["label"] == c for r in tr) and any(r["label"] == c for r in te)


def test_split_deterministic():
    a = split_by_seed(toy(), seed=3)
    b = split_by_seed(toy(), seed=3)
    assert [r["group"] for r in a[1]] == [r["group"] for r in b[1]]


def test_opcode_lr_separates_toy_classes():
    tr, te = split_by_seed(toy(), seed=0)
    preds = opcode_lr_preds(tr, te)
    assert preds == [r["label"] for r in te]


def test_branch_tell_counts_conditional_jumps_not_jmp():
    recs = [rec("SPECTRE_V1", 1, 1, ["jne .bb_0.1"]), rec("MDS", 1, 2, ["jmp .bb_0.1"]),
            rec("MDS", 1, 3, ["loopne .bb_0.1"])]
    t = branch_tell(recs)
    assert t["SPECTRE_V1"] == 1.0 and t["MDS"] == 0.5


def test_variant_rows_feed_score_hwlabel_variants():
    rows = to_variant_rows(toy()[:3])
    for r, src in zip(rows, toy()[:3]):
        assert r["variant"] == "shared" and r["vuln_class"] == src["label"] == r["label"]
        assert r["group"] == src["group"] and r["sequence"] == src["sequence"]
    json.dumps(rows)
