"""Truth table for the gate-only victim harness (step 1, 2026-11-10).

The gate-only template (gen/synth/spectector_gadgets.render_spec_gate) must
make the Spectector verdict depend on the BODY: a body that speculatively
loads out of bounds through the reserved secret pointer (%r15) and transmits
through the probe (%r14) leaks; a body that does neither is SAFE; a fence
between the load and the transmit kills the leak; a fence only AFTER the
transmit does not. This is the property the old injected-scaffold splice did
NOT have (there a NOP body leaked 1.00).

Requires local Docker + the pinned Spectector image; skipped otherwise.
Each Spectector call is ~1-2 s.
"""
import shutil
import subprocess
import sys
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO))
sys.path.insert(0, str(REPO / "gen"))

_IMG = "ghcr.io/ritvik2205/specdiscover-spectector:pinned"
_WORK = REPO / "oracle" / "build" / "gate_test_work"   # under $HOME so Colima mounts it


def _docker_ok():
    if not shutil.which("docker"):
        return False
    try:
        r = subprocess.run(["docker", "image", "inspect", _IMG],
                           capture_output=True, timeout=20)
        return r.returncode == 0
    except Exception:
        return False


pytestmark = pytest.mark.skipif(not _docker_ok(),
                                reason="pinned Spectector docker image unavailable")


def _verdict(body_lines, fenced=False, tmp=_WORK):
    """Splice body_lines into the gate-only V1 victim and return Spectector's
    verdict ('leak'/'safe'/'unrunnable')."""
    from oracle_splice import splice_gate_only
    from synth import spectector_gadgets as sg
    from oracle.validators.spectector_validator import SpectectorValidator
    asm_text, clob = splice_gate_only(list(body_lines), "x86_64")
    clobber_str = ", ".join(f'"{c}"' for c in clob)
    gen_body = ('__asm__ __volatile__(\n"' + asm_text + '"\n'
                ': : "r"(arr + i), "r"(probe) : ' + clobber_str + ', "memory");')
    c = sg.render_spec_gate("SPECTRE_V1", fenced=fenced, gen_body=gen_body)
    work = tmp / "oracle" / "build"
    work.mkdir(parents=True, exist_ok=True)
    gid = f"tt_{abs(hash((tuple(body_lines), fenced)))%10**8}"
    p = work / f"gen_spec_{gid}.c"
    p.write_text(c)
    r = SpectectorValidator(repo_root=str(tmp)).validate({
        "gadget_id": gid, "vuln_class": "SPECTRE_V1",
        "spectector_source": str(p.relative_to(tmp)), "adjudicable": "yes"})
    return r.verdict


# body fragments (realised x86 AT&T); %r15 = arr+i (secret ptr), %r14 = probe
_LOAD = "movzbl (%r15), %r13d"
_SCALE = "shlq $6, %r13"
_XMIT = "movb $1, (%r14,%r13)"
_LFENCE = "lfence"

CASES = {
    "empty":              ([], "safe"),
    "nops":               (["nop"] * 8, "safe"),
    "load_only":          ([_LOAD], "safe"),
    "load_scale_only":    ([_LOAD, _SCALE], "safe"),
    "transmit_public":    (["movq $3, %r13", _SCALE, _XMIT], "safe"),
    "leak":               ([_LOAD, _SCALE, _XMIT], "leak"),
    "leak_padded":        ([_LOAD] + ["nop"] * 6 + [_SCALE, _XMIT], "leak"),
    "fence_between":      ([_LOAD, _LFENCE, _SCALE, _XMIT], "safe"),
    "fence_after_xmit":   ([_LOAD, _SCALE, _XMIT, _LFENCE], "leak"),
}


@pytest.mark.parametrize("name", list(CASES))
def test_gate_only_truth_table(name):
    body, expected = CASES[name]
    assert _verdict(body) == expected, f"{name}: expected {expected}"


def test_gate_fence_at_gate_kills_leak():
    # a fence right after the gate (fenced=True) must neutralise even the
    # leaking body -- the speculation barrier is before the body runs.
    assert _verdict([_LOAD, _SCALE, _XMIT], fenced=True) == "safe"


def test_gate_body_required():
    from synth import spectector_gadgets as sg
    with pytest.raises(ValueError):
        sg.render_spec_gate("SPECTRE_V1", fenced=False, gen_body=None)
