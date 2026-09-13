"""Tests for the multi-oracle validator framework (pure-Python parts)."""
import pytest
from oracle.validators.base import ValidationResult, LEAK, SAFE, UNRUNNABLE
from oracle.validators.invisispec_validator import parse_invisispec_output
from oracle.validators.cross_validate import cross_validate, summarize


def test_validation_result_rejects_bad_verdict():
    with pytest.raises(ValueError):
        ValidationResult("v", "g", "SPECTRE_V1", "totally-bogus", 0.0)


def test_parse_utils_success_is_leak():
    out = "Measuring cache timings...\nSUCCESS! Leaked the actual SPECTRE_V1 secret.\nActual secret data: S\n"
    info = parse_invisispec_output(out)
    assert info["leaked"] is True and info["style"] == "utils"


def test_parse_utils_noleak_is_safe():
    out = "No SPECTRE_V1 secret leaked or could not detect leakage.\nActual secret data: S\n"
    info = parse_invisispec_output(out)
    assert info["leaked"] is False


def test_parse_spectre_full_counts_recovered_bytes():
    out = ("Reading 3 bytes:\n"
           "Reading at malicious_x = 0x1... Success: 0x54=T score=2\n"
           "Reading at malicious_x = 0x2... Success: 0x68=h score=2\n"
           "Reading at malicious_x = 0x3... Unclear: 0xFF score=999\n")
    info = parse_invisispec_output(out)
    assert info["style"] == "spectre_full"
    assert info["leaked"] is True and info["n_success"] == 2 and info["n_attempts"] == 3


class _MapValidator:
    """Fake validator returning a per-gadget verdict from a dict."""
    def __init__(self, name, verdict_by_id):
        self.name = name
        self._m = verdict_by_id

    def validate(self, g):
        v = self._m[g["gadget_id"]]
        return ValidationResult(self.name, g["gadget_id"], g["vuln_class"], v,
                                1.0 if v == LEAK else 0.0)


def test_cross_validate_double_confirm_and_conflict():
    gadgets = [
        {"gadget_id": "V1", "vuln_class": "SPECTRE_V1"},
        {"gadget_id": "BENIGN", "vuln_class": "BENIGN"},
        {"gadget_id": "MIX", "vuln_class": "SPECTRE_V2"},
    ]
    spec = _MapValidator("spectector", {"V1": LEAK, "BENIGN": SAFE, "MIX": LEAK})
    exe = _MapValidator("invisispec", {"V1": LEAK, "BENIGN": SAFE, "MIX": SAFE})
    s = summarize(cross_validate(gadgets, [spec, exe]))
    assert s["double_confirmed_leaks"] == ["V1"]       # both leak
    assert s["conflicts"] == ["MIX"]                   # spectector leak vs invisispec safe
    assert s["any_leak"] == ["MIX", "V1"]              # sorted; BENIGN excluded


def test_revizor_unrunnable_without_x86_hardware(monkeypatch):
    """On a non-x86 host, RevizorValidator must return UNRUNNABLE — never a
    fabricated leak/safe verdict (the leak physically can't be observed)."""
    from oracle.validators.revizor_validator import RevizorValidator
    from oracle.validators.base import UNRUNNABLE
    v = RevizorValidator("/tmp")
    monkeypatch.setattr(v, "_hardware_available", lambda: False)
    r = v.validate({"gadget_id": "l1tf_0", "vuln_class": "L1TF"})
    assert r.verdict == UNRUNNABLE
    assert "x86" in r.details["reason"].lower()


def test_revizor_unknown_class_unrunnable(monkeypatch):
    from oracle.validators.revizor_validator import RevizorValidator
    from oracle.validators.base import UNRUNNABLE
    v = RevizorValidator("/tmp")
    monkeypatch.setattr(v, "_hardware_available", lambda: True)
    r = v.validate({"gadget_id": "x", "vuln_class": "BHI"})   # no canned config
    assert r.verdict == UNRUNNABLE
