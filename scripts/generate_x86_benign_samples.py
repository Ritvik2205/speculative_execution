#!/usr/bin/env python3
"""
Generate x86_64 benign samples from existing C files using clang cross-compilation.

This script:
1. Finds C files in repos_benign that have already been cloned
2. Cross-compiles them to x86_64 assembly using clang
3. Extracts instruction windows as benign samples

Clang is better at cross-compilation than GCC for standalone files.
"""

import argparse
import json
import os
import random
import subprocess
from pathlib import Path
from typing import List, Dict, Optional
from collections import Counter


def log(msg: str):
    print(msg, flush=True)


def find_c_files(repo_path: Path, max_files: int = 100) -> List[Path]:
    """Find C source files in a repository."""
    c_files = []
    extensions = {'.c'}  # Only .c files for simplicity
    
    for root, dirs, files in os.walk(repo_path):
        # Skip test and build directories
        dirs[:] = [d for d in dirs if d not in {
            'test', 'tests', 'testing', 'benchmark', 'benchmarks', 
            'examples', 'docs', 'doc', 'build', '.git', 'contrib'
        }]
        
        for f in files:
            if Path(f).suffix.lower() in extensions:
                c_files.append(Path(root) / f)
                if len(c_files) >= max_files:
                    return c_files
    
    return c_files


def compile_to_x86_asm(src_path: Path, output_path: Path) -> bool:
    """Compile a C file to x86_64 assembly using clang."""
    output_path.parent.mkdir(parents=True, exist_ok=True)
    
    # Use clang with permissive flags for cross-compilation
    # -target x86_64-linux-gnu forces x86_64 output
    # -S generates assembly
    # -w suppresses warnings
    # -fno-builtin avoids missing builtin issues
    cmd = [
        "clang",
        "-S",
        "-target", "x86_64-linux-gnu",
        "-O2",  # Use O2 for realistic code
        "-w",  # Suppress warnings
        "-fno-builtin",  # Don't use builtins
        "-fno-stack-protector",  # Simpler assembly
        "-fomit-frame-pointer",  # Cleaner assembly
        "-D__GNUC__=4",
        "-D__linux__",
        "-include", "stdint.h",
        "-include", "stddef.h",
        str(src_path),
        "-o", str(output_path)
    ]
    
    try:
        result = subprocess.run(cmd, capture_output=True, timeout=30)
        if result.returncode == 0 and output_path.exists():
            return True
    except (subprocess.CalledProcessError, subprocess.TimeoutExpired):
        pass
    
    # Try again with even more permissive flags
    cmd_fallback = [
        "clang",
        "-S",
        "-target", "x86_64-linux-gnu",
        "-O1",
        "-w",
        "-fno-builtin",
        "-D__attribute__(x)=",
        "-D__extension__=",
        "-D__restrict=",
        str(src_path),
        "-o", str(output_path)
    ]
    
    try:
        result = subprocess.run(cmd_fallback, capture_output=True, timeout=30)
        return result.returncode == 0 and output_path.exists()
    except (subprocess.CalledProcessError, subprocess.TimeoutExpired):
        return False


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
        # Skip data directives
        if any(x in line.lower() for x in ['.word', '.byte', '.ascii', '.section', '.globl', '.type', '.align', '.size', '.file', '.loc', '.cfi']):
            continue
        # Skip debug info
        if line.startswith('@') or line.startswith('//'):
            continue
        instructions.append(line)
    
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


def main():
    parser = argparse.ArgumentParser(description="Generate x86_64 benign samples")
    parser.add_argument("--repos-dir", type=Path, default=Path("githubCrawl/repos_benign"),
                        help="Directory with cloned repos")
    parser.add_argument("--output-dir", type=Path, default=Path("githubCrawl/benign_asm_x86"),
                        help="Output directory for x86_64 assembly")
    parser.add_argument("--output", type=Path, default=Path("data/benign_samples_x86_64.jsonl"),
                        help="Output JSONL file")
    parser.add_argument("--target-samples", type=int, default=10000,
                        help="Target number of samples")
    parser.add_argument("--max-files-per-repo", type=int, default=50,
                        help="Max C files to process per repo")
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()
    
    random.seed(args.seed)
    
    log("=" * 60)
    log("GENERATE X86_64 BENIGN SAMPLES")
    log("=" * 60)
    log(f"Repos directory: {args.repos_dir}")
    log(f"Output: {args.output}")
    log(f"Target samples: {args.target_samples}")
    
    args.output_dir.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    # Find all repo directories
    repos = []
    for owner_dir in args.repos_dir.iterdir():
        if owner_dir.is_dir():
            for repo_dir in owner_dir.iterdir():
                if repo_dir.is_dir():
                    repos.append((owner_dir.name, repo_dir.name, repo_dir))
    
    log(f"\nFound {len(repos)} repositories")
    
    all_samples = []
    compiled_count = 0
    failed_count = 0
    
    for i, (owner, repo, repo_path) in enumerate(repos):
        log(f"\n[{i+1}/{len(repos)}] {owner}/{repo}")
        
        # Find C files
        c_files = find_c_files(repo_path, max_files=args.max_files_per_repo)
        if not c_files:
            log(f"  No C files found")
            continue
        
        log(f"  Found {len(c_files)} C files")
        
        repo_samples = []
        for c_file in c_files:
            # Compile to x86_64
            asm_path = args.output_dir / owner / repo / f"{c_file.stem}.x86_64.s"
            
            if compile_to_x86_asm(c_file, asm_path):
                compiled_count += 1
                windows = extract_windows(asm_path)
                for w in windows:
                    w['arch'] = 'x86_64'
                    w['label'] = 'BENIGN'
                    w['vuln_label'] = 'BENIGN'
                    w['group'] = f"github_{owner}_{repo}"
                repo_samples.extend(windows)
            else:
                failed_count += 1
        
        all_samples.extend(repo_samples)
        log(f"  Compiled: {compiled_count}, Failed: {failed_count}, Samples: {len(repo_samples)}")
        
        if len(all_samples) >= args.target_samples:
            log(f"\nReached target of {args.target_samples} samples")
            break
    
    # Shuffle and subsample
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
    log(f"Total x86_64 benign samples: {len(all_samples)}")
    log(f"Compiled files: {compiled_count}")
    log(f"Failed compilations: {failed_count}")
    
    # Group distribution
    groups = Counter(s['group'] for s in all_samples)
    log(f"\nSamples per repository:")
    for group, count in groups.most_common(10):
        log(f"  {group}: {count}")
    
    log(f"\nOutput: {args.output}")
    log("=" * 60)


if __name__ == "__main__":
    main()
