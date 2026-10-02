import json, sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import pytest
pytestmark = pytest.mark.skipif(
    not (ROOT / "models" / "locked_classifier.json").exists(), reason="no locked classifier")

def test_end_to_end_on_synthetic_labels(tmp_path):
    # real riscv records as stand-in gadgets; synthetic signal = graph is V1-ish
    rv = [json.loads(l) for l in open(ROOT / "spec/data/riscv_loio_corpus_v2.jsonl")]
    rv = [r for r in rv if len(r["sequence"]) > 20][:40]
    f = tmp_path / "samples_signal.jsonl"
    with open(f, "w") as fh:
        for i, r in enumerate(rv):
            leak = r["label"] != "BENIGN"
            fh.write(json.dumps({"realized_asm": r["sequence"],
                                 "verdict": "leak" if leak else "unrunnable",
                                 "signal": 5.0 if leak else 0.0,
                                 "gadget_id": f"g_{r['label']}_{i}"}) + "\n")
    from rank.train_ranker import run
    out = run(samples=[str(f)], seeds=[0, 1], out=str(tmp_path / "r.md"), arch="riscv64")
    assert "mean_auc_gain_over_random" in out
    assert (tmp_path / "r.md").exists()
