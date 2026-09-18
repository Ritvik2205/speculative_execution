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

import argparse
import hashlib
import json
import os
import shutil
import subprocess
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


def _append_sample_record(path, record: dict) -> None:
    """Append one JSON line to `path`, creating parent dirs as needed and
    flushing immediately so a crashed/interrupted run still leaves whatever
    was recorded before the crash on disk (see rejection_sample_finetune's
    `samples_out`)."""
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "a") as f:
        f.write(json.dumps(record) + "\n")
        f.flush()


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
    samples_out: Optional[object] = None,
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

    If `samples_out` is given, every realized+validated sample is appended
    (one JSON line each, flushed immediately -- see `_append_sample_record`)
    with `{class, round, index, gadget_id, token_sequence, realized_asm,
    verdict, reward}`, so a diversity audit (gen/analyze_rl_diversity.py) can
    later tell genuine discovery from mode collapse. This is pure additive
    instrumentation -- the returned yield history and finetune behaviour are
    unchanged whether or not `samples_out` is set. `samples_out` is NOT
    truncated here (that's run_oracle_rl's job, once per whole run) -- a
    direct caller of this function is expected to manage the file's
    lifecycle itself if it wants a fresh file per call.

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
            if samples_out is not None:
                _append_sample_record(samples_out, {
                    "class": gadget.get("vuln_class", target_class),
                    "round": round_idx,
                    "index": sample_idx,
                    "gadget_id": gadget.get("gadget_id"),
                    "token_sequence": tokens,
                    "realized_asm": gadget.get("_realized_asm"),
                    "verdict": result.verdict,
                    "reward": gadget["_reward"],
                })
            if result.verdict == LEAK:
                kept.append(gadget)

        history[round_idx] = (len(kept) / n_realized) if n_realized else 0.0

        if kept:
            finetune_fn(model, kept, epochs_per_round)

    return history


# ===========================================================================
# CLI (Step 4 / NEXT_STEPS_PLAN_2026-09-10.md): real generator + realize.py +
# SpectectorValidator wiring. Docker on the i5/Mac; Apptainer + .sif on the
# Teaching/ICF cluster (see oracle/apptainer/pull_spectector.sh).
# ===========================================================================

# Exact Docker build command a human runs if the image is missing (mirrors
# oracle/docker/build_spectector.sh, which the SpectectorValidator's
# "specdiscover-spectector:pinned" image name is pinned to).
_SPECTECTOR_IMAGE = "specdiscover-spectector:pinned"
_SPECTECTOR_BUILD_CMD = "bash oracle/docker/build_spectector.sh"

# Vocab alias the trained gen/generator.pt checkpoint uses for BHI (see
# gen/decode.py's _GEN_VOCAB_ALIAS for the full rationale: the checkpoint
# spells the class out in full while every other table in this codebase
# uses the short form).
_GEN_VOCAB_ALIAS = {"BHI": "BRANCH_HISTORY_INJECTION"}


def _docker_unavailable_reason() -> Optional[str]:
    """None if a usable Spectector container runtime is available; otherwise a
    human-readable reason plus remediation. Never raises.

    Respects SPECEXEC_CONTAINER_RUNTIME (docker default; apptainer/singularity
    on the cluster). Matches oracle/spectector_oracle._container_cmd."""
    runtime = os.environ.get("SPECEXEC_CONTAINER_RUNTIME", "docker").lower()
    if runtime in ("apptainer", "singularity"):
        if not shutil.which(runtime):
            return (f"{runtime} not found on PATH. On the Teaching/ICF cluster "
                    f"run from a compute node where apptainer is installed.")
        sif = os.environ.get("SPECEXEC_SPECTECTOR_SIF")
        if not sif:
            return ("SPECEXEC_CONTAINER_RUNTIME=%s requires SPECEXEC_SPECTECTOR_SIF "
                    "to point at the pulled .sif. Pull it with:\n"
                    "    GHCR_OWNER=<user> bash oracle/apptainer/pull_spectector.sh\n"
                    "then:\n"
                    "    export SPECEXEC_CONTAINER_RUNTIME=apptainer\n"
                    "    export SPECEXEC_SPECTECTOR_SIF=/disk/scratch/$USER/spectector.sif"
                    % runtime)
        if not Path(sif).is_file():
            return (f"SPECEXEC_SPECTECTOR_SIF={sif!r} does not exist. "
                    f"Re-run oracle/apptainer/pull_spectector.sh.")
        return None
    if not shutil.which("docker"):
        return ("docker not found on PATH. For Docker hosts (i5/Mac), install Docker "
                "and build the pinned image. On the Teaching/ICF cluster (no Docker), "
                "use Apptainer instead:\n"
                "    export SPECEXEC_CONTAINER_RUNTIME=apptainer\n"
                "    export SPECEXEC_SPECTECTOR_SIF=/disk/scratch/$USER/spectector.sif\n"
                "    # after: GHCR_OWNER=... bash oracle/apptainer/pull_spectector.sh")
    try:
        r = subprocess.run(["docker", "image", "inspect", _SPECTECTOR_IMAGE],
                            capture_output=True, text=True, timeout=15)
    except Exception as e:
        return (f"docker is on PATH but could not be queried ({e!r}). "
                f"Is the docker daemon running?")
    if r.returncode != 0:
        return (f"docker is available but the Spectector image {_SPECTECTOR_IMAGE!r} is "
                f"not built on this host. Run:\n    {_SPECTECTOR_BUILD_CMD}\nthen re-run.")
    return None


def _write_yield_md(out_path, all_history: dict, meta: dict) -> None:
    """Write `all_history` ({class: {round_idx: yield}}) as a markdown table
    to `out_path`. `meta` carries run parameters (generator ckpt, arch,
    rounds, k) printed in the header for provenance."""
    lines = [
        "# Oracle-RL validated-leak yield",
        "",
        f"- generator: `{meta.get('gen', '?')}`",
        f"- arch: `{meta.get('arch', '?')}`",
        f"- rounds: {meta.get('rounds', '?')}  k/round: {meta.get('k', '?')}",
        "",
        "| class | round | validated-leak yield |",
        "|---|---|---|",
    ]
    for cls in all_history:
        history = all_history[cls]
        for round_idx in sorted(history):
            lines.append(f"| {cls} | {round_idx} | {history[round_idx]:.3f} |")
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines) + "\n")


def run_oracle_rl(
    model,
    classes: list,
    arch: str,
    rounds: int,
    k_per_round: int,
    realize_fn_factory: Callable[[str], Callable],
    validator,
    out_path,
    epochs_per_round: int = 1,
    sample_kwargs: Optional[dict] = None,
    finetune_fn: Optional[Callable] = None,
    class_to_vocab: Optional[Callable[[str], str]] = None,
    meta: Optional[dict] = None,
    samples_out: Optional[object] = None,
) -> dict:
    """Core oracle-RL loop, factored out of `main()` so it's directly unit-
    testable with a stub model/validator/realize_fn_factory (no Docker, no
    real generator load — see tests/gen/test_rl_cli.py). `main()` is a thin
    wrapper that does the Docker-availability guard and builds the REAL
    generator/realizer/validator/realize_fn before calling this.

    `classes` are the short display-form class names (e.g. "BHI", not the
    checkpoint's "BRANCH_HISTORY_INJECTION" vocab spelling); `class_to_vocab`
    (default identity) maps a class to whatever `model.sample` / the
    checkpoint vocab actually expects — main() passes the real
    `_GEN_VOCAB_ALIAS` mapping, tests use the default identity.
    `realize_fn_factory(cls)` builds the per-class `realize_fn` passed to
    `rejection_sample_finetune` (the short-form `cls` is captured in the
    closure, independent of what `class_to_vocab` renamed it to for
    `model.sample`).

    If `samples_out` is given, it is truncated once up front (so this run's
    samples aren't mixed in with a stale file from a previous run) and then
    every class's `rejection_sample_finetune` call appends its
    realized+validated samples to it incrementally -- see that function's
    docstring for the record schema. This is additive instrumentation for
    gen/analyze_rl_diversity.py; it does not change the yield history or
    finetune behaviour.

    Writes `out_path` as a markdown yield table (see `_write_yield_md`) and
    returns `{class: {round_idx: validated_leak_yield}}`.
    """
    class_to_vocab = class_to_vocab or (lambda c: c)
    sample_kwargs = sample_kwargs or {}

    if samples_out is not None:
        samples_out = Path(samples_out)
        samples_out.parent.mkdir(parents=True, exist_ok=True)
        samples_out.write_text("")  # fresh file for this run

    all_history: dict = {}
    for cls in classes:
        realize_fn = realize_fn_factory(cls)
        history = rejection_sample_finetune(
            model,
            target_class=class_to_vocab(cls),
            target_arch=arch,
            n_rounds=rounds,
            k_per_round=k_per_round,
            realize_fn=realize_fn,
            validator=validator,
            epochs_per_round=epochs_per_round,
            finetune_fn=finetune_fn,
            sample_kwargs=sample_kwargs,
            samples_out=samples_out,
        )
        all_history[cls] = history

    run_meta = dict(meta or {})
    run_meta.setdefault("arch", arch)
    run_meta.setdefault("rounds", rounds)
    run_meta.setdefault("k", k_per_round)
    _write_yield_md(out_path, all_history, run_meta)
    return all_history


def _default_classes() -> list:
    """Default target-class set: the Spectector-adjudicable classes (per
    gen/synth/params.py's ADJUDICABLE table, ADJUDICABLE == "yes"), excluding
    BENIGN. Per gen/synth/spectector_gadgets.py's honesty note, Spectector's
    published model only covers conditional-branch (PHT) speculation, so
    only these classes can genuinely earn a LEAK verdict rather than a
    structurally-expected SAFE/UNSUPPORTED — running the RL loop against a
    class Spectector can't adjudicate would just burn samples at 0.0 yield
    forever. --class overrides this."""
    from gen.synth.params import ADJUDICABLE
    return [c for c, v in ADJUDICABLE.items() if v == "yes" and c != "BENIGN"]


def _build_realize_fn(cls_short: str, arch: str, realizer, spec_gadgets,
                       build_gen_body, out_dir: Path, repo_root: Path) -> Callable:
    """Build the real `realize_fn(tokens, target_class, target_arch,
    round_idx, sample_idx) -> gadget|None` for one class: sample tokens ->
    Realizer.realize_sequence (applies the P3b assembler-validity gate,
    dropping instructions that don't assemble) -> splice into the Spectector
    victim template -> write the .c source -> gadget dict the
    SpectectorValidator accepts. Mirrors gen/decode.py's --validate path.
    `cls_short`/`arch` are closed over rather than read from the
    target_class/target_arch args realize_fn receives, since those may be
    the checkpoint's aliased vocab spelling (e.g. BHI's
    BRANCH_HISTORY_INJECTION) — see run_oracle_rl's class_to_vocab.

    gadget_id includes a short content hash of the sampled token sequence in
    addition to round_idx/sample_idx: round_idx/sample_idx alone are unique
    *within one script invocation*, but re-running the CLI resets both
    counters to 0, so a second run would silently overwrite the first run's
    .c files in `out_dir` (oracle/build/, gitignored) without the hash. The
    hash does not replace round_idx in the id -- two samples with identical
    content in different rounds must still get different ids (the round is
    real information, not just a collision-avoider) -- so round_idx stays
    explicit in the format string."""
    out_dir.mkdir(parents=True, exist_ok=True)

    def realize_fn(tokens, target_class, target_arch, round_idx, sample_idx):
        concrete = realizer.realize_sequence(tokens)
        if len(concrete) < 2:
            return None  # nothing left to splice a secret through
        try:
            gen_body = build_gen_body(concrete, cls_short, arch, is_invisispec=False)
        except Exception:
            return None  # unrealizable sample -- dropped pre-oracle per the contract
        spec_c = spec_gadgets.render_spec(cls_short, fenced=False, gen_body=gen_body)
        content_hash = hashlib.sha1(repr(tokens).encode()).hexdigest()[:8]
        gadget_id = f"rl_{cls_short}_{arch}_r{round_idx}_s{sample_idx}_{content_hash}"
        spec_path = out_dir / f"gen_spec_{gadget_id}.c"
        spec_path.write_text(spec_c)
        return {
            "gadget_id": gadget_id,
            "vuln_class": cls_short,
            "spectector_source": str(spec_path.relative_to(repo_root)),
            "adjudicable": "yes",
            "_realized_asm": concrete,
        }

    return realize_fn


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(
        description="Oracle-RL loop (W6 Task 6.4): sample from the class-conditioned "
                    "generator, realize to concrete assembly, validate against the real "
                    "Spectector oracle, and rejection-sample-finetune on the confirmed "
                    "leaks. Requires Docker + pinned image (i5/Mac), or Apptainer + "
                    "SPECEXEC_SPECTECTOR_SIF on the Teaching/ICF cluster.")
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"),
                     help="trained CondTransformerLM checkpoint")
    ap.add_argument("--rounds", type=int, default=5)
    ap.add_argument("--k", type=int, default=40, help="samples drawn per round")
    ap.add_argument("--class", dest="classes", action="append", default=None,
                     help="target vuln class (repeatable). Default: the "
                          "Spectector-adjudicable classes from gen/synth/params.py.")
    ap.add_argument("--arch", default="x86_64", choices=["x86_64", "arm64"])
    ap.add_argument("--out", default=str(ROOT / "gen" / "rl_yield.md"))
    ap.add_argument("--samples-out", default=str(ROOT / "gen" / "rl_samples.jsonl"),
                     help="per-sample JSONL sidecar (class/round/index/gadget_id/"
                          "token_sequence/realized_asm/verdict/reward), one line per "
                          "realized+validated sample -- feeds gen/analyze_rl_diversity.py. "
                          "Pass an empty string to disable.")
    ap.add_argument("--repo-root", default=str(ROOT))
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--top-k", type=int, default=20)
    ap.add_argument("--epochs-per-round", type=int, default=1)
    ap.add_argument("--seed", type=int, default=0,
                     help="seed torch/numpy/random (and the realizer) so a run is "
                          "reproducible and multi-seed comparisons are meaningful "
                          "(generator sampling is otherwise nondeterministic).")
    args = ap.parse_args(argv)

    reason = _docker_unavailable_reason()
    if reason:
        print(f"ERROR: Spectector oracle unavailable -- {reason}", file=sys.stderr)
        return 1

    repo_root = Path(args.repo_root).resolve()

    # Heavy, torch-backed imports deferred to here so `import
    # gen.rl_from_oracle` (as the unit tests do) never needs torch, a
    # generator checkpoint, or Docker.
    import gen.decode as gen_decode  # sets up v54/spec/gen on sys.path itself
    import random as _random
    import numpy as _np
    import torch as _torch
    _random.seed(args.seed)
    _np.random.seed(args.seed)
    _torch.manual_seed(args.seed)
    print(f"[rl] seed={args.seed} gen={args.gen} arch={args.arch}")

    model = gen_decode.CondTransformerLM.load(args.gen)
    spec = gen_decode.load_spec(f"{args.arch}.json")
    realizer = gen_decode.Realizer(spec, seed=args.seed)
    validator = SpectectorValidator(repo_root=str(repo_root))
    out_dir = repo_root / "oracle" / "build"

    classes = args.classes or _default_classes()

    def realize_fn_factory(cls_short):
        return _build_realize_fn(cls_short, args.arch, realizer,
                                 gen_decode.spec_gadgets, gen_decode.build_gen_body,
                                 out_dir, repo_root)

    history = run_oracle_rl(
        model, classes, args.arch, args.rounds, args.k,
        realize_fn_factory, validator, args.out,
        epochs_per_round=args.epochs_per_round,
        sample_kwargs={"temperature": args.temperature, "top_k": args.top_k},
        class_to_vocab=lambda c: _GEN_VOCAB_ALIAS.get(c, c),
        meta={"gen": args.gen, "arch": args.arch, "rounds": args.rounds, "k": args.k},
        samples_out=(args.samples_out or None),
    )
    for cls, h in history.items():
        print(f"[{cls}] yield per round: {h}")
    print(f"wrote {args.out}")
    if args.samples_out:
        print(f"wrote {args.samples_out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
