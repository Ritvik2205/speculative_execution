"""Integration smoke test: splice a HAND-WRITTEN (not model-sampled)
known-good V1 sequence through the ACTUAL production wrapper
(gen/decode.py's build_gen_body -- not a hand-rolled re-implementation of
it) and confirm Spectector reports a real leak -- validates the real
decode.py --validate code path against a case with a known expected
answer, before trusting it on real (mostly-invalid, per
eval/check_syntactic_validity_results.txt) generator output.

Uses build_gen_body() rather than calling oracle_splice.splice() directly
so this test exercises the exact function decode.py's --validate flag
calls, not a parallel reimplementation of its wrapper-string assembly that
could silently drift from the real one."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT))

from decode import build_gen_body  # noqa: E402
from gen.synth.spectector_gadgets import render_spec  # noqa: E402
from oracle.validators import SpectectorValidator  # noqa: E402


def test_hand_written_v1_leak_confirmed_via_real_spectector():
    # A minimal, hand-verified bounds-check-bypass load+transmit sequence
    # (load through the seeded pointer, scale, write) -- NOT sampled from
    # the model. If this doesn't come back "leak", the splice plumbing
    # itself is broken, not the generator.
    realized = ["movzbl (%rax), %ebx"]
    gen_body = build_gen_body(realized, "SPECTRE_V1", "x86_64", is_invisispec=False)
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
