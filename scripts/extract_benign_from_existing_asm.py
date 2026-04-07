#!/usr/bin/env python3
"""
Extract benign samples from existing assembly files in githubCrawl/benign_asm.

This is faster than recompiling repositories since the assembly already exists.
"""

import argparse
import json
import random
import re
from pathlib import Path
from typing import List, Dict
from collections import Counter


def log(msg: str):
    print(msg, flush=True)


def extract_windows(asm_path: Path, window_size: int = 30, stride: int = 15, min_window: int = 12) -> List[Dict]:
    """Extract instruction windows from assembly file."""
    windows = []
    
    try:
        with open(asm_path, 'r', errors='ignore') as f:
            lines = f.readlines()
    except Exception:
        return []
    
    # Filter to instruction lines only
    instructions = []
    for line in lines:
        line = line.strip()
        # Skip empty, comments, labels, directives
        if not line or line.startswith(('.', '#', ';', '/')) or line.endswith(':'):
            continue
        # Skip lines that look like data or directives
        if any(x in line.lower() for x in ['.word', '.byte', '.ascii', '.section', '.globl', '.type', '.align', '.size', '.file', '.loc']):
            continue
        # Skip debug info
        if line.startswith('@') or line.startswith('//'):
            continue
        instructions.append(line)
    
    # Need enough instructions to form at least one valid window
    if len(instructions) < min_window:
        return []
    
    # Extract sliding windows
    for i in range(0, len(instructions) - min_window + 1, stride):
        window = instructions[i:i + window_size]
        if len(window) >= min_window:
            windows.append({
                'sequence': window,
                'source_file': str(asm_path),
                'start_line': i,
                'window_size': len(window),
            })
    
    return windows


def detect_arch_from_path(path: Path) -> str:
    """Detect architecture from path."""
    path_str = str(path).lower()
    if 'arm64' in path_str or 'aarch64' in path_str:
        return 'arm64'
    elif 'x86_64' in path_str or 'x86-64' in path_str:
        return 'x86_64'
    else:
        return 'unknown'


def extract_group_from_path(path: Path) -> str:
    """Extract group name (owner/repo) from path."""
    parts = path.parts
    # Look for pattern like .../owner/repo/file.s
    for i, part in enumerate(parts):
        if part in ('gcc', 'clang') and i + 3 < len(parts):
            # Found compiler, next is opt level, then owner, then repo
            owner = parts[i + 2]
            repo = parts[i + 3]
            return f"github_{owner}_{repo}"
    return "github_benign"


def main():
    parser = argparse.ArgumentParser(description="Extract benign samples from existing assembly")
    parser.add_argument("--asm-dir", type=Path, default=Path("githubCrawl/benign_asm"),
                        help="Directory with assembly files")
    parser.add_argument("--output", type=Path, default=Path("data/benign_samples_v24.jsonl"),
                        help="Output JSONL file")
    parser.add_argument("--target-samples", type=int, default=20000,
                        help="Target number of samples")
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()
    
    random.seed(args.seed)
    
    log("=" * 60)
    log("EXTRACT BENIGN SAMPLES FROM EXISTING ASSEMBLY")
    log("=" * 60)
    log(f"ASM directory: {args.asm_dir}")
    log(f"Output: {args.output}")
    log(f"Target samples: {args.target_samples}")
    
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    # Find all assembly files
    asm_files = list(args.asm_dir.glob("**/*.s"))
    log(f"\nFound {len(asm_files)} assembly files")
    
    all_samples = []
    arch_counts = Counter()
    group_counts = Counter()
    
    for i, asm_path in enumerate(asm_files):
        if (i + 1) % 100 == 0:
            log(f"  Processed {i+1}/{len(asm_files)} files, {len(all_samples)} samples")
        
        windows = extract_windows(asm_path)
        arch = detect_arch_from_path(asm_path)
        group = extract_group_from_path(asm_path)
        
        for w in windows:
            w['arch'] = arch
            w['label'] = 'BENIGN'
            w['vuln_label'] = 'BENIGN'
            w['group'] = group
        
        all_samples.extend(windows)
        arch_counts[arch] += len(windows)
        group_counts[group] += len(windows)
        
        if len(all_samples) >= args.target_samples:
            log(f"\nReached target of {args.target_samples} samples")
            break
    
    # Shuffle and potentially subsample
    random.shuffle(all_samples)
    if len(all_samples) > args.target_samples:
        all_samples = all_samples[:args.target_samples]
    
    # Write output
    log(f"\nWriting {len(all_samples)} samples to {args.output}...")
    with open(args.output, 'w') as f:
        for sample in all_samples:
            f.write(json.dumps(sample) + '\n')
    
    # Summary
    log("\n" + "=" * 60)
    log("SUMMARY")
    log("=" * 60)
    log(f"Total samples: {len(all_samples)}")
    
    log("\nArchitecture distribution:")
    for arch, count in sorted(arch_counts.items()):
        log(f"  {arch}: {count}")
    
    log(f"\nUnique groups: {len(group_counts)}")
    log(f"\nOutput: {args.output}")
    log("=" * 60)


if __name__ == "__main__":
    main()
