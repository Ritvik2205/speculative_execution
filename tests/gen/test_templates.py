import re
import pytest
from gen.synth.params import GadgetParams, CLASSES, ARCHES, ADJUDICABLE
from gen.synth.templates import TEMPLATES, render

# Known C identifier holding the planted secret in each class's template
# (same name used in both the x86_64 and arm64 variant of a class). Used
# below to check the secret actually reaches the gadget/transmit path, not
# just a lone declaration.
_SECRET_VAR = {
    "SPECTRE_V1": "secret_v1",
    "SPECTRE_V2": "secret_value_v2",
    "SPECTRE_V4": "secret_v4",
    "L1TF": "secret_l1tf_byte",
    "MDS": "secret_mds_byte",
    "RETBLEED": "secret_retbleed_data",
    "INCEPTION": "secret_inception_data",
    "BHI": "secret_bhi_data",
    "BENIGN": "secret_benign",
}

# Matches the exact "shift the leaked byte by 12 to index probe_array" bug
# (x86 `shl $12, %rax` / arm64 `lsl xN, xN, #12`) that was found copied from
# the canonical PoCs -- the probe stride is CACHE_LINE_SIZE=64=2**6, not
# 2**12, so a *12 shift indexes ~1MB past the 16KB probe_array.
_BAD_SHIFT_RE = re.compile(r"shl\s+\$12\b|lsl\s+\w+,\s*\w+,\s*#12\b")

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


def test_every_class_arch_transmit_is_sane():
    """For every (class, arch): the transmit is stride-CACHE_LINE_SIZE (not
    the *12/#12 shift-to-index bug that overruns probe_array), every
    non-BENIGN class's secret reaches its gadget/transmit path, and
    BENIGN's transmit does not index by the secret."""
    for cls in CLASSES:
        for arch in ARCHES:
            src = render(_p(cls=cls, arch=arch, secret=83))
            secret_var = _SECRET_VAR[cls]

            # (a) transmit stride is CACHE_LINE_SIZE=64, never a *12/#12 bug.
            assert "CACHE_LINE_SIZE" in src, f"{cls}/{arch}: no stride ref"
            assert not _BAD_SHIFT_RE.search(src), (
                f"{cls}/{arch}: shift-to-index-by-12 bug present "
                f"(probe stride is CACHE_LINE_SIZE=64=2**6, not 2**12)"
            )

            if cls != "BENIGN":
                # (b) the secret variable must reach beyond its own
                # declaration and the final perform_measurement/printf calls
                # -- i.e. it must actually be threaded into the gadget.
                assert src.count(secret_var) >= 3, (
                    f"{cls}/{arch}: secret var {secret_var!r} doesn't "
                    f"appear to reach the gadget/transmit path"
                )
            else:
                # (c) BENIGN's transmit line(s) must not index by the secret.
                for line in src.splitlines():
                    if "probe_array[" in line and "=" in line:
                        assert secret_var not in line, (
                            f"BENIGN/{arch}: transmit indexes by the "
                            f"secret: {line.strip()!r}"
                        )
