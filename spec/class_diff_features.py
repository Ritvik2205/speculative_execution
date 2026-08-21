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
