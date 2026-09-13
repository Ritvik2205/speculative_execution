#!/usr/bin/env python3
"""Symbolize assembly tokens and train/apply Doc2Vec embeddings."""
import argparse
import json
from pathlib import Path

from gensim.models.doc2vec import Doc2Vec, TaggedDocument

from wukong_approach.utils.asm_parsing import load_instruction_windows, normalize_operand


def symbolize_sequence(seq):
    symbolic = []
    for instr in seq:
        tokens = instr.strip().split()
        if not tokens:
            continue
        opcode = tokens[0].lower()
        operands = [normalize_operand(tok.strip(",")) for tok in tokens[1:]]
        sym_operands = [f"VAR{i}" if op.startswith("[") or op.isdigit() else op for i, op in enumerate(operands)]
        symbolic.append([opcode] + sym_operands)
    return symbolic


def build_corpus(windows_path: Path):
    docs = []
    for idx, window in enumerate(load_instruction_windows(windows_path)):
        sym = symbolize_sequence(window["sequence"])
        flat = [tok for instr in sym for tok in instr]
        docs.append(TaggedDocument(words=flat, tags=[f"win_{idx}"]))
    return docs


def train_doc2vec(docs, vector_size=64, epochs=20):
    model = Doc2Vec(vector_size=vector_size, min_count=1, workers=4)
    model.build_vocab(docs)
    model.train(docs, total_examples=len(docs), epochs=epochs)
    return model


def main():
    ap = argparse.ArgumentParser(description="Create Doc2Vec embeddings for symbolic assembly tokens")
    ap.add_argument("--windows", type=Path, required=True, help="Assembly windows JSONL")
    ap.add_argument("--model-out", type=Path, required=True, help="Path to save Doc2Vec model")
    ap.add_argument("--vector-size", type=int, default=64)
    ap.add_argument("--epochs", type=int, default=20)
    ap.add_argument("--export-token-vectors", type=Path, help="Optional JSONL with per-window embeddings")
    args = ap.parse_args()

    docs = build_corpus(args.windows)
    model = train_doc2vec(docs, vector_size=args.vector_size, epochs=args.epochs)
    args.model_out.parent.mkdir(parents=True, exist_ok=True)
    model.save(str(args.model_out))
    print(f"Saved Doc2Vec model to {args.model_out}")

    if args.export_token_vectors:
        with args.export_token_vectors.open("w") as f:
            for doc in docs:
                vec = model.infer_vector(doc.words).tolist()
                f.write(json.dumps({
                    "tag": doc.tags[0],
                    "embedding": vec
                }) + "\n")
        print(f"Exported embeddings to {args.export_token_vectors}")


if __name__ == "__main__":
    main()
