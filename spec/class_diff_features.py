#!/usr/bin/env python3
"""class_diff_features.py — Phase 1/2 of SPECDISCOVER_LEARNED_FEATURES_PLAN.md.

Replaces MlmEncoder.embed_sequence's flat mean-pool (which dilutes a handful
of attack-divergent instructions with whatever housekeeping surrounds them)
with two independent, separately-ablatable mechanisms:

  diff_embed_sequence   — pool only instructions that DON'T closely match a
                           per-class benign representative (Alik's proposal:
                           class-representative differencing). A kept
                           instruction's local neighborhood is also kept
                           (`dilate`), so a leak sitting inside an
                           otherwise-benign conditional/loop isn't stripped
                           along with the conditional itself.
  pruned_embed_sequence — greedily drop near-duplicate instructions within a
                           single sequence before pooling (Speaker 1's
                           original redundancy hypothesis, tested in
                           isolation from the benign-diff mechanism).
  diff_pruned_embed_sequence — both, composed: diff first, then dedup
                           within the surviving attack-divergent subset.

All three take already-tokenized instruction lists (AsmTokenizer output) and
a trained MlmEncoder, matching embed_sequence's calling convention so they
drop into spec/ablation_spec_features.py as additional feature-set configs.
"""

from __future__ import annotations

import numpy as np


def _cos_sim_matrix(a: np.ndarray, b: np.ndarray) -> np.ndarray:
    an = a / (np.linalg.norm(a, axis=1, keepdims=True) + 1e-8)
    bn = b / (np.linalg.norm(b, axis=1, keepdims=True) + 1e-8)
    return an @ bn.T


def build_class_representatives(rows, tokenized, mlm) -> dict:
    """Per label, pick the record whose mean-pooled embedding is closest
    (cosine) to that label's centroid — "sitting in the middle" of the
    class, per the representative-graph idea from the call. Returns
    {label: tokens} so the caller can re-embed at whatever granularity it
    needs (mean-pooled or per-instruction)."""
    by_label: dict[str, list] = {}
    for r, toks in zip(rows, tokenized):
        by_label.setdefault(r["label"], []).append(toks)
    reps = {}
    for label, tok_lists in by_label.items():
        vecs = np.vstack([mlm.embed_sequence(t) for t in tok_lists])
        centroid = vecs.mean(0, keepdims=True)
        sims = _cos_sim_matrix(vecs, centroid).ravel()
        reps[label] = tok_lists[int(np.argmax(sims))]
    return reps


def _dilate_mask(mask: np.ndarray, radius: int) -> np.ndarray:
    if radius <= 0 or mask.size == 0:
        return mask
    out = mask.copy()
    for i in np.where(mask)[0]:
        lo, hi = max(0, i - radius), min(mask.size, i + radius + 1)
        out[lo:hi] = True
    return out


def diff_keep_mask(H: np.ndarray, benign_repr_H: np.ndarray,
                    threshold: float = 0.90, dilate: int = 2) -> np.ndarray:
    """True where instruction i is NOT well-matched by anything in the
    benign representative (i.e. attack-divergent), dilated by `dilate`
    positions on each side."""
    if H.shape[0] == 0:
        return np.zeros(0, dtype=bool)
    if benign_repr_H.shape[0] == 0:
        return np.ones(H.shape[0], dtype=bool)
    max_sim = _cos_sim_matrix(H, benign_repr_H).max(axis=1)
    return _dilate_mask(max_sim < threshold, dilate)


def prune_keep_mask(H: np.ndarray, threshold: float = 0.95) -> np.ndarray:
    """Greedy near-duplicate removal: keep instruction 0, then keep any
    later instruction whose similarity to every already-kept instruction is
    below `threshold`."""
    n = H.shape[0]
    if n == 0:
        return np.zeros(0, dtype=bool)
    keep = np.zeros(n, dtype=bool)
    keep[0] = True
    kept_idx = [0]
    for i in range(1, n):
        if _cos_sim_matrix(H[i:i + 1], H[kept_idx]).max() < threshold:
            keep[i] = True
            kept_idx.append(i)
    return keep


def _pool(H: np.ndarray, mask: np.ndarray) -> np.ndarray:
    if H.shape[0] == 0:
        return np.zeros(H.shape[1], dtype=np.float32)
    if not mask.any():
        return H.mean(0).astype(np.float32)   # nothing survived -> fall back to flat mean
    return H[mask].mean(0).astype(np.float32)


def diff_embed_sequence(tokens, mlm, benign_repr_H,
                        threshold: float = 0.90, dilate: int = 2) -> np.ndarray:
    H = mlm.embed_instructions(tokens)
    return _pool(H, diff_keep_mask(H, benign_repr_H, threshold, dilate))


def pruned_embed_sequence(tokens, mlm, threshold: float = 0.95) -> np.ndarray:
    H = mlm.embed_instructions(tokens)
    return _pool(H, prune_keep_mask(H, threshold))


NODE_GATE_FLOOR = 0.15  # matches this project's existing virtual-node down-weight
                        # convention (sigmoid(-2)~=0.12) — soft-suppress, not hard-zero,
                        # so a gated-out node's embedding still contributes a little
                        # rather than vanishing (which would also zero its contribution
                        # to any downstream layer norm / message it sends over edges).


def node_gate_scores(H: np.ndarray, benign_repr_H: np.ndarray,
                     diff_threshold: float = 0.90, dilate: int = 2,
                     prune_threshold: float = 0.95,
                     floor: float = NODE_GATE_FLOOR) -> np.ndarray:
    """Per-node continuous gate in {floor, 1.0}, same two-stage logic as
    diff_pruned_embed_sequence (benign-diff, then redundancy-prune within the
    divergent subset) but returned as per-node weights instead of a pooled
    vector — for gating GINE's per-node MLM features (v56/train_gine_v38.py's
    ``diff_gated``/``diff_gated_both`` node-feature modes) rather than
    collapsing them into one vector, since GINE already consumes per-node
    embeddings directly (no flat mean-pool to fix at that layer)."""
    n = H.shape[0]
    if n == 0:
        return np.zeros(0, dtype=np.float32)
    dmask = diff_keep_mask(H, benign_repr_H, diff_threshold, dilate)
    kept_idx = np.where(dmask)[0]
    final = np.zeros(n, dtype=bool)
    if kept_idx.size > 0:
        local_mask = prune_keep_mask(H[kept_idx], prune_threshold)
        final[kept_idx[local_mask]] = True
    gate = np.full(n, floor, dtype=np.float32)
    gate[final] = 1.0
    return gate


# =============================================================================
# Ensemble agreement gate (Paul, 2026-08 call)
# =============================================================================
# The single-arm gate above lets ONE cosine threshold decide that a position is
# irrelevant and suppress it. Paul's objection: run several parallel decision
# arms and only discard when they agree — "unless all the different approaches
# agree that this needs to be discarded, you don't discard" — which also yields
# a graded retention weight ("more nuanced versions of the same feature") and a
# per-record uncertainty instead of a binary {floor, 1.0} decision.
#
# Vote encoding, per arm, per position:
#     +1  keep        -1  discard        0  abstain
#
# Abstention is load-bearing and NOT the same as voting discard. Two of the five
# arms are deliberately one-directional, because the evidence they carry only
# licenses one conclusion:
#   - `spec_flag`  can only vote KEEP. An instruction carrying a speculation
#     flag is positive evidence of relevance; an instruction *without* one is
#     not evidence of irrelevance (most instructions in a real gadget carry no
#     flag), so it abstains rather than voting discard.
#   - `redundancy` can only vote DISCARD. Being a near-duplicate of an earlier
#     kept position is evidence against carrying new information; being novel
#     is not by itself evidence of relevance, so it abstains.
# Encoding these as symmetric votes would silently let "no flag" and "not a
# duplicate" cancel each other out, which is not what either signal means.

#
# Grounding in the papers Paul sent (all three are noisy-label learning):
#   Co-teaching, NeurIPS 2018        (arXiv 1804.06872)
#   Confident Learning, JAIR 2021    (arXiv 1911.00068)
#   DivideMix, ICLR 2020             (arXiv 2002.07394)
# What we took from each:
#   - DivideMix splits data into clean/noisy but does NOT throw the noisy half
#     away — it keeps it as *unlabeled* data. That is Paul's "it stays", and it
#     is why this gate emits a graded weight instead of a hard drop.
#   - Confident Learning replaces fixed cutoffs with thresholds estimated FROM
#     THE DATA. Our 0.90/0.95 cosine constants are exactly the arbitrary
#     cutoffs it argues against — worse here, because cosine scale differs
#     between the mnemonic and canonical encoders, so one constant cannot be
#     right for both. `calibrate_thresholds` below derives them instead.
#   - Co-teaching has each network select for its PEER rather than for itself,
#     to avoid confirmation bias. Our arms are already heterogeneous rather
#     than two copies of one model, so cross-selection is not directly
#     applicable; noted as the main deviation from the papers.

KEEP, DISCARD, ABSTAIN = 1, -1, 0

ARM_NAMES = ("benign_repr", "benign_knn", "attack_contrast", "spec_flag", "redundancy")

# Flags from the spec taxonomy that indicate an instruction participates in a
# speculative-leak mechanism. Names only — the semantics live in the spec, so
# this list carries no ISA literal.
SPEC_RELEVANT_FLAGS = (
    "is_secret_source", "is_transmitter", "is_cache_probe",
    "is_serializing", "is_timing_source", "is_indirect_branch",
)


class EnsembleContext:
    """Reference material the arms vote against, built ONCE from training data.

    Holds the benign representative (single, matching the existing arm), a
    k-nearest set of benign representatives, and the non-BENIGN class
    representatives. All three are derived from train records only — nothing
    here may be built from the evaluation split.
    """

    def __init__(self, benign_repr_H, benign_knn_H=None, attack_reps_H=None):
        dim = benign_repr_H.shape[1] if benign_repr_H.size else 0
        self.benign_repr_H = benign_repr_H
        self.benign_knn_H = (benign_knn_H if benign_knn_H is not None
                             else np.zeros((0, dim), dtype=np.float32))
        self.attack_reps_H = (attack_reps_H if attack_reps_H is not None
                              else np.zeros((0, dim), dtype=np.float32))


def build_ensemble_context(rows, tokenized, mlm, k_benign: int = 5) -> EnsembleContext:
    """Build the reference sets for the ensemble arms from TRAIN records only.

    `benign_knn_H` stacks the per-instruction embeddings of the k benign records
    closest to the benign centroid, so the `benign_knn` arm doesn't inherit the
    single-representative arm's failure mode (one unlucky exemplar).
    """
    by_label: dict[str, list] = {}
    for r, toks in zip(rows, tokenized):
        by_label.setdefault(r["label"], []).append(toks)

    def _stack(tok_lists):
        mats = [mlm.embed_instructions(t) for t in tok_lists]
        mats = [m for m in mats if m.shape[0] > 0]
        return (np.vstack(mats) if mats
                else np.zeros((0, mlm.dim), dtype=np.float32))

    benign_toks = by_label.get("BENIGN", [])
    if benign_toks:
        vecs = np.vstack([mlm.embed_sequence(t) for t in benign_toks])
        sims = _cos_sim_matrix(vecs, vecs.mean(0, keepdims=True)).ravel()
        order = np.argsort(-sims)
        benign_repr_H = mlm.embed_instructions(benign_toks[int(order[0])])
        knn_H = _stack([benign_toks[i] for i in order[:k_benign]])
    else:
        benign_repr_H = np.zeros((0, mlm.dim), dtype=np.float32)
        knn_H = np.zeros((0, mlm.dim), dtype=np.float32)

    # One representative per attack class, stacked. Label-free at inference:
    # the arm asks "does this position look like ANY attack class?", never
    # "does it look like *its own* class" — the label isn't available at test
    # time and using it would leak.
    attack_mats = []
    for label, tok_lists in by_label.items():
        if label == "BENIGN":
            continue
        vecs = np.vstack([mlm.embed_sequence(t) for t in tok_lists])
        sims = _cos_sim_matrix(vecs, vecs.mean(0, keepdims=True)).ravel()
        best = mlm.embed_instructions(tok_lists[int(np.argmax(sims))])
        if best.shape[0] > 0:
            attack_mats.append(best)
    attack_reps_H = (np.vstack(attack_mats) if attack_mats
                     else np.zeros((0, mlm.dim), dtype=np.float32))

    return EnsembleContext(benign_repr_H, knn_H, attack_reps_H)


def calibrate_thresholds(tokenized, mlm, ctx, percentile: float = 60.0,
                         max_records: int = 400) -> dict:
    """Derive the similarity cutoffs from TRAIN data instead of hardcoding them.

    Confident Learning's central move: don't pick a threshold, estimate one.
    Here the quantity being thresholded is "how similar is this position to
    benign reference material", whose scale depends on the encoder — the
    canonical-op encoder has a 226-token vocabulary vs the mnemonic encoder's
    449, so their cosine distributions are not comparable and a single constant
    cannot be correct for both.

    Returns {'diff_threshold': float, 'knn_threshold': float}, each set at the
    given percentile of the observed similarity distribution, so roughly
    `100 - percentile`% of positions read as benign-divergent regardless of the
    encoder's absolute scale.
    """
    out = {"diff_threshold": 0.90, "knn_threshold": 0.90}
    if not ctx.benign_repr_H.shape[0]:
        return out
    d_vals, k_vals = [], []
    for toks in tokenized[:max_records]:
        H = mlm.embed_instructions(toks)
        if H.shape[0] == 0:
            continue
        d_vals.append(_cos_sim_matrix(H, ctx.benign_repr_H).max(axis=1))
        if ctx.benign_knn_H.shape[0]:
            sim = _cos_sim_matrix(H, ctx.benign_knn_H)
            k = min(5, sim.shape[1])
            k_vals.append(np.sort(sim, axis=1)[:, -k:].mean(axis=1))
    if d_vals:
        out["diff_threshold"] = float(np.percentile(np.concatenate(d_vals), percentile))
    if k_vals:
        out["knn_threshold"] = float(np.percentile(np.concatenate(k_vals), percentile))
    return out


def spec_flag_relevance(lines, engine) -> np.ndarray:
    """Per-instruction bool: does this line carry a speculation-relevant flag?

    `lines` must already be filtered to the instructions the tokenizer kept, so
    positions align 1:1 with the embedding rows.
    """
    idx = [engine.spec_flags[f] for f in SPEC_RELEVANT_FLAGS
           if f in engine.spec_flags]
    out = np.zeros(len(lines), dtype=bool)
    if not idx:
        return out
    for i, line in enumerate(lines):
        cat = engine.classify_opcode(line)
        mem = engine.memory_access_type(line)
        flags = engine.spec_flags_vector(line, cat, mem)
        out[i] = bool(flags[idx].any())
    return out


def _arm_votes(H, ctx, flags, diff_threshold, knn_threshold,
               contrast_margin, prune_threshold, dilate):
    """-> dict {arm_name: int8 votes array of length n}."""
    n = H.shape[0]
    votes = {a: np.zeros(n, dtype=np.int8) for a in ARM_NAMES}

    # benign_repr — the existing single-exemplar arm, unchanged semantics.
    if ctx.benign_repr_H.shape[0]:
        keep = _dilate_mask(
            _cos_sim_matrix(H, ctx.benign_repr_H).max(axis=1) < diff_threshold,
            dilate)
        votes["benign_repr"] = np.where(keep, KEEP, DISCARD).astype(np.int8)

    # benign_knn — same question against k exemplars, mean of their similarities.
    if ctx.benign_knn_H.shape[0]:
        sim = _cos_sim_matrix(H, ctx.benign_knn_H)
        topk = np.sort(sim, axis=1)[:, -min(5, sim.shape[1]):].mean(axis=1)
        keep = _dilate_mask(topk < knn_threshold, dilate)
        votes["benign_knn"] = np.where(keep, KEEP, DISCARD).astype(np.int8)

    # attack_contrast — looks more like an attack exemplar than a benign one?
    # Abstains inside the margin, where the evidence genuinely doesn't separate.
    if ctx.attack_reps_H.shape[0] and ctx.benign_repr_H.shape[0]:
        a = _cos_sim_matrix(H, ctx.attack_reps_H).max(axis=1)
        b = _cos_sim_matrix(H, ctx.benign_repr_H).max(axis=1)
        d = a - b
        v = np.zeros(n, dtype=np.int8)
        v[d > contrast_margin] = KEEP
        v[d < -contrast_margin] = DISCARD
        votes["attack_contrast"] = v

    # spec_flag — KEEP-only (see module note above).
    if flags is not None and len(flags) >= n:
        v = np.zeros(n, dtype=np.int8)
        v[np.asarray(flags[:n], dtype=bool)] = KEEP
        votes["spec_flag"] = v

    # redundancy — DISCARD-only (see module note above).
    novel = prune_keep_mask(H, prune_threshold)
    v = np.zeros(n, dtype=np.int8)
    v[~novel] = DISCARD
    votes["redundancy"] = v

    return votes


def ensemble_gate_scores(H: np.ndarray, ctx: EnsembleContext,
                         flags=None,
                         diff_threshold: float = 0.90,
                         knn_threshold: float = 0.90,
                         contrast_margin: float = 0.02,
                         prune_threshold: float = 0.95,
                         dilate: int = 2,
                         floor: float = NODE_GATE_FLOOR,
                         require_unanimous: bool = True):
    """Per-node retention weight in [floor, 1.0] plus a record-level uncertainty.

    Paul's rule: a position is suppressed to `floor` only when EVERY arm that
    adjudicates votes discard. Any dissent, or any keep vote, lifts the weight
    proportionally — so the output is graded rather than binary.

    Returns (weights[n] float32, uncertainty float). `uncertainty` is the
    fraction of adjudicated positions where the arms disagreed — the "level of
    uncertainty" Paul asked to surface.
    """
    n = H.shape[0]
    if n == 0:
        return np.zeros(0, dtype=np.float32), 0.0

    votes = _arm_votes(H, ctx, flags, diff_threshold, knn_threshold,
                       contrast_margin, prune_threshold, dilate)
    V = np.stack([votes[a] for a in ARM_NAMES], axis=0)     # [n_arms, n]

    n_keep = (V == KEEP).sum(axis=0)
    n_disc = (V == DISCARD).sum(axis=0)
    n_adj = n_keep + n_disc

    weights = np.ones(n, dtype=np.float32)
    adjudicated = n_adj > 0
    # Graded weight = share of adjudicating arms voting keep, rescaled to
    # [floor, 1.0]. Unadjudicated positions keep full weight: no arm claimed
    # they were irrelevant, so nothing licenses suppressing them.
    frac_keep = np.zeros(n, dtype=np.float32)
    frac_keep[adjudicated] = n_keep[adjudicated] / n_adj[adjudicated]
    weights[adjudicated] = floor + (1.0 - floor) * frac_keep[adjudicated]

    if require_unanimous:
        # Explicit unanimity floor: only a clean sweep suppresses fully.
        unanimous_discard = adjudicated & (n_keep == 0)
        weights[unanimous_discard] = floor
        # And a clean sweep the other way is unambiguous full weight.
        weights[adjudicated & (n_disc == 0)] = 1.0

    disagreed = adjudicated & (n_keep > 0) & (n_disc > 0)
    uncertainty = float(disagreed.sum() / max(int(adjudicated.sum()), 1))
    return weights, uncertainty


def diff_pruned_embed_sequence(tokens, mlm, benign_repr_H,
                               diff_threshold: float = 0.90, dilate: int = 2,
                               prune_threshold: float = 0.95) -> np.ndarray:
    H = mlm.embed_instructions(tokens)
    dmask = diff_keep_mask(H, benign_repr_H, diff_threshold, dilate)
    kept_idx = np.where(dmask)[0]
    if kept_idx.size == 0:
        return _pool(H, dmask)
    local_mask = prune_keep_mask(H[kept_idx], prune_threshold)
    final = np.zeros(H.shape[0], dtype=bool)
    final[kept_idx[local_mask]] = True
    return _pool(H, final)
