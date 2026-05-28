#!/usr/bin/env python3
"""Construct Assembly Dependence Graphs (ADGs) from assembly windows."""
import argparse
import json
from pathlib import Path
from typing import Dict, List, Tuple

import networkx as nx

from wukong_approach.utils.asm_parsing import load_instruction_windows, normalize_operand


class ADGBuilder:
    def __init__(self, include_memory_edges: bool = True):
        self.include_memory_edges = include_memory_edges

    def build_graph(self, instructions: List[Dict]) -> nx.DiGraph:
        g = nx.DiGraph()
        # Add nodes
        for idx, instr in enumerate(instructions):
            g.add_node(idx, **instr)
        # Add sequential edges
        for idx in range(len(instructions) - 1):
            g.add_edge(idx, idx + 1, kind="seq")
        # Data dependencies via register def-use
        last_defs: Dict[str, int] = {}
        for idx, instr in enumerate(instructions):
            defs = set(instr.get("defines", []))
            uses = set(instr.get("uses", []))
            for reg in uses:
                if reg in last_defs:
                    g.add_edge(last_defs[reg], idx, kind="reg")
            for reg in defs:
                last_defs[reg] = idx
            if self.include_memory_edges:
                self._handle_memory_edges(g, idx, instr.get("mem_access", {}))
        return g

    def _handle_memory_edges(self, g: nx.DiGraph, idx: int, mem_access: Dict[str, List[str]]):
        for base_reg in mem_access.get("bases", []):
            for predecessor in g.nodes:
                defs = g.nodes[predecessor].get("defines", [])
                if base_reg in defs and predecessor != idx:
                    g.add_edge(predecessor, idx, kind="mem")


def parse_raw_sequence(seq: List[str]) -> List[Dict]:
    parsed = []
    for line in seq:
        tokens = line.strip().split()
        if not tokens:
            continue
        opcode = tokens[0]
        operands = [tok.strip(",") for tok in tokens[1:]]
        defines, uses = classify_operands(opcode, operands)
        mem_access = {
            "bases": [normalize_operand(op) for op in operands if "[" in op or op.startswith("[")]
        }
        parsed.append({
            "opcode": opcode,
            "operands": operands,
            "defines": list(defines),
            "uses": list(uses),
            "mem_access": mem_access,
            "raw": line,
        })
    return parsed


def classify_operands(opcode: str, operands: List[str]) -> Tuple[List[str], List[str]]:
    defs, uses = [], []
    if operands:
        defs.append(normalize_operand(operands[0]))
        uses.extend(normalize_operand(op) for op in operands[1:])
    return defs, uses


def main():
    ap = argparse.ArgumentParser(description="Build ADGs from assembly windows")
    ap.add_argument("--windows", type=Path, required=True, help="JSONL with assembly windows")
    ap.add_argument("--out", type=Path, required=True, help="Output JSONL of graphs (node-link format)")
    args = ap.parse_args()

    graphs = []
    for entry in load_instruction_windows(args.windows):
        seq = entry["sequence"]
        parsed = parse_raw_sequence(seq)
        builder = ADGBuilder()
        graph = builder.build_graph(parsed)
        graphs.append({
            "graph": nx.node_link_data(graph),
            "meta": {k: entry[k] for k in entry if k != "sequence"}
        })

    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("w") as f:
        for graph_record in graphs:
            f.write(json.dumps(graph_record) + "\n")
    print(f"Wrote {len(graphs)} ADGs to {args.out}")


if __name__ == "__main__":
    main()
