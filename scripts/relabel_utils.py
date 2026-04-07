#!/usr/bin/env python3
import json
import re
import sys
import argparse
from pathlib import Path
import networkx as nx
from typing import List, Dict, Any

# --- Semantic Analysis ---

def get_semantic_type_from_gadgets(instr_obj: Dict[str, Any]) -> str:
    t = instr_obj.get("semantic_type", "COMPUTE")
    if t in ["ARITHMETIC", "COMPARE"]:
        return "COMPUTE"
    return t

def get_semantic_type_from_asm(asm_line: str) -> str:
    """
    Infers semantic type (BRANCH, LOAD, STORE, COMPUTE) from an assembly string.
    Supports basic ARM64 and x86_64 mnemonics.
    """
    parts = asm_line.strip().split()
    if not parts:
        return "COMPUTE"
    
    # Remove label suffix if present (e.g. "LBB0_1:")
    mnemonic = parts[0].lower().rstrip(":")
    
    # ARM64 & x86_64 Branching
    if mnemonic.startswith("b") or mnemonic.startswith("j") or mnemonic in [
        "ret", "retq", "call", "callq", "cbz", "cbnz", "tbz", "tbnz", "bl", "blr"
    ]:
        return "BRANCH"
    
    # Load
    if mnemonic.startswith("ldr") or mnemonic.startswith("ldp") or mnemonic in ["pop", "popq", "mov", "movq", "movl"]:
        # Heuristic: mov is often a load/copy. In strict load/store models, mov from mem is load.
        # Without operand parsing, treating mov as LOAD/COMPUTE is ambiguous.
        # For this purpose, let's treat standard loads.
        # Note: 'mov' might be register-register (COMPUTE) or load (LOAD). 
        # SpecExec gadgets often distinguish LOAD specifically for cache side effects.
        # A safe bet for simple CFG matching is usually to treat memory ops distinct from compute.
        # Let's stick to explicit loads for now, or check operands for brackets [] or ().
        if "[" in asm_line or "(" in asm_line:
             if mnemonic.startswith("mov"): return "LOAD" # Approximation
        return "LOAD"

    # Store
    if mnemonic.startswith("str") or mnemonic.startswith("stp") or mnemonic in ["push", "pushq"]:
        return "STORE"
        
    # Compute (Arithmetic, Logical, Compare, etc.)
    return "COMPUTE"

def build_cfg_from_semantics(semantic_seq: List[str]) -> nx.DiGraph:
    G = nx.DiGraph()
    for i, sem_type in enumerate(semantic_seq):
        G.add_node(i, type=sem_type)
    
    for i in range(len(semantic_seq)):
        current_type = semantic_seq[i]
        if current_type != "BRANCH":
            if i + 1 < len(semantic_seq):
                G.add_edge(i, i + 1)
    return G

def compare_cfgs(g_window: nx.DiGraph, g_vuln: nx.DiGraph) -> bool:
    nm = nx.algorithms.isomorphism.categorical_node_match("type", "COMPUTE")
    matcher = nx.algorithms.isomorphism.DiGraphMatcher(g_window, g_vuln, node_match=nm)
    return matcher.subgraph_is_isomorphic()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=Path("data/dataset/merged_dataset_v4.jsonl"))
    parser.add_argument("--output", type=Path, default=Path("data/dataset/merged_dataset_v5.jsonl"))
    parser.add_argument("--gadgets", type=Path, default=Path("githubCrawl/similarity_analysis/known_vulnerability_gadgets.json"))
    args = parser.parse_args()

    print(f"Loading gadgets from {args.gadgets}...")
    with open(args.gadgets) as f:
        vuln_data = json.load(f)

    vuln_cfgs = []
    for key, entry in vuln_data.items():
        instructions = entry.get("instructions", [])
        sem_seq = [get_semantic_type_from_gadgets(instr) for instr in instructions]
        cfg = build_cfg_from_semantics(sem_seq)
        vuln_cfgs.append({
            "name": entry.get("name", key),
            "type": entry.get("vulnerability_type", "UNKNOWN"),
            "cfg": cfg,
            "seq_len": len(sem_seq)
        })

    print(f"Processing {args.input} -> {args.output}...")
    
    changed_count = 0
    total_count = 0
    benign_count = 0
    
    with open(args.input, 'r') as fin, open(args.output, 'w') as fout:
        for line in fin:
            if not line.strip(): continue
            rec = json.loads(line)
            total_count += 1
            
            lbl = rec.get("label")
            vlbl = rec.get("vuln_label")
            
            # Check if this needs relabeling
            # Target: 'vuln', 'benign' labels that correspond to utils code
            # In merged_dataset_v4, 'label' is often 'vuln' for everyone, but 'vuln_label' is specific.
            # We want to target rows where vuln_label is UNKNOWN or effectively unclassified.
            
            needs_scan = False
            known_classes = [
                "INCEPTION", "SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4", 
                "RETBLEED", "MDS", "L1TF", "BRANCH_HISTORY_INJECTION",
                "BENIGN" # Assume existing BENIGNs from GitHub are trusted or handled separately
            ]
            
            # Fix label consistency first
            if vlbl in known_classes and vlbl != "BENIGN":
                rec["label"] = vlbl
            
            # Target for scanning: utils_arm64 or explicit UNKNOWN
            if "utils_arm64" in rec.get("source_file", ""):
                 needs_scan = True
            elif vlbl == "UNKNOWN" or vlbl == "vuln" or vlbl == "benign":
                 needs_scan = True
                 
            # Don't scan if we already have a solid class, unless it's the utils file we want to verify
            if vlbl in known_classes and not "utils_arm64" in rec.get("source_file", ""):
                needs_scan = False

            if needs_scan:
                seq = rec.get("sequence", [])
                # Infer semantics
                sem_seq = [get_semantic_type_from_asm(line) for line in seq]
                cand_cfg = build_cfg_from_semantics(sem_seq)
                
                matches = []
                for v in vuln_cfgs:
                    if len(sem_seq) < v["seq_len"]: continue
                    if compare_cfgs(cand_cfg, v["cfg"]):
                        matches.append(v["type"])
                
                if matches:
                    # Found a vulnerability match!
                    # Use the first match
                    new_vuln = matches[0]
                    rec["label"] = new_vuln
                    rec["vuln_label"] = new_vuln
                    print(f"  [Relabeled] {rec.get('source_file')} : {lbl} -> {new_vuln} (Matches: {matches})")
                else:
                    # No match -> Benign
                    rec["label"] = "BENIGN"
                    rec["vuln_label"] = "BENIGN"
                    benign_count += 1
                
                changed_count += 1
            
            fout.write(json.dumps(rec) + "\n")

    print(f"Done. Processed {total_count} records.")
    print(f"Relabeled {changed_count} records.")
    print(f"  - Set to BENIGN: {benign_count}")
    print(f"  - Set to Vulnerable: {changed_count - benign_count}")

if __name__ == "__main__":
    main()

