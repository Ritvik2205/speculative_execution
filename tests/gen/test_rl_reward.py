"""Tests for gen/rl_from_oracle.py (W6 Task 6.4 — verifier-in-the-loop).

Pure unit tests: no Docker, no Spectector, no real trained generator. The
oracle and the generator are both fully stubbed via the injectable
`validator` / `realize_fn` / `finetune_fn` parameters."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK, SAFE, UNRUNNABLE, UNSUPPORTED, ValidationResult
from gen.rl_from_oracle import oracle_reward, reward_for_result, rejection_sample_finetune


class FakeValidator:
    """Returns a fixed ValidationResult regardless of gadget content."""

    def __init__(self, verdict, signal=0.0):
        self.verdict = verdict
        self.signal = signal
        self.calls = []

    def validate(self, gadget):
        self.calls.append(gadget)
        return ValidationResult(
            validator="fake", gadget_id=gadget.get("gadget_id", "g"),
            vuln_class=gadget.get("vuln_class", "SPECTRE_V1"),
            verdict=self.verdict, signal=self.signal, details={},
        )


# ---------------------------------------------------------------------------
# oracle_reward / reward_for_result mapping
# ---------------------------------------------------------------------------

def test_leak_verdict_maps_to_plus_one():
    v = FakeValidator(LEAK)
    r = oracle_reward({"gadget_id": "g1", "vuln_class": "SPECTRE_V1"}, validator=v)
    assert r == 1.0
    assert len(v.calls) == 1


def test_safe_verdict_maps_to_zero():
    v = FakeValidator(SAFE)
    r = oracle_reward({"gadget_id": "g2", "vuln_class": "SPECTRE_V1"}, validator=v)
    assert r == 0.0


def test_unrunnable_verdict_maps_to_negative_point_two():
    v = FakeValidator(UNRUNNABLE)
    r = oracle_reward({"gadget_id": "g3", "vuln_class": "SPECTRE_V1"}, validator=v)
    assert r == -0.2


def test_unsupported_verdict_also_penalized():
    v = FakeValidator(UNSUPPORTED)
    r = oracle_reward({"gadget_id": "g4", "vuln_class": "SPECTRE_V1"}, validator=v)
    assert r == -0.2


def test_reward_for_result_direct():
    res = ValidationResult("fake", "g5", "SPECTRE_V1", LEAK, 0.0, {})
    assert reward_for_result(res) == 1.0


def test_signal_does_not_change_the_discrete_mapping():
    # Documented design choice: reward is discrete, not scaled by `signal`.
    v_low = FakeValidator(LEAK, signal=0.1)
    v_high = FakeValidator(LEAK, signal=99.9)
    r_low = oracle_reward({"gadget_id": "g6"}, validator=v_low)
    r_high = oracle_reward({"gadget_id": "g7"}, validator=v_high)
    assert r_low == r_high == 1.0


# ---------------------------------------------------------------------------
# rejection_sample_finetune
# ---------------------------------------------------------------------------

class StubModel:
    """Fake generator: sample() returns a deterministic token list tagged
    with a monotonically increasing counter so the stub validator can vary
    its verdict per sample."""

    def __init__(self):
        self.n_calls = 0

    def sample(self, target_class, target_arch, **kwargs):
        self.n_calls += 1
        return [f"TOK_{self.n_calls}", "mov", "cmp"]


class AlternatingValidator:
    """Deterministic stand-in oracle: even-indexed gadget_ids leak, odd ones
    are safe. No Docker/Spectector involved."""

    def __init__(self):
        self.calls = []

    def validate(self, gadget):
        self.calls.append(gadget)
        idx = gadget["_idx"]
        verdict = LEAK if idx % 2 == 0 else SAFE
        return ValidationResult("fake", gadget["gadget_id"], gadget["vuln_class"],
                                verdict, 0.0, {})


def make_realize_fn():
    """realize_fn(tokens, target_class, target_arch, round_idx, sample_idx)
    -> gadget dict. Tags each gadget with a global index so the
    AlternatingValidator can decide LEAK vs SAFE deterministically."""
    counter = {"n": 0}

    def realize_fn(tokens, target_class, target_arch, round_idx, sample_idx):
        idx = counter["n"]
        counter["n"] += 1
        return {
            "gadget_id": f"g_r{round_idx}_s{sample_idx}",
            "vuln_class": target_class,
            "_idx": idx,
            "tokens": list(tokens),
        }

    return realize_fn


def test_rejection_sample_finetune_runs_multiple_rounds_and_returns_yield_history():
    model = StubModel()
    validator = AlternatingValidator()
    realize_fn = make_realize_fn()
    finetune_calls = []

    def stub_finetune_fn(model_, kept, epochs_per_round):
        finetune_calls.append((list(kept), epochs_per_round))

    history = rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=3, k_per_round=4,
        realize_fn=realize_fn, validator=validator,
        epochs_per_round=2, finetune_fn=stub_finetune_fn,
    )

    # Right shape: one yield value per round.
    assert set(history.keys()) == {0, 1, 2}
    # Exactly half of every round's 4 samples are even-indexed -> LEAK.
    for rnd in range(3):
        assert history[rnd] == 0.5

    # Sampled k_per_round times per round.
    assert model.n_calls == 3 * 4
    # Oracle called once per realized gadget.
    assert len(validator.calls) == 3 * 4
    # Fine-tune invoked once per round (kept set non-empty every round).
    assert len(finetune_calls) == 3
    for epochs in (c[1] for c in finetune_calls):
        assert epochs == 2


def test_finetune_set_equals_leak_verdict_subset():
    model = StubModel()
    validator = AlternatingValidator()
    realize_fn = make_realize_fn()
    finetune_calls = []

    def stub_finetune_fn(model_, kept, epochs_per_round):
        finetune_calls.append(kept)

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=2, k_per_round=6,
        realize_fn=realize_fn, validator=validator,
        epochs_per_round=1, finetune_fn=stub_finetune_fn,
    )

    for kept in finetune_calls:
        # Every kept gadget really is the LEAK verdict...
        assert all(g["_verdict"] == LEAK for g in kept)
        assert all(g["_idx"] % 2 == 0 for g in kept)
        # ...and nothing SAFE leaked into the fine-tune set.
        assert all(g["_verdict"] != SAFE for g in kept)


def test_no_finetune_call_when_nothing_leaks():
    model = StubModel()
    validator = FakeValidator(SAFE)
    realize_fn = make_realize_fn()
    finetune_calls = []

    def stub_finetune_fn(model_, kept, epochs_per_round):
        finetune_calls.append(kept)

    def wrapped_realize(tokens, target_class, target_arch, round_idx, sample_idx):
        g = realize_fn(tokens, target_class, target_arch, round_idx, sample_idx)
        return g

    history = rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=2, k_per_round=3,
        realize_fn=wrapped_realize, validator=validator,
        epochs_per_round=1, finetune_fn=stub_finetune_fn,
    )

    assert history == {0: 0.0, 1: 0.0}
    assert finetune_calls == []


def test_realize_fn_returning_none_is_dropped_before_oracle_call():
    model = StubModel()
    validator = AlternatingValidator()

    def realize_fn_half_fail(tokens, target_class, target_arch, round_idx, sample_idx):
        if sample_idx % 2 == 1:
            return None  # simulate an unrealizable sample (dropped pre-oracle)
        return {"gadget_id": f"g{sample_idx}", "vuln_class": target_class, "_idx": sample_idx}

    history = rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=1, k_per_round=4,
        realize_fn=realize_fn_half_fail, validator=validator,
        epochs_per_round=1, finetune_fn=lambda *a, **k: None,
    )

    # sample_idx in {0, 2} realized (both even -> LEAK); {1, 3} dropped pre-oracle.
    assert len(validator.calls) == 2
    assert history[0] == 1.0
