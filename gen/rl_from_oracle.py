#!/usr/bin/env python3
"""
rl_from_oracle.py — verifier-in-the-loop rejection-sampled fine-tuning (W6 Task 6.4).

The leak oracle (`oracle/validators/*`) gives a ground-truth verdict per
gadget: LEAK / SAFE / UNRUNNABLE / UNSUPPORTED (see `oracle/validators/base.py`
for the `VERDICTS` vocabulary — this module imports the constants rather than
re-declaring strings). We turn that verdict into a scalar reward and use it
as an AlphaCode-style rejection filter: sample a batch from the class/arch
conditioned generator (`gen.generator.CondTransformerLM`), keep only the
gadgets the oracle confirms actually leak, and fine-tune the generator on
just that kept set. Repeating this for several rounds is a rejection-sampled
policy-improvement loop (RL-from-verifier without a differentiable reward —
the oracle is a black-box binary/ternary judge, not a reward model).

Reward mapping (discrete, per the plan — NOT signal-scaled):
    LEAK        -> +1.0
    SAFE        ->  0.0
    UNRUNNABLE  -> -0.2
    UNSUPPORTED -> -0.2   (oracle couldn't model the mechanism; treated like
                            UNRUNNABLE — same "wasted sample" penalty. The
                            plan only names LEAK/SAFE/UNRUNNABLE; UNSUPPORTED
                            is the 4th VERDICTS member and needs *some*
                            mapping to keep oracle_reward total.)

Why discrete and not `result.signal`-scaled: `signal` (Spectector trace
length) is a proxy for gadget complexity, not leak severity — a longer trace
is not a "better" leak. A continuous variant is easy to bolt on
(`reward = 1.0 + alpha * result.signal` for LEAK) but would conflate two
different things under one number; keeping the mapping discrete matches the
plan's exact numbers and keeps the reward interpretable as a rejection
filter (reward > 0  <=>  keep for fine-tuning).

Everything oracle/model-side is injectable (`validator`, `realize_fn`,
`finetune_fn`) so `tests/gen/test_rl_reward.py` needs neither Docker /
Spectector nor a real trained model.

DEFERRED (this task does NOT run it — controller's training batch does):

    rejection_sample_finetune(
        real_model, target_class="SPECTRE_V1", target_arch="x86_64",
        n_rounds=5, k_per_round=200,
        realize_fn=<real gen.decode/gen.realize based realizer>,
        validator=SpectectorValidator(repo_root=ROOT),
        epochs_per_round=3,
    )

>= 3 real rounds against Docker/Spectector, with the per-round yield history
plotted to `gen/w6/rl_yield.md` (plan step 5), is out of scope here.
"""

from __future__ import annotations

import sys
from pathlib import Path
from typing import Callable, Optional

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK, SAFE, UNRUNNABLE, UNSUPPORTED, ValidationResult
from oracle.validators.spectector_validator import SpectectorValidator

# Discrete reward table. Keys are the exact VERDICTS strings from
# oracle/validators/base.py — no hardcoded guesses.
_REWARD = {
    LEAK: 1.0,
    SAFE: 0.0,
    UNRUNNABLE: -0.2,
    UNSUPPORTED: -0.2,
}


def reward_for_result(result: ValidationResult) -> float:
    """Map an oracle ValidationResult's verdict to a scalar reward."""
    try:
        return _REWARD[result.verdict]
    except KeyError:
        raise ValueError(f"unmapped verdict {result.verdict!r}; expected one of {sorted(_REWARD)}")


def oracle_reward(gadget: dict, validator: Optional[object] = None) -> float:
    """Validate `gadget` with `validator` (default: SpectectorValidator rooted
    at the repo root) and return the scalar reward for its verdict."""
    if validator is None:
        validator = SpectectorValidator(repo_root=ROOT)
    result = validator.validate(gadget)
    return reward_for_result(result)


def _default_finetune(model, kept: list, epochs_per_round: int) -> None:
    """Real fine-tune step: re-encode each kept (leak-verdict) gadget's raw
    token sequence with the model's own vocab and run gen.generator.train on
    the kept batch. Only exercised by the deferred real run — the unit test
    injects a stub `finetune_fn` instead."""
    from gen.generator import encode_record, train

    vocab = model.vocab
    encoded = [
        encode_record(g["_tokens"], g["_class"], g["_arch"], vocab, model.max_len)
        for g in kept
    ]
    train(model, encoded, epochs_per_round, vocab.pad_id)


def rejection_sample_finetune(
    model,
    target_class: str,
    target_arch: str,
    n_rounds: int,
    k_per_round: int,
    realize_fn: Callable,
    validator: Optional[object] = None,
    epochs_per_round: int = 1,
    finetune_fn: Optional[Callable] = None,
    sample_kwargs: Optional[dict] = None,
) -> dict:
    """Rejection-sampled fine-tuning loop.

    Each round:
      1. sample `k_per_round` token sequences from `model` (via `model.sample`)
      2. realize each into a gadget dict via `realize_fn(tokens, target_class,
         target_arch, round_idx, sample_idx) -> dict | None` (None = the
         sample failed to realize into a runnable gadget and is dropped
         before oracle validation)
      3. oracle-validate each realized gadget
      4. keep only the LEAK-verdict gadgets
      5. fine-tune `model` on the kept set via `finetune_fn` (default:
         `_default_finetune`, which calls `gen.generator.train`)

    `validator`, `realize_fn`, and `finetune_fn` are all injectable so this
    can run against a stub model with no Docker/Spectector/real-model
    dependency (see tests/gen/test_rl_reward.py).

    Returns `{round_idx: validated_leak_yield}` where yield is the fraction
    of successfully-realized samples that round whose oracle verdict was LEAK.
    """
    if validator is None:
        validator = SpectectorValidator(repo_root=ROOT)
    if finetune_fn is None:
        finetune_fn = _default_finetune
    sample_kwargs = sample_kwargs or {}

    history: dict = {}
    for round_idx in range(n_rounds):
        kept = []
        n_realized = 0
        for sample_idx in range(k_per_round):
            tokens = model.sample(target_class, target_arch, **sample_kwargs)
            gadget = realize_fn(tokens, target_class, target_arch, round_idx, sample_idx)
            if gadget is None:
                continue
            n_realized += 1
            result = validator.validate(gadget)
            gadget["_reward"] = reward_for_result(result)
            gadget["_verdict"] = result.verdict
            gadget["_tokens"] = tokens
            gadget["_class"] = target_class
            gadget["_arch"] = target_arch
            if result.verdict == LEAK:
                kept.append(gadget)

        history[round_idx] = (len(kept) / n_realized) if n_realized else 0.0

        if kept:
            finetune_fn(model, kept, epochs_per_round)

    return history
