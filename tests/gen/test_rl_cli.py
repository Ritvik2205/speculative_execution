"""Tests for gen/rl_from_oracle.py's CLI layer (Step 4 of
docs/NEXT_STEPS_PLAN_2026-09-10.md): the real-wiring `main()` is not
exercised here (it needs Docker + a real generator checkpoint and is meant
to run on the i5-8300H box) -- these tests exercise the core loop
(`run_oracle_rl`), the yield-markdown writer (`_write_yield_md`), the
Docker-availability guard (`_docker_unavailable_reason`), and the default
class set (`_default_classes`), all with stubs. No Docker, no Spectector, no
real trained generator.
"""
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK, SAFE, ValidationResult
from gen.rl_from_oracle import (
    _default_classes,
    _docker_unavailable_reason,
    _write_yield_md,
    run_oracle_rl,
)


# ---------------------------------------------------------------------------
# stubs (mirrors tests/gen/test_rl_reward.py's pattern: no Docker, no real
# model -- everything injectable)
# ---------------------------------------------------------------------------

class StubModel:
    def __init__(self):
        self.n_calls = 0

    def sample(self, target_class, target_arch, **kwargs):
        self.n_calls += 1
        return [f"TOK_{self.n_calls}", "mov", "cmp"]


class AlternatingValidator:
    """Even global sample index -> LEAK, odd -> SAFE. Deterministic, no
    Docker/Spectector involved."""

    def __init__(self):
        self.calls = []

    def validate(self, gadget):
        self.calls.append(gadget)
        verdict = LEAK if gadget["_idx"] % 2 == 0 else SAFE
        return ValidationResult("fake", gadget["gadget_id"], gadget["vuln_class"],
                                verdict, 0.0, {})


def make_realize_fn_factory():
    """Returns a realize_fn_factory(cls) -> realize_fn, tagging every
    realized gadget with a global counter so AlternatingValidator can decide
    LEAK vs SAFE deterministically -- same shape the real
    gen.decode-backed `_build_realize_fn` produces (gadget_id, vuln_class,
    plus bookkeeping), minus any real assembly/Spectector-source work."""
    counter = {"n": 0}

    def factory(cls_short):
        def realize_fn(tokens, target_class, target_arch, round_idx, sample_idx):
            idx = counter["n"]
            counter["n"] += 1
            return {
                "gadget_id": f"g_{cls_short}_r{round_idx}_s{sample_idx}",
                "vuln_class": cls_short,
                "_idx": idx,
            }
        return realize_fn

    return factory


# ---------------------------------------------------------------------------
# run_oracle_rl: core loop
# ---------------------------------------------------------------------------

def test_run_oracle_rl_writes_yield_md_with_right_shape(tmp_path):
    model = StubModel()
    validator = AlternatingValidator()
    factory = make_realize_fn_factory()
    out_path = tmp_path / "rl_yield.md"

    history = run_oracle_rl(
        model, classes=["SPECTRE_V1", "SPECTRE_V4"], arch="x86_64",
        rounds=3, k_per_round=4, realize_fn_factory=factory,
        validator=validator, out_path=out_path,
        finetune_fn=lambda *a, **k: None,
    )

    # Right shape: one sub-dict per class, one yield value per round.
    assert set(history.keys()) == {"SPECTRE_V1", "SPECTRE_V4"}
    for cls_history in history.values():
        assert set(cls_history.keys()) == {0, 1, 2}
        # exactly half of every round's 4 samples are even-indexed -> LEAK
        for rnd in range(3):
            assert cls_history[rnd] == 0.5

    assert out_path.exists()
    text = out_path.read_text()
    assert "| class | round | validated-leak yield |" in text
    assert "| SPECTRE_V1 | 0 | 0.500 |" in text
    assert "| SPECTRE_V4 | 2 | 0.500 |" in text
    # one table row per (class, round) = 2 classes * 3 rounds
    assert text.count("\n| ") == 2 * 3 + 1  # +1 for the separator row


def test_run_oracle_rl_only_keeps_leak_verdict_gadgets_for_finetune():
    model = StubModel()
    validator = AlternatingValidator()
    factory = make_realize_fn_factory()
    finetune_calls = []

    def stub_finetune_fn(model_, kept, epochs_per_round):
        finetune_calls.append(list(kept))

    import tempfile
    with tempfile.TemporaryDirectory() as d:
        run_oracle_rl(
            model, classes=["SPECTRE_V1"], arch="x86_64",
            rounds=2, k_per_round=6, realize_fn_factory=factory,
            validator=validator, out_path=Path(d) / "y.md",
            finetune_fn=stub_finetune_fn,
        )

    assert len(finetune_calls) == 2  # once per round (every round has kept gadgets)
    for kept in finetune_calls:
        assert all(g["_verdict"] == LEAK for g in kept)
        assert all(g["_idx"] % 2 == 0 for g in kept)
        assert all(g["_verdict"] != SAFE for g in kept)


def test_run_oracle_rl_class_to_vocab_used_for_sample_but_not_display():
    """The vocab-aliased name (e.g. BHI -> BRANCH_HISTORY_INJECTION) must
    reach model.sample, but the yield history / markdown must stay keyed by
    the short display class the caller passed in."""
    seen_sample_classes = []

    class RecordingModel(StubModel):
        def sample(self, target_class, target_arch, **kwargs):
            seen_sample_classes.append(target_class)
            return super().sample(target_class, target_arch, **kwargs)

    model = RecordingModel()
    validator = AlternatingValidator()
    factory = make_realize_fn_factory()

    import tempfile
    with tempfile.TemporaryDirectory() as d:
        history = run_oracle_rl(
            model, classes=["BHI"], arch="x86_64",
            rounds=1, k_per_round=2, realize_fn_factory=factory,
            validator=validator, out_path=Path(d) / "y.md",
            finetune_fn=lambda *a, **k: None,
            class_to_vocab=lambda c: {"BHI": "BRANCH_HISTORY_INJECTION"}.get(c, c),
        )

    assert set(history.keys()) == {"BHI"}  # display form, not the vocab alias
    assert seen_sample_classes == ["BRANCH_HISTORY_INJECTION"] * 2  # vocab form


# ---------------------------------------------------------------------------
# _write_yield_md
# ---------------------------------------------------------------------------

def test_write_yield_md_shape(tmp_path):
    out_path = tmp_path / "sub" / "yield.md"  # parent dir must be created
    _write_yield_md(out_path, {"SPECTRE_V1": {0: 0.1, 1: 0.25}},
                    {"gen": "gen/generator.pt", "arch": "x86_64", "rounds": 2, "k": 10})
    text = out_path.read_text()
    assert "generator" in text and "generator.pt" in text
    assert "rounds: 2" in text and "k/round: 10" in text
    assert "| SPECTRE_V1 | 0 | 0.100 |" in text
    assert "| SPECTRE_V1 | 1 | 0.250 |" in text


# ---------------------------------------------------------------------------
# _default_classes
# ---------------------------------------------------------------------------

def test_default_classes_excludes_benign_and_non_adjudicable():
    classes = _default_classes()
    assert "BENIGN" not in classes
    assert "SPECTRE_V1" in classes  # the only "yes" (fully adjudicable) class
    # "partial"/"no" adjudicable classes are excluded by design (see
    # docstring: they can't earn a genuine LEAK verdict from Spectector).
    assert "BHI" not in classes
    assert "L1TF" not in classes


# ---------------------------------------------------------------------------
# _docker_unavailable_reason
# ---------------------------------------------------------------------------

def test_docker_missing_from_path(monkeypatch):
    import gen.rl_from_oracle as rl

    monkeypatch.setattr(rl.shutil, "which", lambda name: None)
    reason = rl._docker_unavailable_reason()
    assert reason is not None
    assert "docker not found" in reason.lower()


def test_docker_present_but_image_not_built(monkeypatch):
    import gen.rl_from_oracle as rl

    monkeypatch.setattr(rl.shutil, "which", lambda name: "/usr/bin/docker")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(cmd, returncode=1, stdout="", stderr="no such image")

    monkeypatch.setattr(rl.subprocess, "run", fake_run)
    reason = rl._docker_unavailable_reason()
    assert reason is not None
    assert "build_spectector.sh" in reason
    assert rl._SPECTECTOR_IMAGE in reason


def test_docker_and_image_both_available(monkeypatch):
    import gen.rl_from_oracle as rl

    monkeypatch.setattr(rl.shutil, "which", lambda name: "/usr/bin/docker")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(cmd, returncode=0, stdout="[{}]", stderr="")

    monkeypatch.setattr(rl.subprocess, "run", fake_run)
    assert rl._docker_unavailable_reason() is None


def test_docker_query_raises_is_reported_not_crashed(monkeypatch):
    import gen.rl_from_oracle as rl

    monkeypatch.setattr(rl.shutil, "which", lambda name: "/usr/bin/docker")

    def fake_run(cmd, **kwargs):
        raise FileNotFoundError("docker daemon socket missing")

    monkeypatch.setattr(rl.subprocess, "run", fake_run)
    reason = rl._docker_unavailable_reason()
    assert reason is not None
    assert "could not be queried" in reason
