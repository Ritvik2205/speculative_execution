"""test_build_leakcond_corpus.py — leak-cond corpus assembly (spec B).

Pure-python (no torch), so it runs locally. Also runnable without pytest:
`python3 tests/gen/test_build_leakcond_corpus.py`.

Proves: the label->mit mapping table, class-preservation on the mitigated twin,
unverified->unknown, and the leakage guard (group-holdout never splits a base,
and a held-out base's pool original is withheld from train).
"""
import json
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "gen"))
import build_leakcond_corpus as B  # noqa: E402


def _write(p, rows):
    with open(p, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")


def _fixture(d: Path):
    """A tiny matched set: 3 bases/class is enough for a 20% holdout to pick 1."""
    variants, pool = [], []
    for cls in ("SPECTRE_V1", "L1TF"):
        for i in range(3):
            vid = f"violation-2609{cls[-1]}0-00000{i}"
            # leaking arm (a transform) + mitigated twin, class preserved
            variants.append({"vuln_class": cls, "label": cls, "arch": "x86_64",
                             "variant": "entry", "src_path": f"x/{cls}/{vid}/program.asm",
                             "sequence": [f"{cls}_leak_{i}_a", f"{cls}_leak_{i}_b"]})
            variants.append({"vuln_class": cls, "label": "BENIGN", "arch": "x86_64",
                             "variant": "fence_all", "src_path": f"x/{cls}/{vid}/program.asm",
                             "sequence": [f"{cls}_safe_{i}_a", "lfence", f"{cls}_safe_{i}_b"]})
            # pool ORIGINAL for this base (distinct sequence from the transforms)
            pool.append({"label": cls, "arch": "x86_64",
                         "group": f"revizor_{cls.lower()}_{vid}",
                         "sequence": [f"{cls}_orig_{i}_a", f"{cls}_orig_{i}_b", f"{cls}_orig_{i}_c"]})
    v54 = [
        {"label": "SPECTRE_V2", "arch": "x86_64", "sequence": ["v2_a", "v2_b"]},
        {"label": "BENIGN", "arch": "arm64", "sequence": ["benign_a", "benign_b"]},
    ]
    _write(d / "variants.jsonl", variants)
    _write(d / "pool.jsonl", pool)
    _write(d / "v54.jsonl", v54)


def _run(d: Path):
    B.main(["--variants", str(d / "variants.jsonl"),
            "--pool", str(d / "pool.jsonl"),
            "--v54", str(d / "v54.jsonl"),
            "--out-train", str(d / "train.jsonl"),
            "--out-test", str(d / "heldout.jsonl"),
            "--seed", "0"])
    tr = [json.loads(l) for l in open(d / "train.jsonl")]
    te = [json.loads(l) for l in open(d / "heldout.jsonl")]
    return tr, te


def test_mit_mapping_and_class_preserved():
    with tempfile.TemporaryDirectory() as dd:
        d = Path(dd); _fixture(d); tr, te = _run(d)
        by = {}
        for r in tr + te:
            by.setdefault((r["source"], r["label"], r["mit"]), 0)
            by[(r["source"], r["label"], r["mit"])] += 1
        # leaking arm -> leak, class preserved (label == vuln_class, not BENIGN)
        assert any(s == "hw_variant" and lab in ("SPECTRE_V1", "L1TF") and m == "leak"
                   for (s, lab, m) in by)
        # mitigated twin -> safe AND class preserved (label is the vuln class, NOT BENIGN)
        assert any(s == "hw_variant" and lab in ("SPECTRE_V1", "L1TF") and m == "safe"
                   for (s, lab, m) in by)
        assert not any(s == "hw_variant" and lab == "BENIGN" for (s, lab, m) in by), \
            "mitigated twin must keep its vuln_class, never be relabelled BENIGN"
        # pool -> leak
        assert any(s == "hw_pool" and m == "leak" for (s, lab, m) in by)
        # v54 attack -> unknown ; v54 BENIGN -> safe
        assert by.get(("v54", "SPECTRE_V2", "unknown"), 0) == 1
        assert by.get(("v54", "BENIGN", "safe"), 0) == 1


def test_groupholdout_never_splits_a_base():
    with tempfile.TemporaryDirectory() as dd:
        d = Path(dd); _fixture(d); tr, te = _run(d)
        tb = {r["base"] for r in tr if r["base"]}
        eb = {r["base"] for r in te if r["base"]}
        assert tb and eb                     # both non-empty (holdout happened)
        assert not (tb & eb), "a base straddles train and heldout"


def test_heldout_base_pool_original_withheld_from_train():
    with tempfile.TemporaryDirectory() as dd:
        d = Path(dd); _fixture(d); tr, te = _run(d)
        heldout_bases = {r["base"] for r in te if r["base"]}
        # NO train record (from ANY source, pool included) carries a held-out base
        assert not any(r["base"] in heldout_bases for r in tr), \
            "held-out base leaked into train (pool original not withheld)"
        # and the leaking transforms never equal any training sequence
        trs = {tuple(r["sequence"]) for r in tr}
        tes = {tuple(r["sequence"]) for r in te}
        assert not (trs & tes)


def _main():
    fails = 0
    for fn in (test_mit_mapping_and_class_preserved,
               test_groupholdout_never_splits_a_base,
               test_heldout_base_pool_original_withheld_from_train):
        try:
            fn(); print("  PASS ", fn.__name__)
        except AssertionError as e:
            fails += 1; print("  FAIL ", fn.__name__, "->", e)
    print("ALL PASS" if not fails else f"{fails} FAILURES")
    return 1 if fails else 0


if __name__ == "__main__":
    raise SystemExit(_main())
