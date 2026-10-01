import json, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
from gen.rl_from_oracle import rejection_sample_finetune
from oracle.validators.base import ValidationResult, LEAK

class StubModel:
    vocab = type("V", (), {"cls_id": {}})()
    def sample(self, cls, arch, **kw): return ["movl <mem> <reg>", "ret"]

class StubValidator:
    def validate(self, g):
        return ValidationResult("stub", g["gadget_id"], g["vuln_class"], LEAK, 7.5, {})

def test_signal_is_logged(tmp_path):
    out = tmp_path / "s.jsonl"
    rejection_sample_finetune(
        StubModel(), "SPECTRE_V1", "x86_64", n_rounds=1, k_per_round=2,
        realize_fn=lambda t, c, a, r, i: {"gadget_id": f"g{i}", "vuln_class": c,
                                          "_realized_asm": ["movl (%rax), %ebx", "ret"]},
        validator=StubValidator(), finetune_fn=lambda *a, **k: None,
        samples_out=out)
    rows = [json.loads(l) for l in open(out)]
    assert rows and all("signal" in r for r in rows)
    assert rows[0]["signal"] == 7.5
