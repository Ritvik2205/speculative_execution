import math
from oracle.parse_poc import parse_poc_output

def _synthetic_stdout(secret=83, hit_line=83):
    lines = []
    for i in range(256):
        cyc = 40 if i == hit_line else 200
        lines.append(f"LINE {i} {cyc}")
    lines.append(f"Leaked Inception secret (speculatively): S (ASCII {hit_line}), Access Time: 40 cycles")
    lines.append("SUCCESS! Leaked the actual Inception secret.")
    lines.append(f"Actual secret data: {chr(secret)}")
    return "\n".join(lines) + "\n"

def test_parses_full_latency_vector():
    r = parse_poc_output(_synthetic_stdout())
    assert len(r.latencies) == 256
    assert r.latencies[83] == 40.0
    assert r.latencies[10] == 200.0

def test_parses_recovery_success():
    r = parse_poc_output(_synthetic_stdout(secret=83, hit_line=83))
    assert r.recovered_byte == 83
    assert r.success is True
    assert r.actual_secret == 83

def test_no_leak_case():
    r = parse_poc_output("No MDS secret leaked or could not detect leakage.\nActual secret data: M\n")
    assert r.recovered_byte == -1
    assert r.success is False
    assert r.actual_secret == ord("M")
    assert all(math.isnan(x) for x in r.latencies)

def test_mismatch_recovers_byte_but_not_success():
    out = ("Leaked X (speculatively): Q (ASCII 81), Access Time: 45 cycles\n"
           "LEAKED VALUE DOES NOT MATCH ACTUAL X.\n"
           "Actual secret data: S\n")
    r = parse_poc_output(out)
    assert r.recovered_byte == 81
    assert r.success is False
    assert r.actual_secret == ord("S")
