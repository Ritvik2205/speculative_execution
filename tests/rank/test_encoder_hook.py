import json, sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import pytest
MAN = ROOT / "models" / "locked_classifier.json"
pytestmark = pytest.mark.skipif(not MAN.exists(), reason="no locked classifier")

def _recs(n=4):
    rv = [json.loads(l) for l in open(ROOT / "spec/data/riscv_loio_corpus_v2.jsonl")]
    return [r for r in rv if len(r["sequence"]) > 20][:n]

def test_embed_shape_and_determinism():
    from rank.encoder_hook import EncoderHook
    h = EncoderHook(device="cpu")
    recs = _recs()
    emb = h.embed(recs)
    assert emb.shape == (len(recs), h.combined_dim)
    emb2 = h.embed(recs)                 # eval mode => deterministic
    assert np.allclose(emb, emb2, atol=1e-5)
