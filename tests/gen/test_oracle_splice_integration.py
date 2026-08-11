"""Integration smoke test: splice a HAND-WRITTEN (not model-sampled)
known-good V1 sequence through the full pipeline and confirm Spectector
reports a real leak -- validates the plumbing against a case with a known
expected answer, before trusting it on real (mostly-invalid, per
eval/check_syntactic_validity_results.txt) generator output."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT))

from oracle_splice import splice  # noqa: E402
from gen.synth.spectector_gadgets import render_spec  # noqa: E402
from oracle.validators import SpectectorValidator  # noqa: E402


def test_hand_written_v1_leak_confirmed_via_real_spectector():
    # A minimal, hand-verified bounds-check-bypass load+transmit sequence
    # (load through the seeded pointer, scale, write) -- NOT sampled from
    # the model. If this doesn't come back "leak", the splice plumbing
    # itself is broken, not the generator.
    realized = ["movzbl (%rax), %ebx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer", "arr + i", "probe")
    clobber_str = ", ".join(f'"{c.lstrip("%")}"' for c in clobbers)
    gen_body = (
        f'__asm__ __volatile__(\n"{asm_text}"\n'
        f': : "r"(arr + i), "r"(probe) : {clobber_str}, "memory");'
    )
    c_src = render_spec("SPECTRE_V1", fenced=False, gen_body=gen_body)
    out_path = ROOT / "oracle" / "build" / "test_integration_v1.c"
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(c_src)

    result = SpectectorValidator(str(ROOT)).validate({
        "gadget_id": "test_integration_v1", "vuln_class": "SPECTRE_V1",
        "spectector_source": str(out_path.relative_to(ROOT)),
        "adjudicable": "yes",
    })
    assert result.verdict == "leak", (
        f"expected a real leak verdict for a hand-verified V1 sequence, got "
        f"{result.verdict!r} -- the splice plumbing itself is broken, not "
        f"generator quality (this test doesn't use the generator at all)"
    )
