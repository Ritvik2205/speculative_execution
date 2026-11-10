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
    from oracle_splice import splice_gate_only, gate_asm_block
    from synth import spectector_gadgets as sg
    from oracle.validators.spectector_validator import SpectectorValidator
    gen_body = gate_asm_block(*splice_gate_only(list(body_lines), "x86_64"))
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
    # a windowed epilogue (unbalanced pops) must not read as a leak via the
    # corrupted return address -- strip_stack_ops removes it at splice time.
    "unbalanced_pops":    (["popq %r8", "popq %rsi", "popq %r9", "popq %rdi"], "safe"),
    # a body using most of the pool must still compile (inputs are bound to
    # r15/r14 via register variables, not via a free scratch register).
    "many_regs_leak":     (["movq $0, %rax", "movq $0, %rbx", "movq $0, %rcx", "movq $0, %rdx",
                            "movq $0, %rsi", "movq $0, %rdi", "movq $0, %r8", "movq $0, %r9",
                            "movq $0, %r10", "movq $0, %r11", "movq $0, %r12",
                            _LOAD, _SCALE, _XMIT], "leak"),
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


def test_build_gen_body_gate_is_callable_without_torch_side_effects():
    # regression: build_gen_body_gate referenced strip_ret without importing it;
    # the loop's broad except turned the NameError into "every sample dropped",
    # which read as a 0.0 yield. Exercise the real function the loop calls.
    pytest.importorskip("torch")
    from gen.decode import build_gen_body_gate
    from gen.synth import spectector_gadgets as sg
    body = build_gen_body_gate([_LOAD, _SCALE, _XMIT, "retq"], "SPECTRE_V1", "x86_64")
    assert "__gate_sp" in body and "retq" not in body
    assert "arr[]" in sg.render_spec_gate("SPECTRE_V1", False, body)


def test_loop_realize_fn_gate_path_produces_gadget(tmp_path):
    pytest.importorskip("torch")
    import gen.decode as gd
    from gen.rl_from_oracle import _build_realize_fn
    realizer = gd.Realizer(gd.load_spec("x86_64.json"), seed=0)
    fn = _build_realize_fn("SPECTRE_V1", "x86_64", realizer, gd.spec_gadgets,
                           gd.build_gen_body, tmp_path, tmp_path, harness="gate")
    g = fn(["movzbl <secret-ptr> <reg>", "shlq <imm> <reg>", "movb <imm> <probe>"],
           "SPECTRE_V1", "x86_64", 0, 0)
    assert g is not None, "gate realize_fn dropped a valid sample"
    src = (tmp_path / g["spectector_source"]).read_text()
    assert "extern uint8_t arr[]" in src and "__gate_sp" in src
