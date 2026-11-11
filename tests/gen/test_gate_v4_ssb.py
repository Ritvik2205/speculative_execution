"""Truth table for the store-bypass (SPECTRE_V4) gate-only victim.

Seam: gen.decode.gate_source(body, cls) -> C source, adjudicated by
Spectector-Combined with the version gen.decode.GATE_ORACLE_VERSIONS[cls].

The victim supplies ONLY `movb $0, (%r15)` (a store to the secret pointer's
cell); the body must reload that cell and use the stale value as an address.
Unlike the old "V4" template this is a store-bypass measurement: the same
body is SAFE under the conditional-branch model (-v 1) and LEAKS only under
the store-bypass model (-v 4).
"""
import shutil
import subprocess
import sys
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec"):
    sys.path.insert(0, str(p))

_IMG = "specdiscover-spectector-combined:pinned"
_WORK = REPO / "oracle" / "build" / "gate_v4_test_work"


def _ok():
    if not shutil.which("docker"):
        return False
    try:
        return subprocess.run(["docker", "image", "inspect", _IMG],
                              capture_output=True, timeout=20).returncode == 0
    except Exception:
        return False


pytestmark = pytest.mark.skipif(not _ok(), reason="Spectector-Combined image unavailable")

LOAD = "movzbl (%r15), %eax"
XMIT = "movb $1, (%r14,%rax)"


def _verdict(body, versions="4", **kw):
    from decode import gate_source
    from oracle.validators.spectector_validator import SpectectorValidator
    (_WORK / "oracle" / "build").mkdir(parents=True, exist_ok=True)
    gid = f"v4tt_{abs(hash((tuple(body), versions, tuple(sorted(kw.items())))))%10**9}"
    p = _WORK / "oracle" / "build" / f"gen_spec_{gid}.c"
    p.write_text(gate_source(list(body), "SPECTRE_V4", **kw))
    return SpectectorValidator(repo_root=str(_WORK), versions=versions).validate(
        {"gadget_id": gid, "vuln_class": "SPECTRE_V4",
         "spectector_source": str(p.relative_to(_WORK)), "adjudicable": "yes"}).verdict


def test_oracle_version_for_v4_gate_is_store_bypass():
    from decode import GATE_ORACLE_VERSIONS
    assert GATE_ORACLE_VERSIONS == {"SPECTRE_V1": None, "SPECTRE_V4": "4"}


@pytest.mark.parametrize("name,body,want", [
    ("empty", [], "safe"),
    ("nops", ["nop"] * 8, "safe"),
    ("reload_only", [LOAD], "safe"),
    ("transmit_public", ["movq $3, %rax", XMIT], "safe"),
    ("reload_other_cell", ["movzbl 8(%r15), %eax", XMIT], "safe"),
    ("reload_then_transmit", [LOAD, XMIT], "leak"),
    ("fence_before_reload", ["lfence", LOAD, XMIT], "safe"),
    ("fence_between", [LOAD, "lfence", XMIT], "safe"),
])
def test_v4_gate_truth_table(name, body, want):
    assert _verdict(body) == want, name


def test_v4_reference_is_safe_under_the_branch_only_model():
    assert _verdict([LOAD, XMIT], versions="1") == "safe"


def test_v4_reference_is_safe_when_the_victim_has_no_store():
    assert _verdict([LOAD, XMIT], store=False) == "safe"


def test_v4_fenced_victim_is_safe():
    assert _verdict([LOAD, XMIT], fenced=True) == "safe"
