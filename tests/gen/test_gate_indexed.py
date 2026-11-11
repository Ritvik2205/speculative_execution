"""Attacker-indexed V1 victim (gate_source(..., victim="indexed")).

The first gate victim ("sni") inherits Spectector's default policy -- all
memory secret -- so ANY speculative load whose value becomes an address is a
leak, including pointer chases through registers the attacker does not
control (2-instruction cores, common in benign code). The indexed victim runs
the body once architecturally with an in-bounds pointer and then again behind
the mispredicted bounds check with the attacker's out-of-bounds pointer in ONE
designated register; whatever the architectural run already exposes is no
longer a speculative leak. A leak is then: a load through the attacker-
controlled register whose value reaches an address.
"""
import sys
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec", REPO / "v54"):
    sys.path.insert(0, str(p))

from test_gate_only_harness import _docker_ok  # noqa: E402

docker = pytest.mark.skipif(not _docker_ok(), reason="Spectector image unavailable")
_WORK = REPO / "oracle" / "build" / "gate_indexed_test_work"


def _verdict(body, **kw):
    from decode import gate_source
    from oracle.validators.spectector_validator import SpectectorValidator
    (_WORK / "oracle" / "build").mkdir(parents=True, exist_ok=True)
    gid = f"ix_{abs(hash((tuple(body), tuple(sorted(kw.items())))))%10**9}"
    p = _WORK / "oracle" / "build" / f"gen_spec_{gid}.c"
    p.write_text(gate_source(list(body), "SPECTRE_V1", victim="indexed", **kw))
    return SpectectorValidator(repo_root=str(_WORK)).validate(
        {"gadget_id": gid, "vuln_class": "SPECTRE_V1",
         "spectector_source": str(p.relative_to(_WORK)), "adjudicable": "yes"}).verdict


@docker
@pytest.mark.parametrize("name,body,want", [
    ("empty", [], "safe"),
    ("nops", ["nop"] * 6, "safe"),
    ("chase_through_uncontrolled_register", ["movq (%rbx), %rax", "movq (%rax), %rcx"], "safe"),
    ("indexed_chase_uncontrolled", ["movzbl (%rbx,%rsi), %r10d", "movq (%r13,%r10), %rdx"], "safe"),
    ("self_chase_uncontrolled", ["movq (%rbx), %rbx", "movq (%rbx), %rbx"], "safe"),
    ("attacker_load_only", ["movzbl (%r15), %eax"], "safe"),
    ("attacker_load_then_transmit", ["movzbl (%r15), %eax", "movb $1, (%r14,%rax)"], "leak"),
    ("attacker_load_then_chase", ["movq (%r15), %rax", "movq (%rax), %rcx"], "leak"),
    ("fence_between", ["movzbl (%r15), %eax", "lfence", "movb $1, (%r14,%rax)"], "safe"),
    ("transmit_public", ["movq $3, %rax", "movb $1, (%r14,%rax)"], "safe"),
    ("body_may_overwrite_attacker_register_afterwards",
     ["movzbl (%r15), %eax", "movq $0, %r15", "movb $1, (%r14,%rax)"], "leak"),
    ("attacker_value_spilled_to_the_frame_then_reloaded",
     ["movq %r15, -8(%rbp)", "movq -8(%rbp), %rax", "movzbl (%rax), %ecx",
      "movb $1, (%r14,%rcx)"], "leak"),
    ("attacker_value_as_index_from_a_global",
     ["movq %r15, -8(%rip)", "movq -8(%rip), %rax", "movzbl (%rbx,%rax), %ecx",
      "movb $1, (%r14,%rcx)"], "leak"),
    ("frame_relative_scratch_is_not_secret",
     ["movq %rax, -8(%rbp)", "movq -8(%rbp), %rcx", "movq (%rcx), %rdx"], "safe"),
])
def test_indexed_truth_table(name, body, want):
    assert _verdict(body) == want, name


@docker
def test_the_designated_attacker_register_decides_the_verdict():
    chase = ["movq (%rbx), %rax", "movq (%rax), %rcx"]
    assert _verdict(chase, attacker_reg="rbx") == "leak"
    assert _verdict(chase, attacker_reg="rsi") == "safe"
    assert _verdict(["movzbl (%rdi), %eax", "movb $1, (%r14,%rax)"], attacker_reg="rdi") == "leak"


@docker
def test_indexed_fenced_victim_is_safe():
    assert _verdict(["movzbl (%r15), %eax", "movb $1, (%r14,%rax)"], fenced=True) == "safe"


def test_labels_in_the_two_body_copies_do_not_collide():
    from decode import gate_source
    src = gate_source(["testq %rax, %rax", "je .Lskip", "nop", ".Lskip:"],
                      "SPECTRE_V1", victim="indexed")
    assert src.count(".Lc0_skip:") == 1 and src.count(".Lc1_skip:") == 1


def test_sni_victim_still_refuses_writes_to_reserved_registers():
    from decode import gate_source
    with pytest.raises(ValueError):
        gate_source(["movq $0, %r15"], "SPECTRE_V1")


# ---- instructions the SNI model has no semantics for but which move no data
def test_cache_and_cet_hints_are_hosted_as_nops_so_they_cannot_void_a_verdict():
    from oracle_splice import splice_gate_only
    text, _ = splice_gate_only(["endbr64", "clflush (%rax)", "movq (%rbx), %rcx",
                                "prefetcht0 8(%rdx)", "pause"], "x86_64")
    assert text.split("\\n\\t") == ["nop", "nop", "movq (%%rbx), %%rcx", "nop", "nop"]


@docker
def test_flush_in_the_body_does_not_make_a_leak_unrunnable():
    assert _verdict(["clflush (%r14)", "movzbl (%r15), %eax", "movb $1, (%r14,%rax)"]) == "leak"
    assert _verdict(["endbr64", "clflush (%r14)", "nop"]) == "safe"
