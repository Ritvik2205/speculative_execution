import os, json
from gen.synth.spectector_gadgets import render_spec, generate_spec, SPEC_GADGETS
from gen.synth.params import CLASSES

def test_all_classes_have_spec_gadgets():
    for c in CLASSES:
        assert c in SPEC_GADGETS

def test_render_has_extern_globals_no_main():
    src = render_spec("SPECTRE_V1", fenced=False)
    assert "extern" in src and "int main" not in src
    assert "probe" in src

def test_fenced_variant_adds_lfence():
    assert "lfence" in render_spec("SPECTRE_V1", fenced=True)
    assert "lfence" not in render_spec("SPECTRE_V1", fenced=False)

def test_generate_writes_files_and_index(tmp_path):
    rows = generate_spec(str(tmp_path))
    assert len(rows) == len(CLASSES) * 2         # baseline + fenced per class
    idx = json.loads(open(os.path.join(str(tmp_path), "spec_gadgets.jsonl")).readline())
    assert idx["adjudicable"] in ("yes","partial","no")
    for r in [json.loads(l) for l in open(os.path.join(str(tmp_path),"spec_gadgets.jsonl"))]:
        assert os.path.exists(r["path"])
