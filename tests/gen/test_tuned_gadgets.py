import os, json
from gen.synth.tuned_gadgets import render_tuned, generate_tuned, TUNED

def test_render_plants_secret_and_has_leak_pattern():
    src = render_tuned("SPECTRE_V1", 0x41)
    assert "SECRET=65" in src              # planted byte
    assert "STRIDE 512" in src and "_mm_clflush(&array1_size)" in src  # tuning
    assert "int main" in src


def test_v4_render_has_store_bypass_pattern():
    src = render_tuned("SPECTRE_V4", 0x56)
    assert "SECRET=86" in src              # planted byte
    assert "ssb_victim" in src and "buf[sidx] = 0" in src   # slow store
    assert "array2[buf[0] * STRIDE]" in src                 # fast bypassing load + transmit


def test_both_leakable_classes_present():
    assert set(TUNED) == {"SPECTRE_V1", "SPECTRE_V4"}

def test_unknown_class_raises():
    import pytest
    with pytest.raises(KeyError):
        render_tuned("L1TF", 1)

def test_generate_writes_index(tmp_path):
    rows = generate_tuned(str(tmp_path), secrets={"SPECTRE_V1": 0x53})
    assert rows and os.path.exists(rows[0]["path"])
    idx = [json.loads(l) for l in open(os.path.join(str(tmp_path), "tuned_gadgets.jsonl"))]
    assert idx[0]["secret"] == 0x53
