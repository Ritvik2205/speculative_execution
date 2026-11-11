#!/usr/bin/env python3
"""Feedback arm for the hardware comparison: a bandit over ways of making the
next test program, rewarded by whether the program violated the contract.

Operators (each yields one program in Revizor's native shape):
  unigram  unit shapes drawn at corpus frequency
  shuffle  a parent program with its units shuffled inside each block
  splice   blocks of two parent programs
  point    a parent program with one unit replaced by a random corpus unit
  lm       the next unused sample of the learned model (pre-generated pool)
Operator choice is Thompson sampling with a Beta posterior per operator.
Parents are the training programs plus every program this campaign has seen
violate, the latter weighted up, so the arm can exploit what it finds. It uses
the same per-campaign budget as every other arm.

Stdlib only. Everything is a deterministic function of (seed, outcomes so
far), so an interrupted campaign is resumed by replaying recorded outcomes.
"""
from __future__ import annotations

import random
import sys
from pathlib import Path
from typing import List, Optional, Tuple

OPS = ("unigram", "shuffle", "splice", "point", "lm")


def load_lib(arms_dir):
    """revizor_native / revizor_arms from the copy shipped with the arms
    (hw/gen_vs_random/_lib), else from the repo's gen/."""
    for d in (Path(arms_dir) / "_lib", Path(__file__).resolve().parents[3] / "gen"):
        if (d / "revizor_native.py").is_file() and str(d) not in sys.path:
            sys.path.insert(0, str(d))
    import revizor_arms as ra
    import revizor_native as rn
    return rn, ra


class Adaptive:
    def __init__(self, rn, ra, corpus: List[str], lm_pool: List[str], seed: int,
                 prior: Tuple[float, float] = (1.0, 9.0), found_weight: float = 5.0):
        self.rn, self.ra = rn, ra
        self.rng = random.Random(seed)
        self.corpus = list(corpus)
        self.weights = [1.0] * len(corpus)
        self.found_weight = found_weight
        self.lm_pool = list(lm_pool)
        self.uni = ra.UnigramModel(corpus)
        self.imm = self.uni.imm
        self.ops = [o for o in OPS if o != "lm" or self.lm_pool]
        self.post = {o: list(prior) for o in self.ops}
        self.seen = {self._key(t) for t in corpus}
        self.pulls = {o: 0 for o in self.ops}

    def _key(self, text):
        return tuple(self.rn.tokenize(self.rn.parse_program(text)))

    def _parent(self) -> str:
        return self.rng.choices(self.corpus, self.weights)[0]

    def _make(self, op: str) -> Optional[str]:
        rn, ra, rng = self.rn, self.ra, self.rng
        if op == "unigram":
            return ra.to_program(self.uni.sample(rng), rng, self.imm)
        if op == "lm":
            return self.lm_pool.pop(0) if self.lm_pool else None
        if op == "shuffle":
            blocks = rn.parse_program(self._parent())
            for b in blocks:
                rng.shuffle(b.units)
            return rn.emit(rn.tokenize(blocks), rng, imm_pool=self.imm)
        if op == "splice":
            a, b = rn.parse_program(self._parent()), rn.parse_program(self._parent())
            cut = rng.randint(1, len(a))
            return rn.emit(rn.tokenize(a[:cut] + b[min(cut, len(b) - 1):]), rng, imm_pool=self.imm)
        if op == "point":
            toks = rn.tokenize(rn.parse_program(self._parent()))
            idx = [i for i, t in enumerate(toks) if not t.startswith("<")]
            if not idx:
                return None
            new = rn.defactor([t for t in self.uni.sample(rng)], rng)
            new = [t for t in new if not t.startswith("<")]
            if not new:
                return None
            toks[rng.choice(idx)] = rng.choice(new)
            return rn.emit(toks, rng, imm_pool=self.imm)
        raise ValueError(op)

    def propose(self) -> Tuple[str, str]:
        """(operator, program text): never a copy of a training program or of
        an earlier proposal of this campaign."""
        for _ in range(50):
            draws = {o: self.rng.betavariate(*self.post[o]) for o in self.ops}
            op = max(draws, key=draws.get)
            text = self._make(op)
            if text is None:
                if op == "lm":
                    self.ops = [o for o in self.ops if o != "lm"]
                continue
            key = self._key(text)
            if key and key not in self.seen and not self.rn.check_invariants(text):
                self.seen.add(key)
                self.pulls[op] += 1
                return op, text
        text = self.ra.to_program(self.uni.sample(self.rng), self.rng, self.imm)
        self.pulls["unigram"] += 1
        return "unigram", text

    def update(self, op: str, text: str, violated: bool):
        self.post[op][0 if violated else 1] += 1
        if violated:
            self.corpus.append(text)
            self.weights.append(self.found_weight)
