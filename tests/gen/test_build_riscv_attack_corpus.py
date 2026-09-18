"""Tests for gen/build_riscv_attack_corpus.py -- the one-command driver that
harvests idiomatic riscv64 ATTACK gadgets from the project's C and gates them
for idiomaticity (not ARM transliteration).

Compiler-free by design: gen/harvest_riscv_from_cvulns.py and
eval/isa_independence_check.py are driven as subprocesses, so every test here
stubs subprocess.run with canned stdout instead of actually compiling or
running the (torch-importing) gate. The one exception is a guarded
end-to-end smoke test that really shells out to both scripts, skipped
cleanly when no riscv64-*-gcc is on PATH (mirrors tests/gen/test_generate_c_compiles.py).
"""

import shutil
import subprocess
import sys
from pathlib import Path

import pytest

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "gen"))

import build_riscv_attack_corpus as drv  # noqa: E402

HAS_RISCV = drv.find_riscv_cc() is not None


class FakeCompleted:
    def __init__(self, returncode=0, stdout="", stderr=""):
        self.returncode = returncode
        self.stdout = stdout
        self.stderr = stderr


HARVEST_STDOUT_OK = """forbidden sequences (held-out + train): 100

real riscv64 gadgets: 25  from 6 sources
class mix: {'SPECTRE_V1': 12, 'RETBLEED': 8, 'L1TF': 5}
families: 6
kept per class: {'SPECTRE_V1': 12, 'RETBLEED': 8, 'L1TF': 5}
compile failures: {'spectre_2.c:compile_fail': 1}
structural rejects: {'MDS:struct_fail': 2}
class-naming tokens surviving neutralization: (none)

wrote spec/data/riscv_cvulns_batch.jsonl
Next: gate it -- python3 eval/isa_independence_check.py --riscv-jsonl spec/data/riscv_cvulns_batch.jsonl
"""

HARVEST_STDOUT_DRY = """forbidden sequences (held-out + train): 100

real riscv64 gadgets: 25  from 6 sources
class mix: {'SPECTRE_V1': 12, 'RETBLEED': 8, 'L1TF': 5}
families: 6
kept per class: {'SPECTRE_V1': 12, 'RETBLEED': 8, 'L1TF': 5}
compile failures: {}
structural rejects: {}
class-naming tokens surviving neutralization: (none)

dry run -- pass --apply
"""

GATE_STDOUT_OK = """corpora (RISC-V stubs excluded):
  x86_64    500 records,   40 families
  arm64     500 records,   40 families
  riscv64    25 records,    6 families

==========================================================================
OVERALL -- canonical-op bigram JS divergence (0 = identical, 1 = disjoint)
==========================================================================
  x86_64   vs arm64     JS = 0.4000  95%CI [0.3500, 0.4500]  <-- YARDSTICK (independently built corpora)
  x86_64   vs riscv64   JS = 0.4100  95%CI [0.3600, 0.4600]
  arm64    vs riscv64   JS = 0.4200  95%CI [0.3700, 0.4700]

==========================================================================
PER CLASS -- controls for class mix, which moves bigrams on its own
==========================================================================
class                        x86-arm    x86-rv    arm-rv   ratio(rv/yard)
  SPECTRE_V1                  0.4000    0.4200    0.4100      1.03x
  RETBLEED                    0.3500    0.1500    0.1200      0.34x
  L1TF                        0.3000    0.2600    0.2700      0.85x  LOW n

==========================================================================
SIGN TEST -- is the candidate systematically closer to one source ISA?
==========================================================================
  classes where arm-vs-riscv < x86-vs-arm: 1/3
  one-sided sign test p = 0.5000
  -> no systematic asymmetry detected; the test had the power to fire and did not

USE FOR GENERATED SAMPLES: run this with the generated RISC-V corpus in
place of riscv64. A ratio well below 1.0 means the generator reproduced
the training ISAs' instruction ordering rather than writing idiomatic
RISC-V -- i.e. hand-transliteration in slower motion.
"""


# ---------------------------------------------------------------------------
# find_riscv_cc
# ---------------------------------------------------------------------------

def test_find_riscv_cc_returns_none_when_absent(monkeypatch):
    monkeypatch.setattr(drv.shutil, "which", lambda name: None)
    monkeypatch.setattr(drv.os, "environ", {"PATH": ""})
    assert drv.find_riscv_cc() is None


def test_find_riscv_cc_finds_known_candidate(monkeypatch):
    monkeypatch.setattr(drv.shutil, "which",
                         lambda name: "/usr/bin/riscv64-elf-gcc" if name == "riscv64-elf-gcc" else None)
    assert drv.find_riscv_cc() == "riscv64-elf-gcc"


def test_find_riscv_cc_scans_path_for_pattern(monkeypatch, tmp_path):
    monkeypatch.setattr(drv.shutil, "which", lambda name: None)
    bindir = tmp_path / "bin"
    bindir.mkdir()
    cc = bindir / "riscv64-unknown-linux-gnu-gcc"
    cc.write_text("#!/bin/sh\n")
    cc.chmod(0o755)
    monkeypatch.setattr(drv.os, "environ", {"PATH": str(bindir)})
    assert drv.find_riscv_cc() == "riscv64-unknown-linux-gnu-gcc"


# ---------------------------------------------------------------------------
# extract_file_class / list_uncovered_files
# ---------------------------------------------------------------------------

def test_extract_file_class_reads_real_mapping():
    fc = drv.extract_file_class()
    assert fc["spectre_1.c"] == "SPECTRE_V1"
    assert fc["l1tf.c"] == "L1TF"
    assert fc["retbleed.c"] == "RETBLEED"
    assert fc["bhi.c"] == "BRANCH_HISTORY_INJECTION"


def test_list_uncovered_files_with_fake_mapping(tmp_path):
    for name in ["a.c", "b.c", "c.c", "utils.c"]:
        (tmp_path / name).write_text("// stub\n")
    file_class = {"a.c": "SPECTRE_V1", "b.c": "L1TF"}
    uncovered = drv.list_uncovered_files(tmp_path, file_class)
    assert uncovered == ["c.c", "utils.c"]


def test_list_uncovered_files_none_uncovered(tmp_path):
    (tmp_path / "a.c").write_text("// stub\n")
    assert drv.list_uncovered_files(tmp_path, {"a.c": "SPECTRE_V1"}) == []


def test_real_cvulns_dir_has_uncovered_files():
    # Documents the actual expansion opportunity as of this commit: downfall.c,
    # meltdown.c, the _arm64/_x86 variants, and utils*.c are not in FILE_CLASS.
    fc = drv.extract_file_class()
    uncovered = drv.list_uncovered_files(drv.CVULNS_DIR, fc)
    assert "downfall.c" in uncovered
    assert "spectre_1.c" not in uncovered


# ---------------------------------------------------------------------------
# stdout parsing helpers
# ---------------------------------------------------------------------------

def test_parse_dict_after_kept_per_class():
    d = drv._parse_dict_after("kept per class:", HARVEST_STDOUT_OK)
    assert d == {"SPECTRE_V1": 12, "RETBLEED": 8, "L1TF": 5}


def test_parse_dict_after_missing_marker_returns_empty():
    assert drv._parse_dict_after("nope:", HARVEST_STDOUT_OK) == {}


def test_parse_gate_per_class():
    rows = drv._parse_gate_per_class(GATE_STDOUT_OK)
    assert set(rows) == {"SPECTRE_V1", "RETBLEED", "L1TF"}
    assert rows["SPECTRE_V1"]["ratio"] == pytest.approx(1.03)
    assert rows["RETBLEED"]["ratio"] == pytest.approx(0.34)
    assert rows["L1TF"]["low_n"] is True
    assert rows["SPECTRE_V1"]["low_n"] is False


def test_parse_gate_sign_test():
    st = drv._parse_gate_sign_test(GATE_STDOUT_OK)
    assert st["closer"] == 1
    assert st["total"] == 3
    assert st["p_value"] == pytest.approx(0.5)
    assert "no systematic asymmetry" in st["verdict"]


def test_gate_verdict_thresholds():
    assert drv.gate_verdict(1.03) == "PASS"
    assert drv.gate_verdict(0.90) == "PASS"
    assert drv.gate_verdict(0.34) == "FAIL"
    assert drv.gate_verdict(0.59) == "FAIL"
    assert drv.gate_verdict(0.75) == "AMBIGUOUS"


# ---------------------------------------------------------------------------
# run_harvest / run_gate -- subprocess argv construction
# ---------------------------------------------------------------------------

def test_run_harvest_dry_run_does_not_pass_apply(monkeypatch):
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return FakeCompleted(returncode=0, stdout=HARVEST_STDOUT_DRY)

    monkeypatch.setattr(drv.subprocess, "run", fake_run)
    result = drv.run_harvest(apply=False, min_instructions=4, out_path=drv.DEFAULT_OUT)
    assert len(calls) == 1
    assert "--apply" not in calls[0]
    assert result["wrote_path"] is None
    assert result["kept_per_class"] == {"SPECTRE_V1": 12, "RETBLEED": 8, "L1TF": 5}


def test_run_harvest_apply_passes_apply_flag(monkeypatch, tmp_path):
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return FakeCompleted(returncode=0, stdout=HARVEST_STDOUT_OK)

    fake_default_out = tmp_path / "riscv_cvulns_batch.jsonl"
    fake_default_out.write_text('{"label": "SPECTRE_V1"}\n')
    monkeypatch.setattr(drv, "DEFAULT_OUT", fake_default_out)
    monkeypatch.setattr(drv.subprocess, "run", fake_run)

    result = drv.run_harvest(apply=True, min_instructions=4, out_path=fake_default_out)
    assert "--apply" in calls[0]
    assert result["wrote_path"] == fake_default_out


def test_run_harvest_apply_copies_to_custom_out(monkeypatch, tmp_path):
    def fake_run(cmd, **kwargs):
        return FakeCompleted(returncode=0, stdout=HARVEST_STDOUT_OK)

    fake_default_out = tmp_path / "default" / "riscv_cvulns_batch.jsonl"
    fake_default_out.parent.mkdir(parents=True)
    fake_default_out.write_text('{"label": "SPECTRE_V1"}\n')
    monkeypatch.setattr(drv, "DEFAULT_OUT", fake_default_out)
    monkeypatch.setattr(drv.subprocess, "run", fake_run)

    custom_out = tmp_path / "custom" / "out.jsonl"
    result = drv.run_harvest(apply=True, min_instructions=4, out_path=custom_out)
    assert result["wrote_path"] == custom_out
    assert custom_out.read_text() == fake_default_out.read_text()


def test_run_gate_invokes_with_riscv_jsonl(monkeypatch, tmp_path):
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return FakeCompleted(returncode=0, stdout=GATE_STDOUT_OK)

    monkeypatch.setattr(drv.subprocess, "run", fake_run)
    jsonl = tmp_path / "corpus.jsonl"
    result = drv.run_gate(jsonl)
    assert str(jsonl) in calls[0]
    assert "--riscv-jsonl" in calls[0]
    assert set(result["per_class"]) == {"SPECTRE_V1", "RETBLEED", "L1TF"}


# ---------------------------------------------------------------------------
# main() -- end to end with subprocess stubbed
# ---------------------------------------------------------------------------

def test_main_missing_toolchain_fails_loudly(monkeypatch, capsys):
    monkeypatch.setattr(drv, "find_riscv_cc", lambda: None)
    calls = []
    monkeypatch.setattr(drv.subprocess, "run", lambda *a, **k: calls.append(a) or FakeCompleted())
    rc = drv.main([])
    assert rc == 1
    assert calls == []  # never even tried to shell out
    err = capsys.readouterr().err
    assert "riscv64" in err
    assert "apt-get" in err


def test_main_dry_run_does_not_apply_or_gate(monkeypatch, capsys):
    monkeypatch.setattr(drv, "find_riscv_cc", lambda: "riscv64-elf-gcc")
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return FakeCompleted(returncode=0, stdout=HARVEST_STDOUT_DRY)

    monkeypatch.setattr(drv.subprocess, "run", fake_run)
    rc = drv.main([])
    assert rc == 0
    assert len(calls) == 1  # harvest only, gate never invoked
    assert "--apply" not in calls[0]
    assert str(drv.GATE_SCRIPT) not in " ".join(calls[0])

    out = capsys.readouterr().out
    assert "kept=12" in out and "SPECTRE_V1" in out
    assert "baseline=12" in out
    assert "GATE NOT RUN (dry run" in out
    assert "Corpus NOT written (dry run" in out
    assert "downfall.c" in out  # uncovered-files list


def test_main_apply_runs_harvest_then_gate(monkeypatch, capsys, tmp_path):
    monkeypatch.setattr(drv, "find_riscv_cc", lambda: "riscv64-elf-gcc")
    fake_default_out = tmp_path / "riscv_cvulns_batch.jsonl"
    fake_default_out.write_text('{"label": "SPECTRE_V1"}\n')
    monkeypatch.setattr(drv, "DEFAULT_OUT", fake_default_out)

    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        if str(drv.HARVEST_SCRIPT) in cmd:
            return FakeCompleted(returncode=0, stdout=HARVEST_STDOUT_OK)
        if str(drv.GATE_SCRIPT) in cmd:
            return FakeCompleted(returncode=0, stdout=GATE_STDOUT_OK)
        raise AssertionError(f"unexpected subprocess call: {cmd}")

    monkeypatch.setattr(drv.subprocess, "run", fake_run)
    rc = drv.main(["--apply", "--out", str(fake_default_out)])
    assert rc == 0
    assert len(calls) == 2
    assert "--apply" in calls[0]

    out = capsys.readouterr().out
    assert "PASS" in out  # SPECTRE_V1 ratio 1.03x
    assert "FAIL" in out  # RETBLEED ratio 0.34x
    assert "AMBIGUOUS" in out or "0.85x" in out  # L1TF ratio 0.85x -> ambiguous
    assert f"Corpus written: {fake_default_out}" in out


def test_main_apply_reports_gate_not_run_for_ungated_class(monkeypatch, capsys, tmp_path):
    monkeypatch.setattr(drv, "find_riscv_cc", lambda: "riscv64-elf-gcc")
    fake_default_out = tmp_path / "riscv_cvulns_batch.jsonl"
    fake_default_out.write_text('{"label": "BRANCH_HISTORY_INJECTION"}\n')
    monkeypatch.setattr(drv, "DEFAULT_OUT", fake_default_out)

    harvest_stdout = HARVEST_STDOUT_OK.replace(
        "kept per class: {'SPECTRE_V1': 12, 'RETBLEED': 8, 'L1TF': 5}",
        "kept per class: {'SPECTRE_V1': 12, 'BRANCH_HISTORY_INJECTION': 2}",
    )

    def fake_run(cmd, **kwargs):
        if str(drv.HARVEST_SCRIPT) in cmd:
            return FakeCompleted(returncode=0, stdout=harvest_stdout)
        if str(drv.GATE_SCRIPT) in cmd:
            return FakeCompleted(returncode=0, stdout=GATE_STDOUT_OK)  # no BHI row
        raise AssertionError(cmd)

    monkeypatch.setattr(drv.subprocess, "run", fake_run)
    rc = drv.main(["--apply", "--out", str(fake_default_out)])
    assert rc == 0
    out = capsys.readouterr().out
    assert "BRANCH_HISTORY_INJECTION" in out
    assert "GATE NOT RUN (too few records" in out


# ---------------------------------------------------------------------------
# Guarded real end-to-end smoke test -- skips cleanly without a riscv64 cc.
# ---------------------------------------------------------------------------

@pytest.mark.skipif(not HAS_RISCV, reason="no riscv64-*-gcc cross-compiler available")
def test_main_dry_run_real_subprocess_smoke():
    rc = drv.main([])
    assert rc == 0
