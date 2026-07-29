"""Test spectector spec_report() function."""
from oracle.run_spectector_batch import spec_report
from oracle.manifest import LeakRecord


def _r(cls, leak, adj):
    """Helper to create LeakRecord for testing."""
    return LeakRecord(
        program=cls.lower(),
        vuln_class=cls,
        arch="x86_64",
        secret=0,
        recovered_byte=0,
        recovered_ok=leak,
        snr_o3=100.0 if leak else 0.1,
        snr_inorder=0.0,
        leak_signal=100.0 if leak else 0.0,
        leak=leak,
        adjudicable=adj,
        status="ok",
        gem5_version="spectector-master",
        member_files=[],
    )


def test_aggregate_only_counts_adjudicable_yes():
    """Aggregate should only count records with adjudicable=='yes'."""
    recs = [
        _r("SPECTRE_V1", True, "yes"),
        _r("SPECTRE_V1", True, "yes"),
        _r("BENIGN", False, "yes"),
        _r("SPECTRE_V4", False, "partial"),
        _r("L1TF", False, "no"),
    ]
    rep = spec_report(recs)
    assert rep["aggregate_adjudicable"]["n"] == 3
    assert rep["aggregate_adjudicable"]["n_leak"] == 2
    assert rep["per_class"]["L1TF"]["adjudicable"] == "no"
    assert rep["per_class"]["SPECTRE_V1"]["leak_rate"] == 1.0


def test_coverage_gaps_listed_separately():
    """Coverage gaps should list classes with adjudicable=='no'."""
    recs = [
        _r("SPECTRE_V1", True, "yes"),
        _r("BHI", False, "no"),
        _r("L1TF", True, "no"),
    ]
    rep = spec_report(recs)
    assert "BHI" in rep["coverage_gaps"]
    assert "L1TF" in rep["coverage_gaps"]
    assert "SPECTRE_V1" not in rep["coverage_gaps"]


def test_partial_bucket_listed_separately():
    """Classes with adjudicable=='partial' should show up in their own
    'partial' bucket, not be silently dropped from the report."""
    recs = [
        _r("SPECTRE_V1", True, "yes"),
        _r("SPECTRE_V4", False, "partial"),
        _r("L1TF", False, "no"),
    ]
    rep = spec_report(recs)
    assert rep["partial"] == ["SPECTRE_V4"]
    assert "SPECTRE_V4" not in rep["coverage_gaps"]
    assert "SPECTRE_V4" not in [
        r.vuln_class for r in recs if r.adjudicable == "yes"
    ]  # sanity: partial stays out of the aggregate-eligible set


def test_per_class_leak_rate():
    """Per-class leak_rate should be computed correctly."""
    recs = [
        _r("SPECTRE_V1", True, "yes"),
        _r("SPECTRE_V1", False, "yes"),
        _r("SPECTRE_V1", True, "yes"),
    ]
    rep = spec_report(recs)
    # 2 leaks out of 3 -> 0.6666...
    assert abs(rep["per_class"]["SPECTRE_V1"]["leak_rate"] - (2.0 / 3.0)) < 1e-6
