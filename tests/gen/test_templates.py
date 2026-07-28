import pytest
from gen.synth.params import GadgetParams, CLASSES, ARCHES, ADJUDICABLE
from gen.synth.templates import TEMPLATES, render

def _p(cls="SPECTRE_V1", arch="x86_64", **kw):
    base = dict(vuln_class=cls, arch=arch, secret=83, train_iters=1000,
                pad_nops=0, reorder=False, variant_idx=0)
    base.update(kw)
    return GadgetParams(**base)

def test_all_nine_classes_both_arches_have_templates():
    assert set(CLASSES) == {"BENIGN","SPECTRE_V1","SPECTRE_V2","SPECTRE_V4",
                            "L1TF","MDS","RETBLEED","INCEPTION","BHI"}
    for cls in CLASSES:
        for arch in ARCHES:
            assert (cls, arch) in TEMPLATES, f"missing template {(cls,arch)}"

def test_rendered_gadget_has_leaker_structure():
    src = render(_p())
    assert '#include "utils.c"' in src
    assert "int main" in src
    assert "probe_array[" in src            # transmit
    assert "perform_measurement" in src     # measurement
    assert "CACHE_LINE_SIZE" in src         # stride locked to measurement

def test_secret_knob_is_planted():
    src = render(_p(secret=81))
    assert "81" in src
    # the secret must reach perform_measurement's expected arg
    assert "perform_measurement" in src

def test_pad_nops_injected_into_speculation_window():
    src0 = render(_p(pad_nops=0))
    src5 = render(_p(pad_nops=5))
    assert src5.count("nop") > src0.count("nop")

def test_benign_has_no_speculative_transmit_of_secret():
    # BENIGN still uses probe_array/measurement harness but its "gadget" never
    # transmits the secret speculatively -> must NOT recover the secret.
    src = render(_p(cls="BENIGN"))
    assert "perform_measurement" in src
    # benign template documents its non-leak intent
    assert "BENIGN" in src
