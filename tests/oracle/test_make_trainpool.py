"""make_trainpool.py: training-pool records for hardware labelling = real
violations minus every base gadget used for evaluation (plan 2026-11-02 Task 4)."""
import importlib.util
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("make_trainpool", ROOT / "oracle/revizor/scripts/make_trainpool.py")
mt = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = mt
spec.loader.exec_module(mt)


def R(vid, suffix=""):
    return {"label": "SPECTRE_V1", "group": f"revizor_spectre_v1_violation-{vid}{suffix}",
            "src_path": f"~/rvzr/violation-{vid}/program.asm"}


def test_trainpool_excludes_heldout_and_dev():
    real = [R("260101-000001"), R("260101-000002"), R("260101-000003")]
    held = [R("260101-000001")]
    dev = [R("260101-000002", "_fenced")]
    assert mt.trainpool(real, [held, dev]) == [R("260101-000003")]


def test_cli_writes_per_class(tmp_path):
    d = tmp_path
    (d / "revizor_spectre_v1_real.jsonl").write_text("".join(json.dumps(r) + "\n" for r in
                                                       [R("260101-000001"), R("260101-000003")]))
    (d / "revizor_spectre_v1_heldout.jsonl").write_text(json.dumps(R("260101-000001")) + "\n")
    (d / "dev.jsonl").write_text("")
    mt.main(["--data-dir", str(d), "--classes", "spectre_v1", "--exclude", str(d / "dev.jsonl")])
    out = [json.loads(l) for l in open(d / "revizor_spectre_v1_trainpool.jsonl")]
    assert out == [R("260101-000003")]
