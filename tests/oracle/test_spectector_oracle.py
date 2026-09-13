"""Tests for Spectector oracle driver."""
import subprocess

import pytest

from oracle.spectector_oracle import (
    parse_spectector_json,
    build_spec_record,
    run_spec_gadget,
)

V1_JSON = '{"status":"data","paths":{"0":{"data_check":true,"control_check":false,"unsupported_ins":0,"formulas_length":[277],"trace_length":15,"steps":36}},"name":"x.s"},'
SAFE_JSON = '{"status":"safe","paths":{"0":{"data_check":false,"control_check":false,"unsupported_ins":0,"formulas_length":[10],"trace_length":3,"steps":8}},"name":"x.s"},'

# Top-level "status" missing entirely (paths["0"] present, unsupported_ins present).
MISSING_STATUS_JSON = (
    '{"paths":{"0":{"data_check":false,"control_check":false,"unsupported_ins":0,'
    '"formulas_length":[1],"trace_length":1,"steps":1}},"name":"x.s"},'
)
# Top-level "status" present but not a value Spectector actually emits.
UNEXPECTED_STATUS_JSON = (
    '{"status":"weird","paths":{"0":{"data_check":false,"control_check":false,'
    '"unsupported_ins":0,"formulas_length":[1],"trace_length":1,"steps":1}},"name":"x.s"},'
)
# Valid top-level status but paths["0"] absent -> unsupported_ins is None.
NO_PATH_JSON = '{"status":"data","paths":{},"name":"x.s"},'

def test_parse_strips_trailing_comma_and_reads_status():
    d = parse_spectector_json(V1_JSON)
    assert d["status"] == "data" and d["data_check"] is True and d["unsupported_ins"] == 0

def test_leak_record_leak_when_data():
    row = {"gadget_id":"SPECTRE_V1_baseline","vuln_class":"SPECTRE_V1","variant":"baseline","adjudicable":"yes"}
    rec = build_spec_record(row, parse_spectector_json(V1_JSON))
    assert rec.leak is True and rec.leak_signal > 0 and rec.vuln_class == "SPECTRE_V1"

def test_leak_record_safe_when_safe():
    row = {"gadget_id":"SPECTRE_V1_fenced","vuln_class":"SPECTRE_V1","variant":"fenced","adjudicable":"yes"}
    rec = build_spec_record(row, parse_spectector_json(SAFE_JSON))
    assert rec.leak is False and rec.leak_signal == 0.0


def _fake_run_returncode(code, stdout="", stderr=""):
    def fake_run(*args, **kwargs):
        return subprocess.CompletedProcess(args[0] if args else [], code, stdout, stderr)
    return fake_run


def test_run_spec_gadget_docker_failure_is_unrunnable(monkeypatch):
    """Non-zero returncode (compile/docker failure) must not fabricate a verdict."""
    monkeypatch.setattr(subprocess, "run", _fake_run_returncode(1, stderr="compile error"))
    row = {
        "gadget_id": "SPECTRE_V1_baseline",
        "path": "does/not/matter.c",
        "vuln_class": "SPECTRE_V1",
        "adjudicable": "yes",
    }
    rec = run_spec_gadget(row, "/tmp/nonexistent_repo_for_test")
    assert rec.status == "unrunnable"
    assert rec.leak is False
    assert rec.recovered_ok is False


@pytest.mark.parametrize(
    "bad_json,label",
    [
        (MISSING_STATUS_JSON, "missing_status"),
        (UNEXPECTED_STATUS_JSON, "unexpected_status"),
        (NO_PATH_JSON, "no_path_unsupported_ins_none"),
    ],
)
def test_run_spec_gadget_unadjudicated_status_is_unrunnable_not_fabricated_safe(
    monkeypatch, tmp_path, bad_json, label
):
    """A gadget Spectector didn't actually adjudicate (missing/unexpected
    top-level status, or no paths["0"] so unsupported_ins is None) must come
    back as status='unrunnable', never a fabricated status='ok'/leak=False
    'safe' verdict."""
    build_dir = tmp_path / "oracle" / "build"
    build_dir.mkdir(parents=True)
    gadget_id = f"WEIRD_{label}"
    (build_dir / f"{gadget_id}.json").write_text(bad_json)

    monkeypatch.setattr(subprocess, "run", _fake_run_returncode(0))

    row = {
        "gadget_id": gadget_id,
        "path": "does/not/matter.c",
        "vuln_class": "SPECTRE_V1",
        "adjudicable": "yes",
    }
    rec = run_spec_gadget(row, str(tmp_path))
    assert rec.status == "unrunnable"
    assert rec.leak is False
    assert rec.recovered_ok is False


def test_run_spec_gadget_exception_is_unrunnable_and_logged(monkeypatch, caplog):
    """An unexpected exception (e.g. subprocess raising) must not crash the
    batch and must not fabricate a verdict; it should be logged for visibility."""
    def raise_run(*args, **kwargs):
        raise OSError("docker daemon not reachable")
    monkeypatch.setattr(subprocess, "run", raise_run)

    row = {
        "gadget_id": "SPECTRE_V1_baseline",
        "path": "does/not/matter.c",
        "vuln_class": "SPECTRE_V1",
        "adjudicable": "yes",
    }
    with caplog.at_level("WARNING"):
        rec = run_spec_gadget(row, "/tmp/nonexistent_repo_for_test")
    assert rec.status == "unrunnable"
    assert rec.leak is False
    assert any("SPECTRE_V1_baseline" in msg for msg in caplog.messages)


def test_parse_handles_accumulated_multi_object_stats():
    # Spectector --stats can append: file holds several comma-separated objects.
    # Parser must take the LAST verdict, not choke on "Extra data".
    from oracle.spectector_oracle import parse_spectector_json
    multi = ('{"status":"safe","paths":{"0":{"data_check":false,"control_check":false,'
             '"unsupported_ins":0,"trace_length":3}},"name":"x.s"},'
             '{"status":"data","paths":{"0":{"data_check":true,"control_check":false,'
             '"unsupported_ins":0,"trace_length":15}},"name":"x.s"},')
    d = parse_spectector_json(multi)
    assert d["status"] == "data" and d["trace_length"] == 15
