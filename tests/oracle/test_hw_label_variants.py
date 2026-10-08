"""Tests for oracle/revizor/scripts/hw_label_variants.py (program-level fenced
variants + hardware labelling of Revizor violations)."""
import json
import stat
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "oracle" / "revizor" / "scripts"))
import hw_label_variants as h  # noqa: E402

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


def _fence_prev(asm):
    lines = asm.splitlines()
    return [lines[i - 1] for i, x in enumerate(lines) if x == "lfence"]


def test_v1_twin_fences_taken_block():
    v = h.make_variants(V1_ASM, "SPECTRE_V1")
    assert _fence_prev(v["twin"][0]) == [".bb_0.1:"]


def test_v1_fallthrough_fences_exit_block_and_shifted_precedes_jcc():
    v = h.make_variants(V1_ASM, "SPECTRE_V1")
    assert _fence_prev(v["v1_fallthrough"][0]) == [".exit_0:"]
    lines = v["shifted"][0].splitlines()
    i = lines.index("lfence")
    assert lines[i + 1] == "jnb .bb_0.1"


def test_no_variant_puts_fence_after_a_jump_and_only_adds_fences():
    for cls in h.CLASSES:
        for name, (asm, _) in h.make_variants(V1_ASM, cls).items():
            assert [x for x in asm.splitlines() if x != "lfence"] == V1_ASM.splitlines()
            for prev in _fence_prev(asm):
                assert not prev.split()[0].startswith("j"), (cls, name)


def test_entry_tail_use_twin_fence_count():
    v = h.make_variants(V1_ASM, "MDS")
    k = v["twin"][1].count()
    assert k == 2  # lock neg [mem] (RMW) and mov ax, [mem]
    assert v["entry"][1].count() == k and v["tail"][1].count() == k
    lines = v["entry"][0].splitlines()
    i = lines.index(".macro.measurement_start: nop qword ptr [rax + 0xff]")
    assert lines[i + 1:i + 3] == ["lfence", "lfence"]


def test_mem_classification_intel():
    L = h.Line
    assert L("lock neg byte ptr [r14 + rdx]").writes_mem
    assert L("mov byte ptr [r14 + rcx], al").writes_mem
    assert not L("mov byte ptr [r14 + rcx], al").reads_mem
    assert L("cmovle edi, dword ptr [r14 + rsi]").reads_mem
    assert not L("cmovle edi, dword ptr [r14 + rsi]").writes_mem
    assert not L("test dword ptr [r14 + rax], 7").writes_mem
    assert L("test dword ptr [r14 + rax], 7").reads_mem
    assert not L("lea di, qword ptr [rax]").reads_mem


def test_classify_run():
    assert h.classify_run(1, "...\n=== Violations detected ===\n") == "violation"
    assert h.classify_run(0, "Duration: 3.1\n") == "none"
    assert h.classify_run(1, "[ERROR] The fuzzer requires Unicorn") == "error"
    assert h.classify_run(1, "no marker") == "error"


def test_label_results_rule():
    plan = [{"group": "g", "variant": v} for v in ("original", "twin", "entry", "tail", "fence_all")]
    runs = []
    for v, outs in {"original": ["violation"] * 3, "twin": ["none"] * 3,
                    "entry": ["violation"] * 3, "tail": ["violation", "none", "none"],
                    "fence_all": ["none", "error", "none"]}.items():
        runs += [{"group": "g", "variant": v, "outcome": o} for o in outs]
    got = {r["variant"]: r["verdict"] for r in h.label_results(plan, runs, 3)}
    assert got == {"original": "vulnerable", "twin": "mitigated", "entry": "vulnerable",
                   "tail": "flaky", "fence_all": "error"}
    # unstable original -> nothing labelled
    runs2 = [r if r["variant"] != "original" else {**r, "outcome": "none"} for r in runs]
    assert {r["verdict"] for r in h.label_results(plan, runs2, 3)} == {"unstable_original"}


def test_write_config_disables_filters(tmp_path):
    (tmp_path / "reproduce.yaml").write_text(
        "enable_speculation_filter: true\nenable_observation_filter: true\nprogram_size: 16\n")
    h.write_config(tmp_path, tmp_path / "c.yaml", keep_filters=False)
    t = (tmp_path / "c.yaml").read_text()
    assert "enable_speculation_filter: false" in t and "enable_observation_filter: false" in t
    assert "program_size: 16" in t


def test_end_to_end_with_fake_rvzr(tmp_path, monkeypatch):
    """plan -> run (fake rvzr: violates iff the program has no lfence in the
    taken block) -> emit."""
    vdir = tmp_path / "runs" / "spectre_v1" / "violation-000"
    vdir.mkdir(parents=True)
    (vdir / "program.asm").write_text(V1_ASM)
    (vdir / "reproduce.yaml").write_text("enable_speculation_filter: true\n")
    for i in range(3):
        (vdir / f"input_{i:04d}.bin").write_bytes(b"\0")
    rec = {"label": "SPECTRE_V1", "group": "revizor_spectre_v1_violation-000",
           "source": "revizor_hw_i5_8300h", "src_path": str(vdir / "program.asm"), "sequence": []}
    recs = tmp_path / "held.jsonl"
    recs.write_text(json.dumps(rec) + "\n")

    fake = tmp_path / "rvzr"
    fake.write_text("#!/usr/bin/env python3\nimport sys\n"
                    "a = sys.argv; t = open(a[a.index('-t') + 1]).read().splitlines()\n"
                    "i = t.index('.bb_0.1:'); j = t.index('.exit_0:')\n"
                    "leak = 'lfence' not in t[i:j] or t.index('lfence', i) > i + 2\n"
                    "print('=== Violations detected ===' if leak else 'Duration: 1')\n"
                    "sys.exit(1 if leak else 0)\n")
    fake.chmod(fake.stat().st_mode | stat.S_IEXEC)
    out = tmp_path / "out"
    assert h.main(["plan", "--records", str(recs), "--out", str(out)]) == 0
    assert h.main(["run", "--out", str(out), "--rvzr", str(fake), "--spec", "x", "--reps", "2"]) == 0
    jl = tmp_path / "labels.jsonl"
    assert h.main(["emit", "--out", str(out), "--jsonl", str(jl)]) == 0
    got = {r["variant"]: r for r in map(json.loads, jl.read_text().splitlines())}
    assert got["twin"]["label"] == "BENIGN" and got["twin"]["group"].endswith("_fenced")
    assert got["v1_fallthrough"]["label"] == "SPECTRE_V1"
    assert got["v1_fallthrough"]["group"].endswith("_misfenced")
    assert got["entry"]["label"] == "SPECTRE_V1"
    assert "lfence" in got["twin"]["sequence"]
    assert "original" not in got


def test_skip_labelled_from_results_dir_and_jsonl(tmp_path):
    res = tmp_path / "res"
    res.mkdir()
    (res / "runs.jsonl").write_text(json.dumps({"group": "g1", "variant": "original", "outcome": "none"}) + "\n")
    lab = tmp_path / "lab.jsonl"
    lab.write_text(json.dumps({"group": "g2_fenced"}) + "\n" + json.dumps({"group": "g3_misfenced"}) + "\n")
    assert h.labelled_groups([str(res), str(lab)]) == {"g1", "g2", "g3"}
    with pytest.raises(FileNotFoundError):
        h.labelled_groups([str(tmp_path / "nope")])


def test_plan_skip_labelled(tmp_path):
    recs = tmp_path / "recs.jsonl"
    rows = []
    for g in ("ga", "gb"):
        d = tmp_path / g / "violation-x"
        d.mkdir(parents=True)
        (d / "program.asm").write_text(V1_ASM)
        rows.append({"label": "SPECTRE_V1", "group": g, "source": "revizor_hw_i5_8300h",
                     "src_path": str(d / "program.asm")})
    recs.write_text("\n".join(json.dumps(r) for r in rows) + "\n")
    prev = tmp_path / "prev"
    prev.mkdir()
    (prev / "runs.jsonl").write_text(json.dumps({"group": "ga"}) + "\n")
    out = tmp_path / "out"
    assert h.main(["plan", "--records", str(recs), "--out", str(out), "--skip-labelled", str(prev)]) == 0
    groups = {json.loads(l)["group"] for l in (out / "plan.jsonl").read_text().splitlines()}
    assert groups == {"gb"}
