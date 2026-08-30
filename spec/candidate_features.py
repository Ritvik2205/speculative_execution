#!/usr/bin/env python3
"""candidate_features.py — automatically GENERATE a large candidate feature pool
from the ISA spec, for ensemble-gated selection to screen.

Why this exists: the pipeline currently has two fixed, hand-specified feature
tiers — `v54/inline_features.py` (58 dims, full of ISA literals like
`frac_movq`) and `spec/spec_features.py` (42 dims, ISA-neutral but a fixed
list). Nothing generates candidate features and nothing screens them; the only
use of `feature_importances_` in the repo is to plot it. So "improve the
automated feature extraction" has no selector to tune — this module supplies
the candidates, and `select_features.py` does the screening.

Everything here is derived from the spec's own taxonomy (canonical ops, spec
flags, memory-access types), so the code carries no opcode, register, or
architecture literal — a new ISA contributes candidates by shipping a spec
file, which is the portability property the paper needs.

Candidate groups:
  1. canonical-op fractions              (one per op actually seen)
  2. canonical-op bigram fractions       (top-N ops only, or the pool explodes)
  3. spec-flag pair co-occurrence        (both flags present in the window)
  4. flag-to-flag distance statistics    (min/mean gap between flagged instrs)

Group 2 is the point of the exercise: single-instruction histograms cannot
express `LOAD -> SHIFT -> LOAD`, which is the actual shape of a
secret-load/probe gadget. Bigrams can.
"""

from __future__ import annotations

from typing import List, Sequence

import numpy as np

from isa_spec import SpecEngine

# Which spec each arch resolves to — mirrors asm_tokenizer.SPEC_FOR_ARCH so the
# candidate space and the tokenizer can't drift apart.
SPEC_FOR_ARCH = {
    "x86_64": "x86_64.json", "arm64": "arm64.json", "arm32": "arm64.json",
    "riscv64": "riscv.json", "unknown": "base.json",
}


def load_engines() -> dict:
    from isa_spec import load_engine
    return {a: load_engine(f) for a, f in SPEC_FOR_ARCH.items()}

# Flags worth pairing. Same names the ensemble gate uses; semantics live in the
# spec, so this list is ISA-neutral.
PAIRABLE_FLAGS = (
    "is_secret_source", "is_transmitter", "is_cache_probe",
    "is_serializing", "is_timing_source", "is_indirect_branch",
    "is_memory_access", "is_branch",
)


def _is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.endswith(":") and not s.startswith(".")


class CandidateFeatureSpace:
    """Fixed candidate vocabulary, fitted once on TRAIN sequences.

    Fitting only chooses WHICH candidates exist (which ops were seen, which
    bigrams are frequent enough to be worth a column). It never looks at
    labels — so fitting on train and applying to test is not leakage, and the
    same space can be reused across splits.
    """

    def __init__(self, engines, top_ops: int = 20,
                 min_bigram_count: int = 20, use_taint: bool = False):
        # Arch-aware by construction. A single engine over a mixed-ISA corpus
        # silently mislabels everything from the other ISAs as OTHER — ARM's
        # `ldr` does not match x86's load pattern — which zeroes out whole
        # feature groups without any error. Same failure the tokenizer hit.
        self.engines = engines if isinstance(engines, dict) else {"unknown": engines}
        self._ref = self.engines.get("x86_64") or next(iter(self.engines.values()))
        self.top_ops = top_ops
        self.min_bigram_count = min_bigram_count
        # OPT-IN, default OFF (see spec/spec_features.py::compute_spec_features
        # for the identical contract). With it off, transform_one is
        # byte-identical to before. With it on, the flag-pair and
        # flag-distance groups (which read the pairable flags, including
        # is_secret_source/is_transmitter) are derived from a per-record PDG
        # built via SpecBackedPDGBuilder (dataflow_taint=True) instead of
        # per-instruction engine.spec_flags_vector calls.
        self.use_taint = use_taint
        self.ops: List[str] = []
        self.bigrams: List[tuple] = []
        self.flag_pairs: List[tuple] = []
        self._flag_idx: dict = {}

    def _engine_for(self, arch):
        return self.engines.get(arch, self.engines.get("unknown", self._ref))

    def fit(self, records) -> "CandidateFeatureSpace":
        from collections import Counter
        op_counts, bigram_counts = Counter(), Counter()
        for rec in records:
            eng = self._engine_for(rec.get("arch", "unknown"))
            ops = [eng.canonical_op(l) for l in rec["sequence"] if _is_instr(l)]
            op_counts.update(ops)
            bigram_counts.update(zip(ops, ops[1:]))

        self.ops = sorted(op_counts)
        frequent = {op for op, _ in op_counts.most_common(self.top_ops)}
        self.bigrams = sorted(
            bg for bg, c in bigram_counts.items()
            if c >= self.min_bigram_count and bg[0] in frequent and bg[1] in frequent)

        self._flag_idx = {f: self._ref.spec_flags[f]
                          for f in PAIRABLE_FLAGS if f in self._ref.spec_flags}
        names = sorted(self._flag_idx)
        self.flag_pairs = [(a, b) for i, a in enumerate(names) for b in names[i + 1:]]
        return self

    # ---- naming ---------------------------------------------------------
    def feature_names(self) -> List[str]:
        n = [f"op_{o}" for o in self.ops]
        n += [f"bg_{a}__{b}" for a, b in self.bigrams]
        n += [f"pair_{a}__{b}" for a, b in self.flag_pairs]
        n += ["flagdist_min", "flagdist_mean", "flagged_frac", "flag_span_frac"]
        return n

    # ---- extraction -----------------------------------------------------
    def transform_one(self, sequence: Sequence[str], arch: str = "unknown") -> np.ndarray:
        eng = self._engine_for(arch)
        lines = [l for l in sequence if _is_instr(l)]
        n = max(len(lines), 1)

        ops = [eng.canonical_op(l) for l in lines]
        op_pos = {o: i for i, o in enumerate(self.ops)}
        bg_pos = {bg: i for i, bg in enumerate(self.bigrams)}

        v_op = np.zeros(len(self.ops), dtype=np.float32)
        for o in ops:
            j = op_pos.get(o)
            if j is not None:
                v_op[j] += 1.0
        v_op /= n

        v_bg = np.zeros(len(self.bigrams), dtype=np.float32)
        for bg in zip(ops, ops[1:]):
            j = bg_pos.get(bg)
            if j is not None:
                v_bg[j] += 1.0
        v_bg /= max(n - 1, 1)

        # Per-instruction flag matrix, reused by both the pair and distance groups.
        names = sorted(self._flag_idx)
        F = np.zeros((len(lines), len(names)), dtype=bool)
        if self.use_taint:
            # PDGNode order matches `lines` 1:1 — both filter with the same
            # _is_instr predicate the underlying PDGBuilder.build() uses.
            # node.spec_flags is the union of the regex-based flags computed
            # via this same engine (SpecBackedPDGBuilder delegates to
            # eng.spec_flags_vector) and the taint-derived flags, so this is
            # strictly additive relative to the OFF branch below.
            from spec_pdg_builder import SpecBackedPDGBuilder
            pdg = SpecBackedPDGBuilder(eng, dataflow_taint=True).build(sequence)
            for i, node in enumerate(pdg.nodes):
                for k, f in enumerate(names):
                    F[i, k] = bool(node.spec_flags[self._flag_idx[f]])
        else:
            for i, line in enumerate(lines):
                cat = eng.classify_opcode(line)
                mem = eng.memory_access_type(line)
                fv = eng.spec_flags_vector(line, cat, mem)
                for k, f in enumerate(names):
                    F[i, k] = bool(fv[self._flag_idx[f]])

        name_pos = {f: k for k, f in enumerate(names)}
        v_pair = np.zeros(len(self.flag_pairs), dtype=np.float32)
        for j, (a, b) in enumerate(self.flag_pairs):
            ia, ib = name_pos[a], name_pos[b]
            # Co-occurrence *within the window*, not on the same instruction:
            # a secret load and its transmitter are different instructions.
            v_pair[j] = 1.0 if (F[:, ia].any() and F[:, ib].any()) else 0.0

        flagged = np.where(F.any(axis=1))[0]
        if flagged.size >= 2:
            gaps = np.diff(flagged).astype(np.float32)
            dist = np.array([gaps.min() / n, gaps.mean() / n,
                             flagged.size / n,
                             (flagged[-1] - flagged[0]) / n], dtype=np.float32)
        else:
            dist = np.array([0.0, 0.0, flagged.size / n, 0.0], dtype=np.float32)

        return np.concatenate([v_op, v_bg, v_pair, dist])

    def transform(self, records) -> np.ndarray:
        return np.vstack([self.transform_one(r["sequence"], r.get("arch", "unknown"))
                          for r in records])


def build_space(records, engines=None, **kw) -> CandidateFeatureSpace:
    """Fit a candidate space on record dicts carrying `sequence` and `arch`."""
    return CandidateFeatureSpace(engines or load_engines(), **kw).fit(records)
