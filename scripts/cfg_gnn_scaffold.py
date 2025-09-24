#!/usr/bin/env python3
"""
Scaffold for building simple CFG/DFG representations from assembly windows.
This version uses a trivial sequential CFG and placeholder DFG edges.
"""
import argparse
import json
from pathlib import Path
import re
import networkx as nx


def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


REG_RE = re.compile(r"\b([wx])[0-9]+\b", re.IGNORECASE)


def build_graph(seq):
    g = nx.DiGraph()
    for i, line in enumerate(seq):
        g.add_node(i, text=line)
        if i > 0:
            g.add_edge(i - 1, i, kind="seq")
    # Placeholder DFG: connect producers to consumers by register name appearance
    for i, line_i in enumerate(seq):
        regs_i = set(REG_RE.findall(line_i))
        for j in range(i + 1, min(i + 6, len(seq))):
            regs_j = set(REG_RE.findall(seq[j]))
            if regs_i & regs_j:
                g.add_edge(i, j, kind="dfg")
    return g


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/arm64_windows.jsonl"))
    ap.add_argument("--out", type=Path, default=Path("data/dataset/arm64_graphs.jsonl"))
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)
    count = 0
    with args.out.open("w") as fout:
        for rec in load_jsonl(args.inp):
            seq = rec.get("sequence", [])
            g = build_graph(seq)
            nodes = {int(n): g.nodes[n]["text"] for n in g.nodes}
            edges = [(int(u), int(v), g.edges[u, v]["kind"]) for u, v in g.edges]
            out = {
                "source_file": rec.get("source_file"),
                "label": rec.get("label"),
                "nodes": nodes,
                "edges": edges,
            }
            fout.write(json.dumps(out) + "\n")
            count += 1
    print(f"Wrote {count} graphs to {args.out}")


if __name__ == "__main__":
    main()


