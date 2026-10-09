#!/usr/bin/env python3
"""isa_runnability.py — per-ISA, per-class validity of generator output,
measured with an emulator rather than a leak oracle.

Why this exists: every verified generation number in this project is x86_64,
because every leak oracle we have (Spectector, InvisiSpec, Revizor) is x86. The
arm64 half of the generator has therefore never had ANY measured quality
number, only a classifier-judged "looks like class X" hit rate. An emulator
cannot fix that -- Unicorn, like the QEMU it is built on, models only the
architectural effect of each instruction and has no speculation at all -- but it
can answer a strictly weaker question that is still worth a table:

    of what the generator emits for this (class, ISA), how much is real,
    executable machine code?

That is a necessary condition for a leak and it is measurable on every ISA, so
it separates "the generator cannot write valid arm64" from "we have no arm64
oracle". Those two were previously indistinguishable.

Stages reported per sample (see gen/precheck.py):
  realized         the Realizer produced >= 2 instructions
  assembles        llvm-mc assembles the whole sequence as one unit
  oracle_supported x86 only: Spectector's front end parses the reachable path
  emulated_ok      Unicorn runs it to completion with no unhandled fault

NOT A LEAK CLAIM. `emulated_ok` means architecturally executable. It says
nothing about whether the sequence leaks, and this script never reports a leak
rate.

Run:
    python3 gen/isa_runnability.py --n 60            -> gen/isa_runnability.md
    python3 gen/isa_runnability.py --archs arm64 --n 100
"""
from __future__ import annotations

import argparse
import collections
import json
import math
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from precheck import PreCheck  # noqa: E402

# the generator's own vocab spelling differs from the short class name
_GEN_VOCAB_ALIAS = {"BHI": "BRANCH_HISTORY_INJECTION"}


def wilson(k: int, n: int, z: float = 1.96) -> tuple[float, float]:
    if n == 0:
        return (float("nan"), float("nan"))
    p = k / n
    d = 1 + z * z / n
    c = p + z * z / (2 * n)
    half = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n))
    return ((c - half) / d, (c + half) / d)


def rate(k: int, n: int) -> str:
    if n == 0:
        return "n/a"
    lo, hi = wilson(k, n)
    return f"{k/n:.2f} [{lo:.2f},{hi:.2f}]"


def _spec_name_static(ar: str) -> str:
    """Spec filename for an arch: the riscv spec is riscv.json, not riscv64.json."""
    return "riscv.json" if ar == "riscv64" else f"{ar}.json"


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    ap.add_argument("--archs", nargs="+", default=None,
                    help="default: every arch the checkpoint was conditioned on")
    ap.add_argument("--classes", nargs="+", default=None)
    ap.add_argument("--n", type=int, default=60, help="samples per (class, arch)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--top-k", type=int, default=20)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--arch-purity", choices=["off", "spec", "assembler"],
                    default="assembler",
                    help="token mask at sampling (gen/arch_purity.py): off, the "
                         "spec-engine rule, or the spec rule plus a check that "
                         "the token realizes to assemblable text")
    ap.add_argument("--out", default=str(ROOT / "gen" / "isa_runnability.md"))
    ap.add_argument("--json-out", default=str(ROOT / "gen" / "isa_runnability.json"))
    a = ap.parse_args(argv)

    import torch
    from generator import CondTransformerLM
    from isa_spec import load_spec
    from realize import Realizer

    torch.manual_seed(a.seed)
    model = CondTransformerLM.load(a.gen)
    if a.arch_purity != "off":
        from arch_purity import attach_arch_masks
        spec_for_arch = {ar: _spec_name_static(ar) for ar in model.vocab.archs}
        attach_arch_masks(model, spec_for_arch,
                          assembler_check=a.arch_purity == "assembler")
    archs = a.archs or list(model.vocab.archs)
    classes = a.classes or [c for c in model.vocab.classes if c != "BENIGN"]

    pc = PreCheck()
    if not pc.mc:
        print("FATAL: llvm-mc not found", file=sys.stderr)
        return 1
    emu_on = pc.emulator is not None

    # the riscv spec file is riscv.json, not riscv64.json
    def _spec_name(ar):
        return "riscv.json" if ar == "riscv64" else f"{ar}.json"

    realizers = {}
    for arch in archs:
        try:
            realizers[arch] = Realizer(load_spec(_spec_name(arch)), seed=a.seed)
        except Exception as e:  # noqa: BLE001
            print(f"WARNING: no realizer for {arch}: {e}", file=sys.stderr)

    counts: dict = collections.defaultdict(lambda: collections.Counter())
    emu_outcomes: dict = collections.defaultdict(lambda: collections.Counter())
    # A token mask raises validity by shrinking the vocabulary, so it could buy
    # validity with mode collapse. Track distinct realized sequences to show
    # whether it does.
    seen: dict = collections.defaultdict(set)
    for arch in archs:
        if arch not in realizers:
            continue
        for cls in classes:
            key = (arch, cls)
            vocab_cls = _GEN_VOCAB_ALIAS.get(cls, cls)
            for _ in range(a.n):
                counts[key]["sampled"] += 1
                try:
                    norm = model.sample(vocab_cls, arch, temperature=a.temperature,
                                        top_k=a.top_k)
                    concrete = realizers[arch].realize_sequence(norm)
                except Exception:  # noqa: BLE001
                    continue
                if len(concrete) < 2:
                    continue
                counts[key]["realized"] += 1
                seen[key].add(tuple(concrete))
                res = pc.check(concrete, arch, require_emulation=False)
                if res["assembles"]:
                    counts[key]["assembles"] += 1
                if res["oracle_supported"]:
                    counts[key]["oracle_supported"] += 1
                emu_outcomes[key][res["emulated"]] += 1
                if res["emulated"] == "ok":
                    counts[key]["emulated_ok"] += 1
            print(f"  {arch:8s} {cls:26s} "
                  f"realized {counts[key]['realized']}/{counts[key]['sampled']} "
                  f"asm {counts[key]['assembles']} emu {counts[key]['emulated_ok']}",
                  flush=True)

    L = ["# Generator output: per-ISA architectural validity", "",
         f"{a.n} samples per (class, ISA) from `{Path(a.gen).name}` "
         f"(temperature {a.temperature}, top-k {a.top_k}, seed {a.seed}, "
         f"arch-purity mask `{a.arch_purity}`). "
         f"Rates are over SAMPLED candidates with Wilson 95% intervals.", "",
         "**This is not a leak measurement.** `emulated_ok` means Unicorn executed "
         "the sequence to completion with no unhandled fault, i.e. it is real "
         "machine code. Unicorn models no speculation, no caches and no branch "
         "prediction, so it cannot say whether a sequence leaks. The point of the "
         "table is to separate *the generator cannot write valid code for this ISA* "
         "from *we have no leak oracle for this ISA*.", "",
         f"Emulation: {'enabled' if emu_on else 'DISABLED (unicorn missing)'}. "
         "`oracle_supported` is blank where no symbolic oracle covers the ISA.", "",
         "| ISA | class | realized | assembles | oracle front end | emulates |",
         "|---|---|---|---|---|---|"]
    for arch in archs:
        for cls in classes:
            k = (arch, cls)
            if k not in counts:
                continue
            c = counts[k]
            n = c["sampled"]
            oc = rate(c["oracle_supported"], n) if arch == "x86_64" else "--"
            L.append(f"| {arch} | {cls} | {rate(c['realized'], n)} "
                     f"| {rate(c['assembles'], n)} | {oc} "
                     f"| {rate(c['emulated_ok'], n)} |")

    L += ["", "## Per-ISA totals", "",
          "| ISA | sampled | realized | assembles | emulates | unique realized |",
          "|---|---|---|---|---|---|"]
    per_arch = collections.defaultdict(collections.Counter)
    for (arch, _cls), c in counts.items():
        per_arch[arch].update(c)
    for arch in archs:
        c = per_arch.get(arch)
        if not c:
            continue
        n = c["sampled"]
        uniq = len({sq for (ar, _cl), sqs in seen.items() if ar == arch for sq in sqs})
        L.append(f"| {arch} | {n} | {rate(c['realized'], n)} "
                 f"| {rate(c['assembles'], n)} | {rate(c['emulated_ok'], n)} "
                 f"| {uniq}/{c['realized']} = {uniq / max(c['realized'], 1):.2f} |")

    L += ["", "## Emulation outcomes (why a sequence did not run)", "",
          "| ISA | outcome | count |", "|---|---|---|"]
    per_arch_emu = collections.defaultdict(collections.Counter)
    for (arch, _cls), c in emu_outcomes.items():
        per_arch_emu[arch].update(c)
    for arch in archs:
        for outcome, n in per_arch_emu.get(arch, collections.Counter()).most_common():
            L.append(f"| {arch} | {outcome} | {n} |")

    L += ["", "Note: the committed checkpoint was conditioned on "
          f"{', '.join(model.vocab.archs)} only. riscv64 is supported by the code "
          "path (spec, realizer, tokenizer, emulator) but is not in this "
          "checkpoint's vocabulary, so it cannot be sampled here; that needs a "
          "generator retrained with the riscv corpus.", ""]

    Path(a.out).write_text("\n".join(L) + "\n")
    Path(a.json_out).write_text(json.dumps(
        {"config": {"gen": a.gen, "n": a.n, "temperature": a.temperature,
                    "top_k": a.top_k, "seed": a.seed, "archs": archs,
                    "emulation": emu_on},
         "arch_purity": a.arch_purity,
         "unique_realized": {f"{k[0]}|{k[1]}": len(v) for k, v in seen.items()},
         "counts": {f"{k[0]}|{k[1]}": dict(v) for k, v in counts.items()},
         "emulation_outcomes": {f"{k[0]}|{k[1]}": dict(v) for k, v in emu_outcomes.items()}},
        indent=1) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
