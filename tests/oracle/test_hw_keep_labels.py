"""Step 5: label-keeping sequences for the hardware (Revizor) data.

Two routes to the same sequence format (`name:` marker lines + branches whose
operand is the label name):
  - from program.asm:  convert_v4_gadgets.convert_program_asm(keep_labels=True)
  - from a stored sequence whose targets survive only as objdump annotations
    (`js 0x30 <.bb_0.1>`):  recover_labels.recover_labels()
"""
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "oracle" / "revizor"))

import convert_v4_gadgets as cvg  # noqa: E402
import recover_labels as rl  # noqa: E402

pytestmark = pytest.mark.skipif(not cvg.toolchain_available(),
                                reason="needs clang + llvm objdump")

PROGRAM = """\
.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
test eax, -1812342404
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lock bts word ptr [r14 + rdx], 0
cmp dword ptr [r14 + rdx], -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
"""


@pytest.fixture
def program(tmp_path):
    p = tmp_path / "program.asm"
    p.write_text(PROGRAM)
    return str(p)


def _instrs(seq):
    return [l for l in seq if not l.endswith(":")]


def test_default_conversion_is_unchanged_and_has_no_label_lines(program):
    seq = cvg.convert_program_asm(program)
    assert not any(l.endswith(":") for l in seq)
    assert any("<.bb_0.1>" in l for l in seq)


def test_keep_labels_conversion_has_resolvable_targets(program):
    seq = cvg.convert_program_asm(program, keep_labels=True)
    assert "js .bb_0.1" in seq
    i = seq.index(".bb_0.1:")
    assert seq[i + 1].startswith("andq")
    # the exit jump targets a label placed after the last instruction
    jmp = [l for l in seq if l.startswith("jmp ")][0]
    assert seq[-1] == jmp.split()[1] + ":"
    # same instructions as the default path, in the same order
    assert len(_instrs(seq)) == len(cvg.convert_program_asm(program))
    assert not any("<" in l for l in seq)


def test_recover_labels_from_annotations_matches_program_asm(program):
    stored = cvg.convert_program_asm(program)
    rec = rl.recover_labels(stored)
    assert rec.status == "recovered"
    assert rec.sequence == cvg.convert_program_asm(program, keep_labels=True)


def test_recover_labels_handles_lock_split_onto_its_own_line(program):
    # the i5's objdump printed `lock` as its own line; the stored corpus has it so
    stored = []
    for l in cvg.convert_program_asm(program):
        if l.startswith("lock"):
            stored += ["lock", " ".join(l.split()[1:])]
        else:
            stored.append(l)
    assert "lock" in stored
    rec = rl.recover_labels(stored)
    assert rec.status == "recovered"
    assert _instrs(rec.sequence) == [l if "<" not in l else l.split()[0] + " " + l.split("<")[1][:-1]
                                     for l in stored]


def test_sequence_without_direct_branch_is_returned_unchanged():
    seq = ["andq $0x1fff, %rbx", "lfence", "movq (%r14,%rbx), %rax"]
    rec = rl.recover_labels(seq)
    assert rec.status == "no_direct_branch" and rec.sequence == seq


def test_offsets_that_do_not_fit_the_instructions_are_refused(program):
    stored = cvg.convert_program_asm(program)
    k = next(i for i, l in enumerate(stored) if l.startswith("andq") and i > 3)
    tampered = stored[:k + 1] + ["andq $0x1fff, %rcx"] + stored[k + 1:]
    rec = rl.recover_labels(tampered)
    assert rec.status.startswith("unrecoverable")
    assert rec.sequence == tampered


# --- the §5 unit test: twin vs v1_fallthrough of the same program -----------

sys.path.insert(0, str(REPO_ROOT / "oracle" / "revizor" / "scripts"))
sys.path.insert(0, str(REPO_ROOT / "v54"))
sys.path.insert(0, str(REPO_ROOT / "spec"))
sys.path.insert(0, str(REPO_ROOT / "eval"))

V1_ASM = """.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rsi
lea di, qword ptr [rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 44 # instrumentation
lock neg byte ptr [r14 + rdx]
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
"""


def _variant_seqs(tmp_path, keep_labels):
    import hw_label_variants as h
    out = {}
    for v, (text, _) in h.make_variants(V1_ASM, "SPECTRE_V1").items():
        p = tmp_path / f"{v}.asm"
        p.write_text(text)
        out[v] = cvg.convert_program_asm(str(p), keep_labels=keep_labels)
    return out


def _signature(seq, **kw):
    from collections import Counter
    from isa_spec import load_engine
    from spec_pdg_builder import SpecBackedPDGBuilder
    pdg = SpecBackedPDGBuilder(load_engine("x86_64.json"), **kw).build(seq)
    return Counter((e.edge_type, pdg.nodes[e.src].opcode_category,
                    pdg.nodes[e.dst].opcode_category) for e in pdg.edges)


def test_twin_and_v1_fallthrough_differ_only_with_labels(tmp_path):
    from collections import Counter
    import branch_resolution_report as brr
    seqs = _variant_seqs(tmp_path, keep_labels=True)
    twin, ft = seqs["twin"], seqs["v1_fallthrough"]
    ops = lambda s: Counter(l.split()[0] for l in s if not l.endswith(":"))
    assert ops(twin) == ops(ft)                       # a bag of opcodes cannot tell them apart
    for s in (twin, ft):
        c = brr.count_sequence(s, "x86_64")
        assert c["direct"] == 2 and c["resolved"] == 2
    kw = dict(cfg_control_edges=True, cfg_spec_edges=True)
    assert _signature(twin, **kw) != _signature(ft, **kw)

    # and the annotation route gives the same labelled sequences
    stored = _variant_seqs(tmp_path, keep_labels=False)
    for v in ("twin", "v1_fallthrough"):
        assert brr.count_sequence(stored[v], "x86_64")["resolved"] == 0
        assert rl.recover_labels(stored[v]).sequence == seqs[v]


def test_emit_keep_labels_writes_resolvable_sequences(tmp_path):
    import json
    import hw_label_variants as h
    import branch_resolution_report as brr
    out = tmp_path / "out"
    d = out / "spectre_v1" / "violation-000"
    plan, runs = [], []
    for v, (text, _) in h.make_variants(V1_ASM, "SPECTRE_V1").items():
        (d / v).mkdir(parents=True)
        (d / v / "program.asm").write_text(text)
        plan.append({"group": "g", "cls": "SPECTRE_V1", "src_dir": str(d), "src_path": "x/program.asm",
                     "variant": v, "asm": str(d / v / "program.asm")})
    (out / "plan.jsonl").write_text("".join(json.dumps(p) + "\n" for p in plan))
    (out / "env.json").write_text(json.dumps({"reps": 1}))
    for p in plan:
        runs.append({"group": "g", "variant": p["variant"], "rep": 0,
                     "outcome": "clean" if p["variant"] in ("twin", "fence_all") else "violation"})
    (out / "runs.jsonl").write_text("".join(json.dumps(r) + "\n" for r in runs))
    jl = tmp_path / "v_labels.jsonl"
    assert h.main(["emit", "--out", str(out), "--jsonl", str(jl), "--keep-labels"]) == 0
    recs = [json.loads(l) for l in jl.read_text().splitlines()]
    assert recs
    for r in recs:
        c = brr.count_sequence(r["sequence"], "x86_64")
        assert c["direct"] and c["resolved"] == c["direct"]


def test_build_never_labels_text_level_synthetic_twins(tmp_path, program):
    import json
    stored = cvg.convert_program_asm(program)
    recs = [{"source": "revizor_hw_i5_8300h", "sequence": stored},
            {"source": "synth_misplaced_fence_control", "sequence": stored + ["lfence"]}]
    src = tmp_path / "x.jsonl"
    src.write_text("".join(json.dumps(r) + "\n" for r in recs))
    out = tmp_path / "x_labels.jsonl"
    stats = rl.build_file(src, out, {})
    got = [json.loads(l) for l in out.read_text().splitlines()]
    assert got[0]["labels_from"] == "objdump_offsets" and ".bb_0.1:" in got[0]["sequence"]
    assert got[1]["labels_from"].startswith("unrecoverable") and got[1]["sequence"] == recs[1]["sequence"]
    assert stats["objdump_offsets"] == 1 and stats["unrecoverable"] == 1
    assert src.read_text() == "".join(json.dumps(r) + "\n" for r in recs)   # input untouched


def test_build_cli_does_not_write_a_mostly_unlabelled_file(tmp_path, program):
    import json
    stored = cvg.convert_program_asm(program)
    src = tmp_path / "y.jsonl"
    src.write_text(json.dumps({"source": "synth_mitigated_twin", "sequence": stored + ["lfence"]}) + "\n")
    assert rl.main(["build", str(src)]) == 0
    assert not (tmp_path / "y_labels.jsonl").exists()
