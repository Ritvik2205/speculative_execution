"""build_hw_joint + make_misplaced_variant tests (no torch/model)."""
import importlib.util, json, sys
from pathlib import Path
import pytest

ROOT = Path(__file__).resolve().parents[2]

def _load(name, rel):
    spec = importlib.util.spec_from_file_location(name, ROOT / rel)
    m = importlib.util.module_from_spec(spec); sys.modules[name] = m
    spec.loader.exec_module(m); return m

joint = _load("build_hw_joint", "oracle/revizor/build_hw_joint.py")
synth = _load("synth_v4_benign_ctl", "oracle/revizor/synth_v4_benign.py")

def R(g, label="BENIGN"): return {"label": label, "group": g, "sequence": ["nop"]}

def test_joint_union():
    base = [R("b1"), R("b2")]
    cf = {"mds": base + [R("m1", "MDS"), R("m1_fenced")],
          "l1tf": base + [R("l1", "L1TF")]}
    hf = {"mds": [R("m9", "MDS"), R("m9_fenced")], "l1tf": [R("l9", "L1TF")]}
    out, tails = joint.build_joint(base, cf, hf)
    assert out == base + cf["mds"][2:] + cf["l1tf"][2:]
    assert {c: len(t) for c, t in tails.items()} == {"mds": 2, "l1tf": 1}

def test_joint_head_mismatch():
    base = [R("b1")]
    with pytest.raises(ValueError, match="prep_hw_transfer"):
        joint.build_joint(base, {"mds": [R("other"), R("m1", "MDS")]}, {"mds": []})

def test_joint_heldout_leak():
    base = [R("b1")]
    cf = {"mds": base + [R("m1_fenced")]}
    with pytest.raises(ValueError, match="leak"):
        joint.build_joint(base, cf, {"mds": [R("m1", "MDS")]})

V1 = ["cmp rax, 1", "jne .L", "mov rbx, [rax]", "mov rcx, [rbx]"]

def test_misplaced_variant():
    rec = {"label": "SPECTRE_V1", "group": "g", "arch": "x86_64", "sequence": V1}
    k = len(synth.fence_gadget_for_class(V1, "SPECTRE_V1")) - len(V1)
    assert k > 0
    m = synth.make_misplaced_variant(rec, "SPECTRE_V1")
    assert m["sequence"] == ["lfence"] * k + V1
    assert m["label"] == "SPECTRE_V1" and m["group"] == "g_misfenced"
    assert m["source"] == "synth_misplaced_fence_control"

def test_misplaced_k0_skipped():
    rec = {"label": "SPECTRE_V1", "group": "g", "sequence": ["nop", "ret"]}
    assert synth.make_misplaced_variant(rec, "SPECTRE_V1") is None

def test_misplaced_cli_positives_only(tmp_path):
    src, out = tmp_path / "h.jsonl", tmp_path / "o.jsonl"
    recs = [{"label": "SPECTRE_V1", "group": "p", "sequence": V1},
            {"label": "BENIGN", "group": "p_fenced", "sequence": V1}]
    src.write_text("\n".join(json.dumps(r) for r in recs) + "\n")
    synth.main(["--misplaced-from-heldout", str(src), "--out", str(out), "--vuln-class", "SPECTRE_V1"])
    got = [json.loads(l) for l in out.read_text().splitlines()]
    assert [g["group"] for g in got] == ["p_misfenced"]
