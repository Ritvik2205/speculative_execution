"""Test oracle report() function."""
from oracle.validate_oracle import report
from oracle.manifest import LeakRecord


def _r(cls, leak, adj):
    """Helper to create LeakRecord for testing."""
    return LeakRecord(
        program=cls.lower(),
        vuln_class=cls,
        arch="x86_64",
        secret=1,
        recovered_byte=1,
        recovered_ok=leak,
        snr_o3=9 if leak else 0.1,
        snr_inorder=0.1,
        leak_signal=8.9 if leak else 0.0,
        leak=leak,
        adjudicable=adj,
        status="ok",
        gem5_version="v",
        member_files=[],
    )


def test_aggregate_only_counts_adjudicable_yes():
    """Aggregate should only count records with adjudicable=='yes'."""
    recs = [
        _r("SPECTRE_V1", True, "yes"),
        _r("SPECTRE_V1", True, "yes"),
        _r("BENIGN", False, "yes"),
        _r("MDS", False, "no"),
        _r("L1TF", False, "no"),
    ]
    rep = report(recs)
    assert rep["aggregate_adjudicable"]["n"] == 3
    assert rep["aggregate_adjudicable"]["n_leak"] == 2
    assert rep["per_class"]["MDS"]["adjudicable"] == "no"
    assert rep["per_class"]["SPECTRE_V1"]["leak_rate"] == 1.0


def test_coverage_gaps_listed_separately():
    """Coverage gaps should list classes with adjudicable=='no'."""
    recs = [_r("SPECTRE_V1", True, "yes"), _r("BHI", False, "no")]
    rep = report(recs)
    assert "BHI" in rep["coverage_gaps"]
    assert "SPECTRE_V1" not in rep["coverage_gaps"]
