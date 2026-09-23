"""Tests for gen/rl_from_oracle.py's --finetune-lr (G1) and
--finetune-with-benign (G3) additions.

Pure unit tests, following the same stub pattern as tests/gen/test_rl_reward.py
and tests/gen/test_rl_cli.py: no Docker, no Spectector. G1's lr-threading test
exercises the REAL `_default_finetune` (not a stub) against a tiny real
CondTransformerLM/GenVocab so the actual `gen.generator.train` call is
observed; everything else uses injected stubs.
"""
import sys
from pathlib import Path

import torch

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK, SAFE, ValidationResult
import gen.generator as generator_module
from gen.generator import GenVocab, CondTransformerLM
from gen.rl_from_oracle import _default_finetune, rejection_sample_finetune


def _tiny_model(classes=("SPECTRE_V1", "BENIGN")):
    vocab = GenVocab(["mov", "add", "cmp"], list(classes), ["x86_64", "arm64"])
    model = CondTransformerLM(len(vocab), dim=16, layers=1, heads=2, max_len=8)
    model.vocab = vocab
    return model


# ---------------------------------------------------------------------------
# G1: --finetune-lr threading (_default_finetune -> gen.generator.train)
# ---------------------------------------------------------------------------

def test_default_finetune_default_lr_is_3e_minus_3(monkeypatch):
    model = _tiny_model()
    calls = []

    def fake_train(model_, encoded, epochs, pad_id, lr=3e-3):
        calls.append(lr)
        return model_

    monkeypatch.setattr(generator_module, "train", fake_train)

    kept = [{"_tokens": ["mov", "add"], "_class": "SPECTRE_V1", "_arch": "x86_64"}]
    _default_finetune(model, kept, epochs_per_round=1)

    assert calls == [3e-3]


def test_default_finetune_overridden_lr_flows_through(monkeypatch):
    model = _tiny_model()
    calls = []

    def fake_train(model_, encoded, epochs, pad_id, lr=3e-3):
        calls.append(lr)
        return model_

    monkeypatch.setattr(generator_module, "train", fake_train)

    kept = [{"_tokens": ["mov", "add"], "_class": "SPECTRE_V1", "_arch": "x86_64"}]
    _default_finetune(model, kept, epochs_per_round=1, lr=1e-4)

    assert calls == [1e-4]


def test_rejection_sample_finetune_finetune_lr_reaches_default_finetune(monkeypatch):
    """The --finetune-lr CLI value threads through
    rejection_sample_finetune -> (default finetune_fn) -> _default_finetune
    -> gen.generator.train, when no finetune_fn is injected."""
    model = _tiny_model()
    calls = []

    def fake_train(model_, encoded, epochs, pad_id, lr=3e-3):
        calls.append(lr)
        return model_

    monkeypatch.setattr(generator_module, "train", fake_train)

    class AlwaysLeakValidator:
        def validate(self, gadget):
            return ValidationResult("fake", gadget["gadget_id"], gadget["vuln_class"],
                                     LEAK, 0.0, {})

    def realize_fn(tokens, target_class, target_arch, round_idx, sample_idx):
        return {"gadget_id": f"g{sample_idx}", "vuln_class": target_class}

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=1, k_per_round=2, realize_fn=realize_fn,
        validator=AlwaysLeakValidator(), epochs_per_round=1,
        finetune_lr=5e-5,
    )

    assert calls == [5e-5]


# ---------------------------------------------------------------------------
# G3: --finetune-with-benign
# ---------------------------------------------------------------------------

class StubModel:
    """Fake generator for the loop-level (not _default_finetune-level) G3
    tests: sample() returns deterministic tokens; vocab is a real GenVocab so
    the "BENIGN in cls_id" check can be exercised both ways."""

    def __init__(self, classes=("SPECTRE_V1", "BENIGN")):
        self.n_calls = 0
        self.vocab = GenVocab([], list(classes), ["x86_64"])

    def sample(self, target_class, target_arch, **kwargs):
        self.n_calls += 1
        return [f"TOK_{self.n_calls}"]


class MixedVerdictValidator:
    """Even global index -> LEAK, odd -> SAFE."""

    def __init__(self):
        self.n = 0

    def validate(self, gadget):
        verdict = LEAK if self.n % 2 == 0 else SAFE
        self.n += 1
        return ValidationResult("fake", gadget["gadget_id"], gadget["vuln_class"],
                                 verdict, 0.0, {})


def _make_realize_fn():
    counter = {"n": 0}

    def realize_fn(tokens, target_class, target_arch, round_idx, sample_idx):
        idx = counter["n"]
        counter["n"] += 1
        return {"gadget_id": f"g{idx}", "vuln_class": target_class, "_idx": idx}

    return realize_fn


def test_finetune_with_benign_off_by_default_leak_only_unchanged():
    model = StubModel()
    finetune_calls = []

    def stub_finetune_fn(model_, kept, epochs_per_round):
        finetune_calls.append(dict(kept=list(kept)))

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=1, k_per_round=4, realize_fn=_make_realize_fn(),
        validator=MixedVerdictValidator(), epochs_per_round=1,
        finetune_fn=stub_finetune_fn,
    )

    assert len(finetune_calls) == 1
    call = finetune_calls[0]
    assert "benign" not in call  # unchanged call signature when flag is off
    assert all(g["_verdict"] == LEAK for g in call["kept"])


def test_finetune_with_benign_on_batch_includes_safe_as_benign():
    model = StubModel()
    captured = {}

    def stub_finetune_fn(model_, kept, epochs_per_round, benign=None):
        captured["kept"] = list(kept)
        captured["benign"] = list(benign) if benign is not None else None

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=1, k_per_round=4, realize_fn=_make_realize_fn(),
        validator=MixedVerdictValidator(), epochs_per_round=1,
        finetune_fn=stub_finetune_fn, finetune_with_benign=True,
    )

    assert all(g["_verdict"] == LEAK for g in captured["kept"])
    assert captured["benign"] is not None
    assert len(captured["benign"]) == 2  # 4 samples, alternating -> 2 SAFE
    assert all(g["_verdict"] == SAFE for g in captured["benign"])


def test_finetune_with_benign_missing_vocab_warns_once_and_falls_back(capsys):
    model = StubModel(classes=("SPECTRE_V1",))  # no BENIGN in vocab
    finetune_calls = []

    def stub_finetune_fn(model_, kept, epochs_per_round, benign=None):
        finetune_calls.append({"kept": list(kept), "benign": benign})

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=2, k_per_round=4, realize_fn=_make_realize_fn(),
        validator=MixedVerdictValidator(), epochs_per_round=1,
        finetune_fn=stub_finetune_fn, finetune_with_benign=True,
    )

    out = capsys.readouterr().out
    assert out.count("BENIGN' not in model.vocab.cls_id") == 1  # warned once
    assert len(finetune_calls) == 2  # both rounds still ran, leak-only
    for call in finetune_calls:
        assert call["benign"] is None  # fell back to the flag-off call shape


def test_finetune_with_benign_end_to_end_via_default_finetune(monkeypatch):
    """Full wiring: --finetune-with-benign -> rejection_sample_finetune ->
    default _default_finetune -> gen.generator.train sees a batch that
    encodes the SAFE gadgets under the BENIGN class token."""
    model = _tiny_model(classes=("SPECTRE_V1", "BENIGN"))
    encoded_batches = []

    real_encode_record = generator_module.encode_record

    def fake_train(model_, encoded, epochs, pad_id, lr=3e-3):
        encoded_batches.append(encoded)
        return model_

    monkeypatch.setattr(generator_module, "train", fake_train)

    def realize_fn(tokens, target_class, target_arch, round_idx, sample_idx):
        return {"gadget_id": f"g{sample_idx}", "vuln_class": target_class}

    def model_sample(target_class, target_arch, **kwargs):
        model_sample.n += 1
        return ["mov", "add"]
    model_sample.n = 0
    model.sample = model_sample

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=1, k_per_round=4, realize_fn=realize_fn,
        validator=MixedVerdictValidator(), epochs_per_round=1,
        finetune_with_benign=True,
    )

    assert len(encoded_batches) == 1
    batch = encoded_batches[0]
    # 2 LEAK (SPECTRE_V1) + 2 SAFE (re-encoded BENIGN) records in one batch
    assert len(batch) == 4
    benign_cls_token = model.vocab.cls_id["BENIGN"]
    spectre_cls_token = model.vocab.cls_id["SPECTRE_V1"]
    leading_tokens = [row[0] for row in batch]
    assert leading_tokens.count(spectre_cls_token) == 2
    assert leading_tokens.count(benign_cls_token) == 2
