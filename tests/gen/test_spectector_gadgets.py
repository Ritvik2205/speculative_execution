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


def test_combined_v2_victim_has_a_landing_pad_and_a_benign_target():
    from gen.synth.spectector_gadgets import render_spec_combined
    src = render_spec_combined("SPECTRE_V2", fenced=False)
    assert "void leaky(size_t i){ uint8_t v=arr[i]; probe[v*64]=1; }" in src
    assert "void (*fp)(size_t) = benign;" in src
    assert "void gadget(size_t i){ fp(i); }" in src
    assert "lfence" not in src


def test_combined_v2_fence_sits_at_the_landing_pad_entry():
    from gen.synth.spectector_gadgets import render_spec_combined
    src = render_spec_combined("SPECTRE_V2", fenced=True, gen_body="BODY;")
    assert 'void leaky(size_t i){ asm volatile("lfence":::"memory"); BODY; }' in src
    assert "void gadget(size_t i){ fp(i); }" in src   # the call itself is unfenced
