#!/usr/bin/env python3
"""
Crawl and process additional C/C++ repositories to extract benign assembly samples.

This script:
1. Adds new C/C++ heavy repositories (RedHat, GNU, etc.)
2. Clones them (shallow clone)
3. Finds C/C++ source files
4. Compiles to assembly for arm64 and x86_64
5. Extracts instruction windows as benign samples
6. Outputs JSONL file ready for merging with the training dataset

Usage:
    python scripts/crawl_benign_repos.py --output data/benign_samples_new.jsonl
"""

import argparse
import json
import os
import random
import re
import subprocess
import sys
from pathlib import Path
from multiprocessing import Pool, cpu_count
from typing import List, Dict, Optional, Tuple

# Additional C/C++ heavy repositories to clone
# Priority: Well-maintained, mature projects with standard C/C++ code
ADDITIONAL_C_REPOS = [
    # Linux Kernel (primary benign reference - massive codebase)
    "https://github.com/torvalds/linux",
    
    # RedHat / Fedora projects (enterprise quality)
    "https://github.com/systemd/systemd",
    "https://github.com/rpm-software-management/rpm",
    "https://github.com/NetworkManager/NetworkManager",
    "https://github.com/abrt/abrt",
    "https://github.com/sssd/sssd",
    "https://github.com/libvirt/libvirt",
    "https://github.com/oVirt/vdsm",
    "https://github.com/cockpit-project/cockpit",
    "https://github.com/rhinstaller/anaconda",
    "https://github.com/freeipa/freeipa",
    
    # Virtualization (QEMU, etc.)
    "https://github.com/qemu/qemu",
    
    # GNU core utilities and libraries
    "https://github.com/coreutils/coreutils",
    "https://github.com/bminor/glibc",
    "https://github.com/bminor/binutils-gdb",
    "https://github.com/bminor/bash",
    "https://github.com/westes/flex",
    "https://github.com/bminor/make",
    "https://github.com/bminor/tar",
    
    # Low-level C projects
    "https://github.com/libevent/libevent",
    "https://github.com/libuv/libuv",
    "https://github.com/DaveGamble/cJSON",
    "https://github.com/madler/zlib",
    "https://github.com/lz4/lz4",
    "https://github.com/facebook/zstd",
    "https://github.com/google/snappy",
    "https://github.com/protocolbuffers/protobuf",
    
    # Database and storage
    "https://github.com/redis/redis",
    "https://github.com/memcached/memcached",
    "https://github.com/sqlite/sqlite",
    "https://github.com/postgres/postgres",
    "https://github.com/MariaDB/server",
    
    # Networking
    "https://github.com/curl/curl",
    "https://github.com/libssh2/libssh2",
    "https://github.com/nghttp2/nghttp2",
    "https://github.com/haproxy/haproxy",
    "https://github.com/openssl/openssl",
    "https://github.com/libressl/portable",
    
    # Embedded / IoT
    "https://github.com/micropython/micropython",
    "https://github.com/contiki-ng/contiki-ng",
    "https://github.com/zephyrproject-rtos/zephyr",
    
    # Compression and media
    "https://github.com/libarchive/libarchive",
    "https://github.com/xiph/opus",
    "https://github.com/FFmpeg/FFmpeg",
    "https://github.com/libpng/libpng",
    "https://github.com/libjpeg-turbo/libjpeg-turbo",
    
    # General utilities
    "https://github.com/tmux/tmux",
    "https://github.com/vim/vim",
    "https://github.com/htop-dev/htop",
    "https://github.com/fish-shell/fish-shell",
    "https://github.com/BurntSushi/ripgrep",
    "https://github.com/sharkdp/fd",
    
    # More Linux/system libraries
    "https://github.com/util-linux/util-linux",
    "https://github.com/dbus/dbus",
    "https://github.com/GNOME/glib",
    "https://github.com/json-c/json-c",
    "https://github.com/inotify-tools/inotify-tools",
    "https://github.com/strace/strace",
]

# Compiler configurations
COMPILE_TARGETS = [
    # (arch, compiler_cmd, march_flag)
    ("arm64", "gcc", "armv8-a"),
    ("x86_64", "gcc", "x86-64"),
]

OPT_LEVELS = ["O0", "O1", "O2", "O3"]


def log(msg: str):
    """Print with flush."""
    print(msg, flush=True)


def get_owner_repo(url: str) -> Tuple[str, str]:
    """Extract owner and repo name from GitHub URL."""
    from urllib.parse import urlparse
    path = urlparse(url).path.strip("/")
    parts = path.split("/")
    if len(parts) >= 2:
        return parts[0], parts[1]
    return "", ""


def clone_repo(repo_url: str, dest_path: Path) -> bool:
    """Clone a repository with shallow clone."""
    if dest_path.exists():
        log(f"  Already exists: {dest_path}")
        return True
    
    try:
        subprocess.run(
            ["git", "clone", "--depth", "1", repo_url, str(dest_path)],
            check=True,
            capture_output=True,
            timeout=300
        )
        log(f"  Cloned: {repo_url}")
        return True
    except subprocess.CalledProcessError as e:
        log(f"  Failed to clone {repo_url}: {e}")
        return False
    except subprocess.TimeoutExpired:
        log(f"  Timeout cloning {repo_url}")
        return False


def find_c_files(repo_path: Path, max_files: int = 200) -> List[Path]:
    """Find C/C++ source files in a repository."""
    c_files = []
    extensions = {'.c', '.cc', '.cpp', '.cxx'}
    
    for root, dirs, files in os.walk(repo_path):
        # Skip test directories
        dirs[:] = [d for d in dirs if d not in {'test', 'tests', 'testing', 'benchmark', 'benchmarks', 'examples', 'docs', 'doc'}]
        
        for f in files:
            if Path(f).suffix.lower() in extensions:
                c_files.append(Path(root) / f)
                if len(c_files) >= max_files:
                    return c_files
    
    return c_files


def compile_to_asm(src_path: Path, output_dir: Path, arch: str, compiler: str, march: str, opt: str) -> Optional[Path]:
    """Compile a C file to assembly with permissive flags.
    
    Uses flags to allow missing headers and undefined functions, which is fine
    since we only care about generating assembly for benign code patterns.
    """
    out_file = output_dir / f"{src_path.stem}.{arch}.{compiler}.{opt}.s"
    out_file.parent.mkdir(parents=True, exist_ok=True)
    
    # Include the parent directory of the source file to help find local headers
    include_dir = src_path.parent
    
    # Permissive flags:
    # -w: disable all warnings
    # -include stdbool.h: provide common types
    # -D__attribute__(x)=: disable GNU attributes that cause issues
    # -fsyntax-only disabled: we want assembly output even with errors
    cmd = [
        compiler, "-S", f"-{opt}", f"-march={march}",
        "-w",  # Disable warnings
        "-fpermissive" if compiler == "g++" else "-std=gnu99",  # Permissive mode
        f"-I{include_dir}",  # Include local headers
        "-DNDEBUG",  # Disable debug assertions
        "-D__GNUC__=4",  # Pretend to be GCC 4
        str(src_path), "-o", str(out_file)
    ]
    
    try:
        subprocess.run(cmd, capture_output=True, timeout=60, check=True)
        return out_file
    except subprocess.CalledProcessError:
        # Try again with even more permissive flags
        cmd_fallback = [
            compiler, "-S", f"-{opt}",
            "-w", "-include", "stdint.h",
            "-D__attribute__(x)=", "-D__extension__=",
            "-D__asm__(x)=", "-D__restrict=",
            str(src_path), "-o", str(out_file)
        ]
        try:
            subprocess.run(cmd_fallback, capture_output=True, timeout=60, check=True)
            return out_file
        except (subprocess.CalledProcessError, subprocess.TimeoutExpired):
            return None
    except subprocess.TimeoutExpired:
        return None


def extract_windows(asm_path: Path, window_size: int = 30, stride: int = 15, min_window: int = 12) -> List[Dict]:
    """Extract instruction windows from assembly file.
    
    Args:
        asm_path: Path to assembly file
        window_size: Target window size (default 30 to match v23 larger windows)
        stride: Stride between windows (default 15)
        min_window: Minimum window size (default 12 to match training filter)
    
    Returns:
        List of window dictionaries with sequence, source_file, etc.
    """
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
        # Enforce minimum window size of 12 to match training filter
        if len(window) >= min_window:
            windows.append({
                'sequence': window,
                'source_file': str(asm_path),
                'start_line': i,
                'window_size': len(window),
            })
    
    return windows


def process_repo(repo_url: str, repos_dir: Path, asm_dir: Path, max_files: int = 150) -> List[Dict]:
    """Process a single repository: clone, find files, compile, extract windows.
    
    Args:
        repo_url: GitHub repository URL
        repos_dir: Directory to clone repos into
        asm_dir: Directory for assembly outputs
        max_files: Maximum files to process per repo
    
    Returns:
        List of window dictionaries
    """
    owner, repo = get_owner_repo(repo_url)
    if not owner or not repo:
        return []
    
    log(f"\nProcessing {owner}/{repo}...")
    
    # Clone
    repo_path = repos_dir / owner / repo
    if not clone_repo(repo_url, repo_path):
        return []
    
    # Find C files (increased limit)
    c_files = find_c_files(repo_path, max_files=max_files)
    log(f"  Found {len(c_files)} C/C++ files (processing up to {max_files})")
    
    if not c_files:
        return []
    
    # Compile and extract windows
    all_windows = []
    compiled_count = 0
    
    for src_file in c_files[:max_files]:
        for arch, compiler, march in COMPILE_TARGETS:
            for opt in OPT_LEVELS:
                asm_path = compile_to_asm(
                    src_file, 
                    asm_dir / arch / compiler / opt / owner / repo,
                    arch, compiler, march, opt
                )
                if asm_path:
                    compiled_count += 1
                    windows = extract_windows(asm_path)
                    for w in windows:
                        w['arch'] = arch
                        w['label'] = 'BENIGN'
                        w['vuln_label'] = 'BENIGN'
                        w['group'] = f"github_{owner}_{repo}"
                        w['compiler'] = compiler
                        w['opt_level'] = opt
                    all_windows.extend(windows)
    
    log(f"  Compiled {compiled_count} assembly files, extracted {len(all_windows)} windows (min 12 instructions each)")
    return all_windows


def main():
    parser = argparse.ArgumentParser(description="Crawl GitHub repos for benign assembly samples")
    parser.add_argument("--output", type=Path, default=Path("data/benign_samples_v24.jsonl"),
                        help="Output JSONL file")
    parser.add_argument("--repos-dir", type=Path, default=Path("githubCrawl/repos_benign"),
                        help="Directory to clone repos into")
    parser.add_argument("--asm-dir", type=Path, default=Path("githubCrawl/benign_asm"),
                        help="Directory for assembly outputs")
    parser.add_argument("--max-repos", type=int, default=None,
                        help="Maximum number of repos to process")
    parser.add_argument("--target-samples", type=int, default=20000,
                        help="Target number of benign samples to collect (default 20000 to allow filtering)")
    parser.add_argument("--max-files-per-repo", type=int, default=150,
                        help="Maximum C/C++ files to process per repository")
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()
    
    random.seed(args.seed)
    
    # Create directories
    args.repos_dir.mkdir(parents=True, exist_ok=True)
    args.asm_dir.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    log("=" * 60)
    log("BENIGN SAMPLE COLLECTION PIPELINE")
    log("=" * 60)
    
    repos_to_process = ADDITIONAL_C_REPOS
    if args.max_repos:
        repos_to_process = repos_to_process[:args.max_repos]
    
    log(f"Processing {len(repos_to_process)} repositories...")
    log(f"Target samples: {args.target_samples}")
    
    all_samples = []
    
    for i, repo_url in enumerate(repos_to_process):
        log(f"\n[{i+1}/{len(repos_to_process)}] {repo_url}")
        
        samples = process_repo(repo_url, args.repos_dir, args.asm_dir, max_files=args.max_files_per_repo)
        all_samples.extend(samples)
        
        log(f"  Total samples so far: {len(all_samples)}")
        
        # Check if we have enough
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
    
    # Print statistics
    log("\n" + "=" * 60)
    log("SUMMARY")
    log("=" * 60)
    log(f"Total samples: {len(all_samples)}")
    
    # Arch distribution
    arch_counts = {}
    for s in all_samples:
        arch = s.get('arch', 'unknown')
        arch_counts[arch] = arch_counts.get(arch, 0) + 1
    log("\nArchitecture distribution:")
    for arch, count in sorted(arch_counts.items()):
        log(f"  {arch}: {count}")
    
    # Group distribution
    group_counts = {}
    for s in all_samples:
        group = s.get('group', 'unknown')
        group_counts[group] = group_counts.get(group, 0) + 1
    log(f"\nUnique groups: {len(group_counts)}")
    
    log(f"\nOutput: {args.output}")
    log("=" * 60)


if __name__ == "__main__":
    main()
