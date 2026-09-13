import os
from oracle.manifest import LeakRecord, write_manifest, read_manifest

def _rec(**kw):
    base = dict(
        program="spectre_1", vuln_class="SPECTRE_V1", arch="x86_64",
        secret=83, recovered_byte=83, recovered_ok=True,
        snr_o3=7.2, snr_inorder=0.1, leak_signal=7.1, leak=True,
        adjudicable="yes", status="ok", gem5_version="v24.0.0.0",
        member_files=["spectre_1.s", "spectre_1_O2.s"],
    )
    base.update(kw)
    return LeakRecord(**base)

def test_roundtrip_preserves_records(tmp_path):
    recs = [_rec(), _rec(program="mds", vuln_class="MDS", leak=False, adjudicable="no")]
    p = os.path.join(tmp_path, "m.jsonl")
    write_manifest(recs, p)
    back = read_manifest(p)
    assert back == recs

def test_each_line_is_one_json_object(tmp_path):
    p = os.path.join(tmp_path, "m.jsonl")
    write_manifest([_rec(), _rec(program="l1tf")], p)
    with open(p) as f:
        lines = [l for l in f.read().splitlines() if l.strip()]
    assert len(lines) == 2
