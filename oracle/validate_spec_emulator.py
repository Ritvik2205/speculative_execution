#!/usr/bin/env python3
"""validate_spec_emulator.py — score the speculative emulator against ground
truth we did not produce with it.

A new oracle is worth nothing on its own word. `oracle/spec_emulator.py` is a
model, so before any arm64 number from it is reported, it has to be measured
against evidence from somewhere else. Two reference sets exist, and they are
independent of each other and of the emulator:

  1. REAL SILICON (`eval/data/revizor_hwlabel_variants.jsonl`, 806 records).
     Fenced variants of real Revizor violations, each labelled by re-running it
     on the i5-8300H three times: label = the attack class if the violation
     persisted, BENIGN if it disappeared
     (`docs/HW_LABEL_RESULTS_2026-10-07.md`). This is the stronger reference,
     because a fence's effect here is a measured property of a real CPU.

  2. SYMBOLIC ORACLE (`gen/rl_*/samples.jsonl`). Spectector leak/safe verdicts
     on generated x86 gadgets. Same property (speculative non-interference),
     computed symbolically instead of by concrete emulation, so agreement is
     meaningful and disagreement is informative.

SCOPE, and it is narrow: the emulator models conditional-branch (PHT)
misprediction only. Of the four hardware-labelled classes, only SPECTRE_V1 is
in scope. SPECTRE_V4 is store-to-load forwarding, and MDS and L1TF are faulting
or assisted loads; the emulator has no model of any of those, so for those
classes a `safe` verdict carries no information and is reported separately
rather than folded into an accuracy number. Reporting a single headline
accuracy over all four classes would be the dishonest way to present this.

Comparison bars, so the result is readable next to the trained models in
`eval/cluster_out/real_transfer_confusion.md` section 4:
  - interior-fence rule: BENIGN iff some lfence sits inside the sequence
    (0.991 over all 806 -- the rule the current variant set cannot distinguish
    from real understanding);
  - adjacent-fence rule: BENIGN iff an lfence sits next to the class's
    boundary instruction (0.871).

Run:
    python3 oracle/validate_spec_emulator.py               -> oracle/spec_emulator_validation.md
    python3 oracle/validate_spec_emulator.py --skip-spectector
"""
from __future__ import annotations

import argparse
import collections
import json
import math
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "oracle"))
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "eval"))

from spec_emulator import (ARCH_LEAK, LEAK, SAFE, UNRUNNABLE,  # noqa: E402
                           SpeculativeEmulator)
from revizor_asm import load_program, variant_program  # noqa: E402

HW_LABELS = ROOT / "eval" / "data" / "revizor_hwlabel_variants.jsonl"
HW_RESULTS = ROOT / "oracle" / "revizor" / "results" / "hw_label_261007"
# the emulator models conditional-branch speculation, so only this class is
# within its modelled mechanism
IN_SCOPE_CLASSES = ("SPECTRE_V1",)


def wilson(k: int, n: int, z: float = 1.96):
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
    return f"{k/n:.3f} [{lo:.3f},{hi:.3f}] {k}/{n}"


def interior_fence_pred(seq, cls):
    """BENIGN iff some lfence is not in the leading/trailing fence run."""
    i, j = 0, len(seq)
    while i < j and seq[i] == "lfence":
        i += 1
    while j > i and seq[j - 1] == "lfence":
        j -= 1
    return "BENIGN" if "lfence" in seq[i:j] else cls


def adjacent_fence_pred(seq, cls):
    jcc = lambda x: bool(re.match(r"j(?!mp)[a-z]+\s", x))
    mem = lambda x: "(" in x and not x.split()[0].startswith("lea")
    bnd = jcc if cls == "SPECTRE_V1" else mem
    for i, x in enumerate(seq):
        if x != "lfence":
            continue
        nb = [seq[j] for j in (i - 1, i + 1)
              if 0 <= j < len(seq) and seq[j] not in ("lfence", "lock")]
        if i + 2 < len(seq) and seq[i + 1] == "lock":
            nb.append(seq[i + 2])
        if any(bnd(y) for y in nb):
            return "BENIGN"
    return cls


def emu_to_label(verdict: str, cls: str):
    """Map an emulator verdict onto the hardware label vocabulary."""
    if verdict == LEAK:
        return cls
    if verdict == SAFE:
        return "BENIGN"
    return None          # unrunnable: no prediction


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--window", type=int, default=40)
    ap.add_argument("--pairs", type=int, default=4)
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--spectector-samples", nargs="+",
                    default=["gen/rl_mc/SPECTRE_V1_s*/samples.jsonl",
                             "gen/rl_mc/SPECTRE_V4_s*/samples.jsonl"])
    ap.add_argument("--spectector-limit", type=int, default=300)
    ap.add_argument("--skip-spectector", action="store_true")
    ap.add_argument("--results-dir", default=str(HW_RESULTS),
                    help="hw_label_variants results dir holding the variant program.asm files")
    ap.add_argument("--out", default=str(ROOT / "oracle" / "spec_emulator_validation.md"))
    a = ap.parse_args(argv)

    if not HW_LABELS.is_file():
        print(f"FATAL: {HW_LABELS} missing", file=sys.stderr)
        return 1
    recs = [json.loads(l) for l in open(HW_LABELS) if l.strip()]
    if a.limit:
        recs = recs[: a.limit]

    # The corpus `sequence` field lost its branch labels in the AT&T round trip
    # (see oracle/revizor_asm.py), so execute the committed Intel-syntax
    # program.asm instead. A record with no program on disk is skipped rather
    # than scored on a sequence whose control flow cannot be assembled.
    # Two instances: Revizor's own program text is Intel syntax, the
    # generator's realized sequences are AT&T. Reusing one instance for both
    # made every generated gadget fail to assemble and read as `unrunnable`.
    se = SpeculativeEmulator("x86_64", window=a.window, intel_syntax=True)
    se_att = SpeculativeEmulator("x86_64", window=a.window)
    kept, missing = [], 0
    for r in recs:
        vdir = Path(r["src_path"]).parent.name
        prog = variant_program(a.results_dir, r["vuln_class"], vdir, r["variant"])
        if not prog.is_file():
            missing += 1
            continue
        r["program"] = load_program(prog)
        kept.append(r)
    recs = kept
    print(f"  {len(recs)} variants with a program on disk, {missing} skipped",
          file=sys.stderr)
    for n, r in enumerate(recs):
        r["emu"] = se.check(r["program"], n_pairs=a.pairs)
        if n % 50 == 0:
            print(f"  hw {n}/{len(recs)}", file=sys.stderr, flush=True)

    L = ["# Speculative emulator: agreement with ground truth it did not produce", "",
         f"`oracle/spec_emulator.py`, window {a.window} instructions, "
         f"{a.pairs} input pairs per gadget, cache-line + pc observation. "
         "Executed from the committed Intel-syntax `program.asm` of each variant, "
         "not the corpus `sequence` field, whose branch labels did not survive the "
         "AT&T round trip (see `oracle/revizor_asm.py`).", "",
         "The emulator models **conditional-branch misprediction only**. "
         f"In-scope class: {', '.join(IN_SCOPE_CLASSES)}. SPECTRE_V4 "
         "(store-to-load forwarding), MDS and L1TF (faulting/assisted loads) use "
         "mechanisms it does not model, so its verdicts there are reported but "
         "carry no information and are excluded from the headline.", ""]

    # ---- 1. real silicon --------------------------------------------------
    L += ["## 1. Against real silicon (hardware-labelled fenced variants)", "",
          "Label: the attack class if the violation persisted on the i5-8300H in "
          "3/3 reruns, BENIGN if it disappeared in 0/3.", "",
          "| class | n | emulator agrees | interior-fence bar | adjacent-fence bar | no prediction |",
          "|---|---|---|---|---|---|"]

    def block(rows, title):
        n = len(rows)
        if not n:
            return
        agree = sum(1 for r in rows
                    if emu_to_label(r["emu"]["verdict"], r["vuln_class"]) == r["label"])
        # arch_leak yields no class prediction either, so it belongs here
        none = sum(1 for r in rows
                   if r["emu"]["verdict"] in (UNRUNNABLE, ARCH_LEAK))
        ib = sum(1 for r in rows
                 if interior_fence_pred(r["sequence"], r["vuln_class"]) == r["label"])
        ab = sum(1 for r in rows
                 if adjacent_fence_pred(r["sequence"], r["vuln_class"]) == r["label"])
        L.append(f"| {title} | {n} | {rate(agree, n)} | {rate(ib, n)} "
                 f"| {rate(ab, n)} | {none} |")

    by_cls = collections.defaultdict(list)
    for r in recs:
        by_cls[r["vuln_class"]].append(r)
    for c in IN_SCOPE_CLASSES:
        block(by_cls.get(c, []), f"{c} (in scope)")
    for c in sorted(set(by_cls) - set(IN_SCOPE_CLASSES)):
        block(by_cls[c], f"{c} (out of scope)")
    block([r for c in IN_SCOPE_CLASSES for r in by_cls.get(c, [])], "**in-scope total**")

    # per-variant detail for the in-scope class: this is where a positional
    # rule and a mechanism model can be told apart
    scope_rows = [r for c in IN_SCOPE_CLASSES for r in by_cls.get(c, [])]
    L += ["", f"### {'/'.join(IN_SCOPE_CLASSES)} by variant", "",
          "| variant | hw label | n | emulator agrees | interior bar |", "|---|---|---|---|---|"]
    by_var = collections.defaultdict(list)
    for r in scope_rows:
        by_var[(r["variant"], r["label"])].append(r)
    for (v, lab), rows in sorted(by_var.items()):
        n = len(rows)
        agree = sum(1 for r in rows
                    if emu_to_label(r["emu"]["verdict"], r["vuln_class"]) == r["label"])
        ib = sum(1 for r in rows
                 if interior_fence_pred(r["sequence"], r["vuln_class"]) == r["label"])
        L.append(f"| {v} | {lab} | {n} | {rate(agree, n)} | {rate(ib, n)} |")

    L += ["", "### Verdict distribution (all classes)", "",
          "| class | leak | safe | arch\\_leak | unrunnable |", "|---|---|---|---|---|"]
    for c in sorted(by_cls):
        d = collections.Counter(r["emu"]["verdict"] for r in by_cls[c])
        L.append(f"| {c} | {d[LEAK]} | {d[SAFE]} | {d[ARCH_LEAK]} | {d[UNRUNNABLE]} |")
    nb = collections.Counter(r["emu"]["n_branches"] == 0 for r in recs)
    L += ["", f"Gadgets with no conditional branch to mispredict: {nb[True]}/{len(recs)}. "
          "For those the emulator can only return `safe`, which for a store-bypass or "
          "faulting-load gadget is a scope limitation, not a finding.", ""]

    # ---- 2. symbolic oracle ----------------------------------------------
    if not a.skip_spectector:
        from precheck import _load_samples
        rows = []
        for pat in a.spectector_samples:
            rows += [r for r in _load_samples(pat) if r["verdict"] in ("leak", "safe")]
        seen, uniq = set(), []
        for r in rows:
            k = tuple(r["seq"])
            if k in seen:
                continue
            seen.add(k)
            uniq.append(r)
        uniq = uniq[: a.spectector_limit]
        for n, r in enumerate(uniq):
            r["emu"] = se_att.check(r["seq"], n_pairs=a.pairs)
            if n % 50 == 0:
                print(f"  spectector {n}/{len(uniq)}", file=sys.stderr, flush=True)
        nobranch = sum(1 for r in uniq if r["emu"]["n_branches"] == 0)
        L += ["## 2. Against the symbolic oracle (Spectector, generated x86 gadgets)", "",
              f"{len(uniq)} unique generated gadgets with a Spectector leak/safe verdict.", "",
              "**This is not a like-for-like comparison, and the counts below should "
              "not be read as agreement.** Spectector adjudicates the whole spliced "
              "victim program: the generated body is inserted into a hand-written, "
              "class-specific misdirection template (a bounds-check bypass and a "
              "probe write) and compiled, and the leak Spectector reports may belong "
              "to that scaffold. The emulator is given only the generated body. "
              f"{nobranch} of {len(uniq)} bodies contain no conditional branch at "
              "all, so for those there is nothing for a PHT model to mispredict and "
              "`safe` is a statement about the body, not about the program Spectector "
              "judged. Making this comparable requires running the emulator on the "
              "same compiled victim, which needs the cross-compiler in the oracle "
              "container.", "",
              "| Spectector | n | emulator leak | safe | arch\\_leak | unrunnable |",
              "|---|---|---|---|---|---|"]
        for v in ("leak", "safe"):
            gr = [r for r in uniq if r["verdict"] == v]
            d = collections.Counter(r["emu"]["verdict"] for r in gr)
            L.append(f"| {v} | {len(gr)} | {d[LEAK]} | {d[SAFE]} | {d[ARCH_LEAK]} "
                     f"| {d[UNRUNNABLE]} |")
        L.append("")

    L += ["## How to read this", "",
          "The emulator is a model. Where it agrees with real silicon on the "
          "in-scope class it is evidence that a Unicorn-driven speculation model "
          "reproduces a measured hardware property; where it does not, the "
          "honest reading is that the model is wrong, not the CPU. Its only "
          "purpose in this project is to give arm64 and riscv64 a leak check at "
          "all, so the number that matters is how far it can be trusted on the "
          "one ISA where a hardware answer exists.", ""]

    Path(a.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
