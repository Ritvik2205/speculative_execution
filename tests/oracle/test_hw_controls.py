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


# ---------------------------------------------------------------- allhw2
import random

V1L = ["cmp rax, 1", "jne .L", "mov rbx, [rax]", "mov rcx, [rbx]", "add rax, 1", "xor rcx, rcx"]

def _rec(**kw):
    d = {"label": "SPECTRE_V1", "group": "g", "arch": "x86_64", "sequence": V1L}; d.update(kw); return d

def _k(seq=V1L, cls="SPECTRE_V1"):
    return len(synth.fence_gadget_for_class(seq, cls)) - len(seq)

def test_placements_count_and_length():
    twin = synth.make_benign_variant(_rec(), "SPECTRE_V1")
    for pl in ("entry", "tail", "mixed"):
        m = synth.make_misplaced_variant(_rec(), "SPECTRE_V1", pl, random.Random(3))
        assert len(m["sequence"]) == len(twin["sequence"])
        assert m["sequence"].count("lfence") == twin["sequence"].count("lfence")
        assert m["label"] == "SPECTRE_V1" and m["group"] == "g_misfenced"
        assert m["source"] == "synth_misplaced_fence_control"
    t = synth.make_misplaced_variant(_rec(), "SPECTRE_V1", "tail")
    assert t["sequence"] == V1L + ["lfence"] * _k()

def test_entry_default_byte_identical():
    a = synth.make_misplaced_variant(_rec(), "SPECTRE_V1")
    b = synth.make_misplaced_variant(_rec(), "SPECTRE_V1", "entry")
    assert json.dumps(a) == json.dumps(b)
    assert a["sequence"] == ["lfence"] * _k() + V1L

def test_mixed_both_ends_and_deterministic():
    seq = ["cmp rax, 1", "jne .L", "mov rbx, [rax]", "cmp rbx, 1", "jne .M", "mov rcx, [rbx]"]
    k = _k(seq)
    assert k >= 2
    for s in range(10):
        m = synth.make_misplaced_variant(_rec(sequence=seq), "SPECTRE_V1", "mixed", random.Random(s))["sequence"]
        assert m[0] == "lfence" and m[-1] == "lfence" and len(m) == len(seq) + k
    r1 = [synth.make_misplaced_variant(_rec(sequence=seq), "SPECTRE_V1", "mixed", random.Random(5))["sequence"] for _ in range(3)]
    assert r1[0] == r1[1] == r1[2]

def test_bad_placement():
    with pytest.raises(ValueError):
        synth.make_misplaced_variant(_rec(), "SPECTRE_V1", "middle")

def test_cli_placement_tail(tmp_path):
    src, out = tmp_path / "h.jsonl", tmp_path / "o.jsonl"
    src.write_text(json.dumps(_rec(group="p")) + "\n")
    synth.main(["--misplaced-from-heldout", str(src), "--out", str(out), "--vuln-class", "SPECTRE_V1",
                "--placement", "tail", "--seed", "1"])
    got = json.loads(out.read_text().splitlines()[0])
    assert got["sequence"][-1] == "lfence" and got["sequence"][0] != "lfence"

def _pool(tmp_path):
    base = [R("b1")]
    pos = [_rec(group=f"p{i}", source="revizor_hw_i5_8300h") for i in range(4)]
    twins = [synth.make_benign_variant(p, "SPECTRE_V1") for p in pos]
    cf = {"spectre_v1": base + pos + twins}
    return base, cf, pos

def test_with_misfenced_one_per_positive():
    base = [R("b1")]
    pos = [_rec(group=f"p{i}") for i in range(4)]
    twins = [synth.make_benign_variant(p, "SPECTRE_V1") for p in pos]
    cf = {"spectre_v1": base + pos + twins}
    out, tails = joint.build_joint(base, cf, {"spectre_v1": []}, with_misfenced=True, seed=0)
    mis = [r for r in out if r["group"].endswith("_misfenced")]
    # SPECTRE_V1: one mixed per positive; shifted is off by default (HW: mitigated)
    assert len(mis) == 4 and all(r["label"] == "SPECTRE_V1" for r in mis)
    assert sorted(r["group"] for r in mis) == sorted(f"p{i}_misfenced" for i in range(4))
    two, _ = joint.build_joint(base, cf, {"spectre_v1": []}, with_misfenced=True, seed=0, shifted=True)
    assert len([r for r in two if r["group"].endswith("_misfenced")]) == 8
    out2, _ = joint.build_joint(base, cf, {"spectre_v1": []}, with_misfenced=True, seed=0)
    assert out == out2
    plain, _ = joint.build_joint(base, cf, {"spectre_v1": []})
    assert plain == base + cf["spectre_v1"][1:] and out[:len(plain)] == plain

def test_guard_strips_misfenced_suffix():
    base = [R("b1")]
    cf = {"mds": base + [R("m1_misfenced", "MDS")]}
    with pytest.raises(ValueError, match="leak"):
        joint.build_joint(base, cf, {"mds": [R("m1", "MDS")]})
    cf = {"mds": base + [R("m1", "MDS")]}
    with pytest.raises(ValueError, match="leak"):
        joint.build_joint(base, cf, {"mds": [R("m1_misfenced", "MDS")]})


V4S = ["mov %rax, (%rbx)", "mov (%rcx), %rdx", "mov %rdx, 8(%rbx)", "mov (%rdx), %rsi"]

def test_shifted_v1_before_branch():
    m = synth.make_misplaced_variant(_rec(), "SPECTRE_V1", "shifted")
    twin = synth.make_benign_variant(_rec(), "SPECTRE_V1")
    assert m["sequence"] == ["cmp rax, 1", "lfence", "jne .L", "mov rbx, [rax]", "mov rcx, [rbx]", "add rax, 1", "xor rcx, rcx"] \
        or m["sequence"].index("lfence") == m["sequence"].index("jne .L") - 1
    assert len(m["sequence"]) == len(twin["sequence"]) and m["sequence"].count("lfence") == twin["sequence"].count("lfence")
    assert m["sequence"] != twin["sequence"]
    assert m["label"] == "SPECTRE_V1" and m["group"] == "g_misfenced" and m["source"] == "synth_misplaced_fence_control"

def test_shifted_v4_before_store():
    rec = _rec(label="SPECTRE_V4", sequence=V4S)
    m = synth.make_misplaced_variant(rec, "SPECTRE_V4", "shifted")["sequence"]
    twin = synth.make_benign_variant(rec, "SPECTRE_V4")["sequence"]
    assert m == ["lfence", V4S[0], V4S[1], "lfence", V4S[2], V4S[3]]
    assert len(m) == len(twin) and m != twin

def test_shifted_rejected_for_mds_l1tf():
    for c in ("MDS", "L1TF"):
        rec = _rec(label=c, sequence=["mov (%rax), %rbx", "mov (%rbx), %rcx"])
        with pytest.raises(ValueError, match="SPECTRE_V1/SPECTRE_V4"):
            synth.make_misplaced_variant(rec, c, "shifted")

def test_cli_shifted(tmp_path):
    src, out = tmp_path / "h.jsonl", tmp_path / "o.jsonl"
    src.write_text(json.dumps(_rec(group="p")) + "\n")
    synth.main(["--misplaced-from-heldout", str(src), "--out", str(out), "--vuln-class", "SPECTRE_V1", "--placement", "shifted"])
    got = json.loads(out.read_text().splitlines()[0])
    assert got["sequence"][got["sequence"].index("jne .L") - 1] == "lfence"

def test_mds_mixed_only_in_joint():
    base = [R("b1")]
    pos = [_rec(label="MDS", group=f"m{i}", sequence=["mov (%rax), %rbx", "mov (%rbx), %rcx"]) for i in range(3)]
    cf = {"mds": base + pos}
    out, _ = joint.build_joint(base, cf, {"mds": []}, with_misfenced=True)
    assert len([r for r in out if r["group"].endswith("_misfenced")]) == 3
