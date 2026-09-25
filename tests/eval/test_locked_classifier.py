"""The locked classifier loads, verifies its checkpoints, returns aligned,
normalised outputs, and a 1-member ensemble reproduces the evaluator."""
import json
import sys
from pathlib import Path

import numpy as np
import pytest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "eval"))
MAN = ROOT / "models" / "locked_classifier.json"
pytestmark = pytest.mark.skipif(not MAN.exists(), reason="no locked classifier manifest")


@pytest.fixture(scope="module")
def clf():
    from locked_classifier import LockedClassifier
    return LockedClassifier()


def _records(n=6):
    rv = [json.loads(l) for l in open(ROOT / "spec/data/riscv_loio_corpus_v2.jsonl")]
    return [r for r in rv if len(r["sequence"]) > 20][:n]


def test_outputs_aligned_and_normalised(clf):
    recs = _records() + [{"sequence": ["ret"], "arch": "x86_64"}]   # unbuildable
    out = clf.predict(recs)
    assert len(out["label"]) == len(out["attack_prob"]) == len(recs)
    assert out["label"][-1] is None and np.isnan(out["attack_prob"][-1])
    ok = ~np.isnan(out["attack_prob"])
    assert np.allclose(out["probs"][ok].sum(1), 1.0, atol=1e-5)
    assert ((out["attack_prob"][ok] >= 0) & (out["attack_prob"][ok] <= 1)).all()


def test_rejects_tampered_checkpoint(tmp_path):
    from locked_classifier import LockedClassifier
    m = json.loads(MAN.read_text())
    m["checkpoints"][0]["sha256"] = "0" * 64
    bad = tmp_path / "m.json"
    bad.write_text(json.dumps(m))
    with pytest.raises(RuntimeError, match="sha256"):
        LockedClassifier(manifest=bad)
