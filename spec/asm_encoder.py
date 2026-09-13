#!/usr/bin/env python3
"""
asm_encoder.py — self-supervised assembly encoder (Phase 1, CPU tier).

Learns per-instruction embeddings from the corpus with no hand-picked features:
normalized instruction tokens (asm_tokenizer) -> windowed co-occurrence ->
positive PMI matrix -> truncated SVD -> dense embeddings. This is a fast,
deterministic, GPU-free instruction2vec/GloVe-style representation.

A sequence embedding is the mean of its instruction-token embeddings. Fit only
on training sequences (no test leakage); OOV tokens map to zero.

The heavier masked-LM Transformer variant (for the GPU cluster) lives in
``train_mlm.py`` and produces embeddings with the same ``.embed_sequence`` API.
"""

from __future__ import annotations

import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Dict, List

import numpy as np
from scipy import sparse
from sklearn.decomposition import TruncatedSVD

from asm_tokenizer import AsmTokenizer
from isa_spec import SpecEngine


class AsmEncoder:
    def __init__(self, dim: int = 64, window: int = 2, min_count: int = 5,
                 seed: int = 42):
        self.dim = dim
        self.window = window
        self.min_count = min_count
        self.seed = seed
        self.vocab: Dict[str, int] = {}
        self.embeddings: np.ndarray | None = None  # [vocab, dim]

    # ---- fit ------------------------------------------------------------
    def fit(self, tokenized_sequences: List[List[str]]) -> "AsmEncoder":
        # Vocabulary (drop rare tokens).
        counts: Counter = Counter()
        for seq in tokenized_sequences:
            counts.update(seq)
        vocab_tokens = [t for t, c in counts.items() if c >= self.min_count]
        vocab_tokens.sort()
        self.vocab = {t: i for i, t in enumerate(vocab_tokens)}
        V = len(self.vocab)
        if V == 0:
            raise ValueError("empty vocabulary after min_count filter")

        # Windowed co-occurrence counts.
        cooc: Dict[tuple, float] = defaultdict(float)
        for seq in tokenized_sequences:
            ids = [self.vocab[t] for t in seq if t in self.vocab]
            n = len(ids)
            for i, wi in enumerate(ids):
                lo, hi = max(0, i - self.window), min(n, i + self.window + 1)
                for j in range(lo, hi):
                    if j == i:
                        continue
                    cooc[(wi, ids[j])] += 1.0

        if not cooc:
            raise ValueError("no co-occurrences; corpus too small for window")

        rows, cols, vals = zip(*[(r, c, v) for (r, c), v in cooc.items()])
        M = sparse.csr_matrix((vals, (rows, cols)), shape=(V, V))

        # Positive PMI: log( P(i,j) / (P(i) P(j)) ), clipped at 0.
        total = M.sum()
        row_sum = np.asarray(M.sum(axis=1)).ravel()
        col_sum = np.asarray(M.sum(axis=0)).ravel()
        M = M.tocoo()
        pmi_vals = np.log(
            np.maximum(M.data, 1e-12) * total
            / (row_sum[M.row] * col_sum[M.col] + 1e-12)
        )
        pmi_vals = np.maximum(pmi_vals, 0.0)
        keep = pmi_vals > 0
        ppmi = sparse.csr_matrix(
            (pmi_vals[keep], (M.row[keep], M.col[keep])), shape=(V, V)
        )

        d = min(self.dim, max(2, V - 1))
        svd = TruncatedSVD(n_components=d, random_state=self.seed)
        emb = svd.fit_transform(ppmi)   # [V, d]
        if d < self.dim:                 # pad if vocab tiny
            emb = np.pad(emb, ((0, 0), (0, self.dim - d)))
        self.embeddings = emb.astype(np.float32)
        return self

    # ---- encode ---------------------------------------------------------
    def embed_sequence(self, tokens: List[str]) -> np.ndarray:
        assert self.embeddings is not None, "encoder not fit"
        vecs = [self.embeddings[self.vocab[t]] for t in tokens if t in self.vocab]
        if not vecs:
            return np.zeros(self.dim, dtype=np.float32)
        return np.mean(vecs, axis=0).astype(np.float32)

    # ---- persistence ----------------------------------------------------
    def save(self, path: str | Path):
        path = Path(path)
        np.savez(path, embeddings=self.embeddings,
                 vocab_tokens=np.array(list(self.vocab.keys())),
                 meta=np.array([self.dim, self.window, self.min_count, self.seed]))

    @classmethod
    def load(cls, path: str | Path) -> "AsmEncoder":
        d = np.load(Path(path), allow_pickle=True)
        dim, window, min_count, seed = [int(x) for x in d["meta"]]
        enc = cls(dim=dim, window=window, min_count=min_count, seed=seed)
        enc.embeddings = d["embeddings"]
        enc.vocab = {t: i for i, t in enumerate(d["vocab_tokens"].tolist())}
        return enc


def fit_from_jsonl(paths: List[Path], engine: SpecEngine, **kw) -> AsmEncoder:
    tok = AsmTokenizer(engine)
    seqs = []
    for p in paths:
        if not Path(p).exists():
            continue
        for line in open(p):
            line = line.strip()
            if line:
                r = json.loads(line)
                seqs.append(tok.tokenize_sequence(r.get("sequence", [])))
    return AsmEncoder(**kw).fit(seqs)
