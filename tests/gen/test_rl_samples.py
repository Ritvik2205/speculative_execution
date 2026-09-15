"""Tests for the RL-loop sample-persistence instrumentation added on top of
gen/rl_from_oracle.py (diversity-audit task): gadget_id uniqueness across
rounds/samples (`_build_realize_fn`) and the incremental samples JSONL
sidecar (`rejection_sample_finetune` / `run_oracle_rl`'s `samples_out`).

Pure unit tests -- no Docker, no Spectector, no real trained generator, no
torch. Follows the same stub pattern as tests/gen/test_rl_cli.py and
tests/gen/test_rl_reward.py.
"""
import json
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK, SAFE, ValidationResult
from gen.rl_from_oracle import _build_realize_fn, rejection_sample_finetune, run_oracle_rl


# ---------------------------------------------------------------------------
# stubs for _build_realize_fn's collaborators (realizer / spec_gadgets /
# build_gen_body) -- no clang, no real spec engine.
# ---------------------------------------------------------------------------

class StubRealizer:
    """Passes tokens through unchanged (the real Realizer would drop
    non-assembling instructions; not exercised here)."""

    def realize_sequence(self, tokens):
        return list(tokens)


class StubSpecGadgets:
    def render_spec(self, cls_short, fenced, gen_body):
        return f"// {cls_short}\n{gen_body}\n"


def stub_build_gen_body(concrete, cls_short, arch, is_invisispec=False):
    return "\n".join(concrete)


def _make_realize_fn(tmp_path, cls_short="SPECTRE_V1", arch="x86_64"):
    return _build_realize_fn(
        cls_short, arch, StubRealizer(), StubSpecGadgets(), stub_build_gen_body,
        out_dir=tmp_path, repo_root=tmp_path,
    )


# ---------------------------------------------------------------------------
# gadget_id uniqueness (Deliverable 1, part 1)
# ---------------------------------------------------------------------------

def test_gadget_id_differs_for_different_content_same_round(tmp_path):
    realize_fn = _make_realize_fn(tmp_path)
    g1 = realize_fn(["mov", "eax"], "SPECTRE_V1", "x86_64", round_idx=0, sample_idx=0)
    g2 = realize_fn(["cmp", "ebx"], "SPECTRE_V1", "x86_64", round_idx=0, sample_idx=1)

    assert g1["gadget_id"] != g2["gadget_id"]
    # both files persisted -- neither overwrote the other
    assert Path(tmp_path / f"gen_spec_{g1['gadget_id']}.c").exists()
    assert Path(tmp_path / f"gen_spec_{g2['gadget_id']}.c").exists()


def test_gadget_id_differs_for_same_content_different_round(tmp_path):
    realize_fn = _make_realize_fn(tmp_path)
    tokens = ["mov", "eax", "cmp", "ebx"]
    g1 = realize_fn(tokens, "SPECTRE_V1", "x86_64", round_idx=0, sample_idx=0)
    g2 = realize_fn(tokens, "SPECTRE_V1", "x86_64", round_idx=1, sample_idx=0)

    assert g1["gadget_id"] != g2["gadget_id"]
    # round is visible in the id, not just a hidden hash collision-avoider
    assert "r0" in g1["gadget_id"]
    assert "r1" in g2["gadget_id"]
    assert Path(tmp_path / f"gen_spec_{g1['gadget_id']}.c").exists()
    assert Path(tmp_path / f"gen_spec_{g2['gadget_id']}.c").exists()


def test_gadget_id_differs_for_same_round_different_sample_index_same_content(tmp_path):
    """Even same content + same round (shouldn't normally happen, sample_idx
    differs) must not collide -- sample_idx is also part of the id."""
    realize_fn = _make_realize_fn(tmp_path)
    tokens = ["mov", "eax", "cmp", "ebx"]
    g1 = realize_fn(tokens, "SPECTRE_V1", "x86_64", round_idx=0, sample_idx=0)
    g2 = realize_fn(tokens, "SPECTRE_V1", "x86_64", round_idx=0, sample_idx=1)
    assert g1["gadget_id"] != g2["gadget_id"]


def test_realize_fn_includes_realized_asm_for_downstream_recording(tmp_path):
    realize_fn = _make_realize_fn(tmp_path)
    tokens = ["mov", "eax", "cmp", "ebx"]
    g = realize_fn(tokens, "SPECTRE_V1", "x86_64", round_idx=0, sample_idx=0)
    assert g["_realized_asm"] == tokens


# ---------------------------------------------------------------------------
# samples JSONL sidecar (Deliverable 1, part 2)
# ---------------------------------------------------------------------------

class StubModel:
    def __init__(self):
        self.n_calls = 0

    def sample(self, target_class, target_arch, **kwargs):
        self.n_calls += 1
        # vary content so dedup in the analyzer has something to chew on
        return ["mov", f"r{self.n_calls % 3}", "cmp", "ebx"]


class AlternatingValidator:
    def __init__(self):
        self.n = 0

    def validate(self, gadget):
        verdict = LEAK if self.n % 2 == 0 else SAFE
        self.n += 1
        return ValidationResult("fake", gadget["gadget_id"], gadget["vuln_class"],
                                 verdict, 0.0, {})


def test_rejection_sample_finetune_writes_samples_jsonl_with_required_fields(tmp_path):
    model = StubModel()
    validator = AlternatingValidator()
    realize_fn = _make_realize_fn(tmp_path, cls_short="SPECTRE_V1")
    samples_out = tmp_path / "samples.jsonl"

    rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=2, k_per_round=3, realize_fn=realize_fn, validator=validator,
        finetune_fn=lambda *a, **k: None, samples_out=samples_out,
    )

    lines = samples_out.read_text().strip().splitlines()
    assert len(lines) == 2 * 3  # every sample realizes successfully here

    records = [json.loads(l) for l in lines]
    required = {"class", "round", "index", "gadget_id", "token_sequence",
                "realized_asm", "verdict", "reward"}
    for r in records:
        assert required.issubset(r.keys())
        assert r["class"] == "SPECTRE_V1"
        assert r["verdict"] in (LEAK, SAFE)
        assert isinstance(r["token_sequence"], list)

    rounds_seen = sorted({r["round"] for r in records})
    assert rounds_seen == [0, 1]


def test_rejection_sample_finetune_samples_jsonl_written_incrementally(tmp_path):
    """A crash mid-run must not lose already-validated samples: each record
    is appended+flushed as it happens, not buffered until the end."""
    model = StubModel()
    samples_out = tmp_path / "samples.jsonl"

    class CrashingValidator:
        def __init__(self):
            self.n = 0

        def validate(self, gadget):
            self.n += 1
            if self.n == 3:
                raise RuntimeError("simulated crash")
            return ValidationResult("fake", gadget["gadget_id"], gadget["vuln_class"],
                                     LEAK, 0.0, {})

    realize_fn = _make_realize_fn(tmp_path, cls_short="SPECTRE_V1")

    with pytest.raises(RuntimeError):
        rejection_sample_finetune(
            model, target_class="SPECTRE_V1", target_arch="x86_64",
            n_rounds=1, k_per_round=5, realize_fn=realize_fn,
            validator=CrashingValidator(),
            finetune_fn=lambda *a, **k: None, samples_out=samples_out,
        )

    # the 2 samples validated before the 3rd (crashing) call must be on disk
    assert samples_out.exists()
    lines = samples_out.read_text().strip().splitlines()
    assert len(lines) == 2


def test_run_oracle_rl_samples_out_threaded_through_and_resets_per_run(tmp_path):
    model = StubModel()
    validator = AlternatingValidator()

    counter = {"n": 0}

    def factory(cls_short):
        realize_fn = _make_realize_fn(tmp_path, cls_short=cls_short)
        return realize_fn

    samples_out = tmp_path / "samples.jsonl"
    samples_out.write_text("stale line from a previous run\n")

    run_oracle_rl(
        model, classes=["SPECTRE_V1"], arch="x86_64", rounds=2, k_per_round=2,
        realize_fn_factory=factory, validator=validator,
        out_path=tmp_path / "yield.md", finetune_fn=lambda *a, **k: None,
        samples_out=samples_out,
    )

    lines = samples_out.read_text().strip().splitlines()
    # stale content from a prior run must be gone (fresh file this run)
    assert "stale line" not in samples_out.read_text()
    for l in lines:
        json.loads(l)  # every line is valid JSON, not the stale text
    assert len(lines) == 2 * 2


def test_samples_out_none_is_a_no_op_default(tmp_path):
    """Default behaviour (no samples_out) must be unchanged: no file
    written, existing rl_yield.md behaviour untouched."""
    model = StubModel()
    validator = AlternatingValidator()
    realize_fn = _make_realize_fn(tmp_path, cls_short="SPECTRE_V1")

    history = rejection_sample_finetune(
        model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=1, k_per_round=2, realize_fn=realize_fn, validator=validator,
        finetune_fn=lambda *a, **k: None,
    )
    assert 0 in history
    assert not (tmp_path / "rl_samples.jsonl").exists()
