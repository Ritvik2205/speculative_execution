"""Tests for Spectector oracle driver."""
from oracle.spectector_oracle import parse_spectector_json, build_spec_record

V1_JSON = '{"status":"data","paths":{"0":{"data_check":true,"control_check":false,"unsupported_ins":0,"formulas_length":[277],"trace_length":15,"steps":36}},"name":"x.s"},'
SAFE_JSON = '{"status":"safe","paths":{"0":{"data_check":false,"control_check":false,"unsupported_ins":0,"formulas_length":[10],"trace_length":3,"steps":8}},"name":"x.s"},'

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
