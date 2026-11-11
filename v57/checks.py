"""Checks that fail the step-6 dataset build.

  (a) no `group` on both sides of the split
  (b) at most 1% of test records have an opcode-multiset near-duplicate in train
  (c) no class evaluated on an ISA it was never trained on (leak label and
      mechanism), and every ISA in train has both LEAK and SAFE
  (d) ISA alone, or length alone, must not predict leak/safe: balanced accuracy
      of a majority-per-ISA rule and of a majority-per-length-bin rule, fitted
      on train and scored on test, at most `shortcut_max`
  (f) no single opcode's presence predicts leak/safe on one ISA with balanced
      accuracy above `opcode_max` (the SPECDET / FastSpec data fail this: one
      mnemonic spelling or one directive decides the class)
  (e) nothing in train or test shares a base hardware violation with, or is a
      near-duplicate of, a held-out evaluation record (pass them as `heldout`)
"""
from __future__ import annotations

import re
from collections import Counter, defaultdict
from typing import Dict, List

from v57 import neardup, task


def n_instr(r) -> int:
    return sum(neardup.opcodes(r["sequence"]).values())


def _bal_acc(pred, gold) -> float:
    per = defaultdict(lambda: [0, 0])
    for p, g in zip(pred, gold):
        per[g][1] += 1
        per[g][0] += p == g
    return sum(h / n for h, n in per.values()) / len(per) if per else 0.0


def shortcut_accuracy(train: List[dict], test: List[dict], key) -> float:
    """Balanced accuracy on leak/safe of the rule "majority leak label among
    training records with the same key(record)" (unseen key -> train majority)."""
    votes = defaultdict(Counter)
    for r in train:
        votes[key(r)][task.leak_label(r["label"])] += 1
    overall = Counter(task.leak_label(r["label"]) for r in train).most_common(1)[0][0]
    pred = [votes[key(r)].most_common(1)[0][0] if key(r) in votes else overall for r in test]
    return _bal_acc(pred, [task.leak_label(r["label"]) for r in test])


def length_bin(r, width: int = 5) -> int:
    return min(n_instr(r), 200) // width


def best_single_opcode(train: List[dict], test: List[dict]):
    """(opcode, class it predicts, balanced accuracy on test) of the best
    "opcode present => class" rule chosen on train."""
    n = Counter(task.leak_label(r["label"]) for r in train)
    if len(n) < 2:
        return None
    df = {"LEAK": Counter(), "SAFE": Counter()}
    for r in train:
        df[task.leak_label(r["label"])].update(set(neardup.opcodes(r["sequence"])))
    cand = sorted(set(df["LEAK"]) | set(df["SAFE"]),
                  key=lambda t: -abs(df["LEAK"][t] / n["LEAK"] - df["SAFE"][t] / n["SAFE"]))[:10]
    gold = [task.leak_label(r["label"]) for r in test]
    sets = [set(neardup.opcodes(r["sequence"])) for r in test]
    best = None
    for t in cand:
        cls = "LEAK" if df["LEAK"][t] / n["LEAK"] > df["SAFE"][t] / n["SAFE"] else "SAFE"
        oth = "SAFE" if cls == "LEAK" else "LEAK"
        acc = _bal_acc([cls if t in s else oth for s in sets], gold)
        if best is None or acc > best[2]:
            best = (t, cls, acc)
    return best


_VIOL = re.compile(r"violation-[0-9-]+[0-9]")


def base_violation(r):
    m = _VIOL.search(str(r.get("group", "")) + " " + str(r.get("src_path", "")))
    return m.group(0) if m else None


def run(split: Dict[str, List[dict]], dup_threshold: float = 0.8, dup_max: float = 0.01,
        shortcut_max: float = 0.65, heldout: List[dict] = None,
        opcode_max: float = 0.85) -> List[str]:
    train, test = split["train"], split["test"]
    errs = []
    shared = {(r.get("arch"), r.get("group")) for r in train} & \
             {(r.get("arch"), r.get("group")) for r in test}
    if shared:
        errs.append(f"(a) {len(shared)} group(s) on both sides of the split, e.g. {sorted(map(str, shared))[:3]}")
    rate = neardup.leak_rate(train, test, dup_threshold)
    if rate > dup_max:
        errs.append(f"(b) near-duplicate overlap {rate:.3f} > {dup_max} "
                    f"(test records with a Jaccard>={dup_threshold} twin in train)")
    for name, fn in (("leak", lambda r: task.leak_label(r["label"])),
                     ("mechanism", lambda r: task.mechanism(r["label"]))):
        seen = defaultdict(set)
        for r in train:
            seen[fn(r)].add(r.get("arch"))
        for cls, arch in sorted({(fn(r), r.get("arch")) for r in test}, key=str):
            if cls is not None and arch not in seen[cls]:
                errs.append(f"(c) {name} class {cls} is evaluated on {arch} but never trained on it")
    by_arch = defaultdict(set)
    for r in train:
        by_arch[r.get("arch")].add(task.leak_label(r["label"]))
    for arch, labs in sorted(by_arch.items(), key=str):
        if len(labs) < 2:
            errs.append(f"(c) train has only {sorted(labs)} on {arch}: ISA would decide the label")
    a = shortcut_accuracy(train, test, lambda r: r.get("arch"))
    if a > shortcut_max:
        errs.append(f"(d) ISA alone predicts leak/safe with balanced accuracy {a:.3f} > {shortcut_max}")
    a = shortcut_accuracy(train, test, length_bin)
    if a > shortcut_max:
        errs.append(f"(d) length alone predicts leak/safe with balanced accuracy {a:.3f} > {shortcut_max}")
    for arch in sorted({r.get("arch") for r in test}, key=str):
        b = best_single_opcode([r for r in train if r.get("arch") == arch],
                               [r for r in test if r.get("arch") == arch])
        if b and b[2] > opcode_max:
            errs.append(f"(f) on {arch} the single opcode `{b[0]}` (present => {b[1]}) predicts leak/safe "
                        f"with balanced accuracy {b[2]:.3f} > {opcode_max}")
    if heldout:
        ours = split["train"] + split["test"]
        shared = ({base_violation(r) for r in ours} & {base_violation(r) for r in heldout}) - {None}
        if shared:
            errs.append(f"(e) {len(shared)} base violation(s) shared with a held-out set, "
                        f"e.g. {sorted(shared)[:3]}")
        rate = neardup.leak_rate(ours, heldout, dup_threshold)
        if rate > dup_max:
            errs.append(f"(e) {rate:.3f} of held-out records have a near-duplicate in the build")
    return errs
