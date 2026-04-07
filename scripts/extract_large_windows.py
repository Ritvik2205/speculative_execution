#!/usr/bin/env python3
"""
Extract larger instruction windows from assembly files to capture complete attack patterns.
Specifically designed to capture L1TF's full FLUSH+RELOAD pattern and other attacks
that span more instructions.
"""

import argparse
import json
import re
from pathlib import Path
from collections import defaultdict

# Attack pattern anchors - instructions that mark key points in attacks
ATTACK_ANCHORS = {
    'L1TF': {
        'primary': [r'\bclflush\b', r'\bclflushopt\b', r'\bdc\s+civac\b'],  # Cache flush
        'secondary': [r'\brdtsc\b', r'\brdtscp\b', r'\bmrs\s+.*cntvct\b'],  # Timing
        'tertiary': [r'\bldr\b', r'\bmov.*\[', r'\blfence\b'],  # Access/fence
    },
    'MDS': {
        'primary': [r'\bclflush\b', r'\blfence\b', r'\bmfence\b'],
        'secondary': [r'\bldr\b', r'\bmov.*\['],
        'tertiary': [r'\bxor\b', r'\beor\b'],
    },
    'SPECTRE_V1': {
        'primary': [r'\bcmp\b', r'\bsubs\b', r'\btest\b'],  # Bounds check
        'secondary': [r'\bb\.(eq|ne|lt|gt|ge|le|hs|lo)\b', r'\bj[a-z]{1,3}\b'],  # Conditional branch
        'tertiary': [r'\bldr\b', r'\bmov.*\['],  # Speculative load
    },
    'RETBLEED': {
        'primary': [r'\bret\b', r'\bretq\b'],
        'secondary': [r'\bcall\b', r'\bcallq\b', r'\bbl\b'],
        'tertiary': [r'\bleave\b', r'\bpush\b', r'\bpop\b'],
    },
}

# Ground truth label extraction from filename
def get_ground_truth_label(filename: str) -> str:
    """Extract vulnerability type from filename."""
    filename_lower = filename.lower()
    
    # Priority order for matching
    label_patterns = [
        ('RETBLEED', ['retbleed']),
        ('BRANCH_HISTORY_INJECTION', ['bhi', 'branch_history_injection']),
        ('INCEPTION', ['inception']),
        ('L1TF', ['l1tf', 'l1_terminal']),
        ('MDS', ['mds', 'zombieload', 'ridl', 'fallout', 'taa']),
        ('SPECTRE_V1', ['spectre_v1', 'spectrev1', 'spectre1', 'bounds_check']),
        ('SPECTRE_V2', ['spectre_v2', 'spectrev2', 'spectre2', 'bti']),
        ('SPECTRE_V4', ['spectre_v4', 'spectrev4', 'spectre4', 'ssbd']),
        ('MELTDOWN', ['meltdown']),
    ]
    
    for label, patterns in label_patterns:
        if any(p in filename_lower for p in patterns):
            return label
    
    if 'benign' in filename_lower or 'negative' in filename_lower:
        return 'BENIGN'
    
    return 'UNKNOWN'


def normalize_line(line: str) -> str:
    """Normalize an assembly line, removing comments and directives."""
    s = line.strip()
    if not s or s.startswith('.') or s.startswith('#') or s.startswith('//'):
        return ''
    # Remove comments
    s = re.split(r'[;#@//]', s)[0].strip()
    # Skip labels-only lines but keep them for reference
    return s


def find_attack_anchors(lines: list, attack_type: str) -> list:
    """Find instruction indices that match attack anchor patterns."""
    if attack_type not in ATTACK_ANCHORS:
        return []
    
    anchors = ATTACK_ANCHORS[attack_type]
    indices = []
    
    for i, line in enumerate(lines):
        line_lower = line.lower()
        for pattern in anchors.get('primary', []):
            if re.search(pattern, line_lower, re.IGNORECASE):
                indices.append((i, 'primary'))
                break
        else:
            for pattern in anchors.get('secondary', []):
                if re.search(pattern, line_lower, re.IGNORECASE):
                    indices.append((i, 'secondary'))
                    break
    
    return indices


def extract_large_windows(asm_path: Path, 
                          window_before: int = 20,
                          window_after: int = 30,
                          min_window_size: int = 15,
                          attack_aware: bool = True) -> list:
    """
    Extract larger instruction windows from assembly file.
    
    Args:
        asm_path: Path to assembly file
        window_before: Instructions to include before anchor point
        window_after: Instructions to include after anchor point
        min_window_size: Minimum window size to emit
        attack_aware: If True, use attack-specific anchor detection
    """
    raw_lines = asm_path.read_text(errors='ignore').splitlines()
    norm_lines = [normalize_line(l) for l in raw_lines]
    non_empty_lines = [(i, l) for i, l in enumerate(norm_lines) if l]
    
    if len(non_empty_lines) < min_window_size:
        return []
    
    # Detect architecture
    is_x86 = any('%' in l for l in raw_lines[:100])
    arch = 'x86_64' if is_x86 else 'arm64'
    
    # Get ground truth label
    label = get_ground_truth_label(asm_path.name)
    
    windows = []
    seen_ranges = set()  # Avoid duplicate windows
    
    # Strategy 1: Attack-aware anchor-based extraction
    if attack_aware and label in ATTACK_ANCHORS:
        anchors = find_attack_anchors([l for _, l in non_empty_lines], label)
        
        for anchor_idx, anchor_type in anchors:
            actual_idx = non_empty_lines[anchor_idx][0]
            
            # Larger window for primary anchors
            if anchor_type == 'primary':
                wb = window_before + 10
                wa = window_after + 10
            else:
                wb = window_before
                wa = window_after
            
            start_idx = max(0, anchor_idx - wb)
            end_idx = min(len(non_empty_lines), anchor_idx + wa + 1)
            
            # Create range key to avoid duplicates
            range_key = (start_idx // 10, end_idx // 10)
            if range_key in seen_ranges:
                continue
            seen_ranges.add(range_key)
            
            seq = [l for _, l in non_empty_lines[start_idx:end_idx]]
            if len(seq) >= min_window_size:
                windows.append({
                    'sequence': seq,
                    'label': label,
                    'arch': arch,
                    'source_file': str(asm_path),
                    'anchor_type': anchor_type,
                    'window_size': len(seq),
                })
    
    # Strategy 2: Sliding window with larger size
    window_sizes = [30, 40, 50]
    step = 15  # Larger step to avoid too many overlapping windows
    
    for ws in window_sizes:
        for start in range(0, len(non_empty_lines) - ws + 1, step):
            range_key = (start // 10, (start + ws) // 10)
            if range_key in seen_ranges:
                continue
            seen_ranges.add(range_key)
            
            seq = [l for _, l in non_empty_lines[start:start + ws]]
            if len(seq) >= min_window_size:
                windows.append({
                    'sequence': seq,
                    'label': label,
                    'arch': arch,
                    'source_file': str(asm_path),
                    'anchor_type': 'sliding',
                    'window_size': len(seq),
                })
    
    # Strategy 3: Full-file window for small files (captures complete pattern)
    if len(non_empty_lines) <= 80:
        seq = [l for _, l in non_empty_lines]
        if len(seq) >= min_window_size:
            windows.append({
                'sequence': seq,
                'label': label,
                'arch': arch,
                'source_file': str(asm_path),
                'anchor_type': 'full_file',
                'window_size': len(seq),
            })
    
    return windows


def main():
    ap = argparse.ArgumentParser(description="Extract larger instruction windows for better attack pattern capture")
    ap.add_argument('--asm-dir', type=Path, default=Path('c_vulns/asm_code'))
    ap.add_argument('--out', type=Path, default=Path('data/extracted/large_windows.jsonl'))
    ap.add_argument('--window-before', type=int, default=20, help='Instructions before anchor')
    ap.add_argument('--window-after', type=int, default=30, help='Instructions after anchor')
    ap.add_argument('--min-window', type=int, default=15, help='Minimum window size')
    ap.add_argument('--focus-class', type=str, default=None, help='Focus on specific class (e.g., L1TF)')
    args = ap.parse_args()
    
    args.out.parent.mkdir(parents=True, exist_ok=True)
    
    label_counts = defaultdict(int)
    window_size_stats = defaultdict(list)
    total_windows = 0
    
    with open(args.out, 'w') as fout:
        for asm_file in sorted(args.asm_dir.glob('*.s')):
            windows = extract_large_windows(
                asm_file,
                window_before=args.window_before,
                window_after=args.window_after,
                min_window_size=args.min_window,
            )
            
            for w in windows:
                # Filter by focus class if specified
                if args.focus_class and w['label'] != args.focus_class:
                    continue
                
                fout.write(json.dumps(w) + '\n')
                label_counts[w['label']] += 1
                window_size_stats[w['label']].append(w['window_size'])
                total_windows += 1
    
    print(f"\nExtracted {total_windows} large windows to {args.out}")
    print("\nLabel distribution:")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        avg_size = sum(window_size_stats[label]) / len(window_size_stats[label])
        print(f"  {label}: {count} windows (avg size: {avg_size:.1f})")


if __name__ == '__main__':
    main()


