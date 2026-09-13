#!/usr/bin/env python3
"""
export_learned_features.py — dump the Phase-1 learned encoder's internals to
JSON for inspection: vocabulary, static per-token embeddings, nearest-neighbor
structure (what the model learned with zero hand labels), and a worked
contextual-embedding example on a real sequence.

Two learned-feature tiers exist in this repo:
  1. AsmEncoder (asm_encoder.py)  — static PPMI co-occurrence + truncated SVD,
     one fixed vector per normalized-instruction token (word2vec/GloVe-style).
  2. MlmEncoder (train_mlm.py)    — a small BERT-style Transformer trained with
     masked-token prediction; embeddings are CONTEXTUAL (the same token gets a
     different vector depending on its neighbors), used throughout the
     verification audit's ablations (spec/mlm.pt, spec/mlm_large.pt).

This script exports tier 2 (the one actually used downstream), since it's the
richer/more interesting artifact — its "static" view here is just the token
embedding table (tok_emb.weight) before the Transformer layers add context.

Run:  python3 spec/export_learned_features.py [--mlm-path spec/mlm_large.pt] [--out spec/learned_features_export.json]
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine          # noqa: E402
from asm_tokenizer import AsmTokenizer     # noqa: E402
from train_mlm import MlmEncoder, load as load_jsonl  # noqa: E402

SPECIAL = {"<pad>", "<mask>", "<unk>"}

# Curated opcodes to show nearest-neighbor structure for — picked to span the
# categories the classifier cares about (loads, stores, branches, fences,
# cache probes, calls/returns) so the neighbor lists are actually interpretable.
PROBE_PREFIXES = [
    "movq <mem", "movq <reg", "ldr <reg", "str <reg",
    "cmp", "je ", "jne ", "jmp", "call", "ret",
    "lfence", "mfence", "clflush", "shl", "shr",
]


def nearest_neighbors(emb: np.ndarray, idx: int, k: int = 5):
    v = emb[idx]
    denom = (np.linalg.norm(emb, axis=1) * np.linalg.norm(v) + 1e-9)
    sims = (emb @ v) / denom
    order = np.argsort(-sims)
    out = []
    for j in order:
        if j == idx:
            continue
        out.append(j)
        if len(out) >= k:
            break
    return out, sims


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mlm-path", default=str(ROOT / "spec" / "mlm_large.pt"))
    ap.add_argument("--out", default=str(ROOT / "spec" / "learned_features_export.json"))
    ap.add_argument("--k-neighbors", type=int, default=5)
    ap.add_argument("--example-index", type=int, default=0,
                    help="index into v54_test.jsonl for the worked contextual example")
    args = ap.parse_args()

    model = MlmEncoder.load(args.mlm_path)
    id_to_tok = {i: t for t, i in model.vocab.items()}
    n_vocab = len(model.vocab)

    # Static token embedding table (pre-Transformer) — tok_emb.weight, [vocab, dim].
    tok_emb = model.tok_emb.weight.detach().cpu().numpy().astype(np.float32)

    tokens_ordered = [id_to_tok[i] for i in range(n_vocab)]
    real_tokens = [t for t in tokens_ordered if t not in SPECIAL]

    # ---- nearest-neighbor structure for curated probe opcodes ----
    neighbor_report = {}
    for prefix in PROBE_PREFIXES:
        matches = [t for t in real_tokens if t.startswith(prefix)]
        for tok in matches[:2]:            # cap so the export stays readable
            idx = model.vocab[tok]
            nbr_idx, sims = nearest_neighbors(tok_emb, idx, k=args.k_neighbors)
            neighbor_report[tok] = [
                {"neighbor": id_to_tok[j], "cosine_similarity": round(float(sims[j]), 4)}
                for j in nbr_idx
            ]

    # ---- worked contextual example: same token, different context ----
    engine = load_engine("base.json")
    tok = AsmTokenizer(engine)
    test_rows = load_jsonl(ROOT / "v54" / "data" / "v54_test.jsonl")
    r = test_rows[args.example_index]
    seq = r["sequence"]
    norm_toks = tok.tokenize_sequence(seq)
    ctx_emb = model.embed_instructions(norm_toks)   # [n, dim], CONTEXTUAL

    worked_example = {
        "source_label": r["label"],
        "arch": r.get("arch", "unknown"),
        "raw_instructions": seq[: len(norm_toks)],
        "normalized_tokens": norm_toks,
        "contextual_embedding_norms": [round(float(np.linalg.norm(v)), 4) for v in ctx_emb],
        "note": (
            "Each instruction's embedding here comes from running the WHOLE "
            "sequence through the Transformer — the same normalized token "
            "(e.g. 'cmp <reg> <reg>') gets a DIFFERENT vector depending on "
            "what surrounds it. Compare this to the static 'embeddings' table "
            "below, which has exactly one fixed vector per token regardless "
            "of context."
        ),
    }
    # Show the actual vector for the first and last instruction in this example
    # (small enough to include in full for a couple of positions).
    if len(ctx_emb) > 0:
        worked_example["first_instruction_vector"] = {
            "token": norm_toks[0],
            "embedding": [round(float(x), 5) for x in ctx_emb[0]],
        }
        worked_example["last_instruction_vector"] = {
            "token": norm_toks[-1],
            "embedding": [round(float(x), 5) for x in ctx_emb[-1]],
        }

    out = {
        "model": "MlmEncoder — Phase 1 contextual masked-LM Transformer (spec/train_mlm.py)",
        "checkpoint": str(Path(args.mlm_path).resolve().relative_to(ROOT)),
        "how_it_was_learned": (
            "Self-supervised, no vulnerability labels used. Every instruction in the "
            "corpus is normalized (asm_tokenizer.py: opcode + operand KINDS, e.g. "
            "'movq <mem-idx> <reg>' — registers/immediates/memory operands are "
            "collapsed to placeholders so the model sees structure, not literal "
            "register names). Each normalized string is one vocabulary token "
            "(train_mlm.build_vocab, min_count=5). A window of consecutive tokens "
            "is fed through a small BERT-style Transformer encoder; 15% of tokens "
            "are replaced with <mask> and the model is trained with cross-entropy "
            "loss to predict the ORIGINAL token from its surrounding context "
            "(masked-language-modeling, same objective as BERT). Nothing in this "
            "objective ever sees a class label (SPECTRE_V1, MDS, etc.) — the model "
            "only ever tries to guess a hidden instruction from its neighbors."
        ),
        "config": {
            "vocab_size": model.vocab_size,
            "embedding_dim": model.dim,
            "transformer_layers": model.layers,
            "attention_heads": model.heads,
            "max_sequence_len": model.max_len,
        },
        "vocab_size_actual": n_vocab,
        "special_tokens": sorted(SPECIAL),
        "num_real_tokens": len(real_tokens),
        "nearest_neighbor_examples": neighbor_report,
        "worked_contextual_example": worked_example,
        "static_token_embeddings": {
            t: [round(float(x), 5) for x in tok_emb[model.vocab[t]]]
            for t in real_tokens
        },
    }

    Path(args.out).write_text(json.dumps(out, indent=2))
    size_kb = Path(args.out).stat().st_size / 1024
    print(f"wrote {args.out} ({size_kb:.1f} KB)")
    print(f"vocab={n_vocab}  dim={model.dim}  layers={model.layers}  heads={model.heads}")
    print(f"nearest-neighbor examples for {len(neighbor_report)} probe tokens")


if __name__ == "__main__":
    main()
