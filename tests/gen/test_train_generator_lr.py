"""Tests for gen/train_generator.py's --lr flag (G1): the fine-tune learning
rate must be exposed on the CLI and threaded into gen.generator.train, with
default 3e-3 preserving the previously-hardcoded behavior exactly.

Hermetic: the real TRAIN/TEST corpus load is monkeypatched out (a tiny
synthetic dataset is substituted) and the reference-classifier verification
step is skipped by pointing MLM at a nonexistent path, so this never touches
the real 5.5k-row v54 corpus or spec/mlm.pt. `gen.train_generator.train` (the
name actually called by main(), bound via `from generator import ... train`)
is monkeypatched to a stub that records its `lr` kwarg instead of doing real
training -- no meaningful training happens, only the CLI wiring is checked.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

import gen.train_generator as train_generator


_SYNTH_ROWS = [
    {"label": "SPECTRE_V1", "arch": "x86_64",
     "sequence": ["mov eax, ebx", "add eax, 1", "ret"]},
    {"label": "BENIGN", "arch": "x86_64",
     "sequence": ["mov eax, ebx", "nop", "ret"]},
]


def _run_main(monkeypatch, tmp_path, argv, lr_calls):
    monkeypatch.setattr(train_generator, "load", lambda path: list(_SYNTH_ROWS))
    # Point the reference-classifier artifact at a path that doesn't exist so
    # main() takes its documented "[verify] SKIPPED" early-return path,
    # instead of doing real MLM-embedding + RandomForest work.
    monkeypatch.setattr(train_generator, "MLM", tmp_path / "no_such_mlm.pt")

    def fake_train(model, encoded, epochs, pad_id, lr=3e-3):
        lr_calls.append(lr)
        return model

    monkeypatch.setattr(train_generator, "train", fake_train)
    monkeypatch.setattr(sys, "argv", ["train_generator.py"] + argv)
    train_generator.main()


def test_default_lr_is_3e_minus_3_byte_identical(monkeypatch, tmp_path):
    lr_calls = []
    _run_main(monkeypatch, tmp_path, ["--smoke"], lr_calls)
    assert lr_calls == [3e-3]


def test_overridden_lr_flows_through_to_train(monkeypatch, tmp_path):
    lr_calls = []
    _run_main(monkeypatch, tmp_path, ["--smoke", "--lr", "1e-4"], lr_calls)
    assert lr_calls == [1e-4]
