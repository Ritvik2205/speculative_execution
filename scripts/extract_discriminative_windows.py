#!/usr/bin/env python3
"""
Extract instruction windows that contain DISCRIMINATIVE features for each attack class.

The key insight is that a window should only be labeled as a vulnerability class
if it actually contains the distinctive patterns for that attack. Generic code
(error handling, string operations, memory allocation) should be filtered out
even if it's from a vulnerability PoC file.
"""

import argparse
import json
import re
from pathlib import Path
from collections import defaultdict

# ============================================================================
# DISCRIMINATIVE PATTERNS FOR EACH ATTACK CLASS
# A window must contain at least one pattern from its class to be included
# ============================================================================

DISCRIMINATIVE_PATTERNS = {
    'L1TF': {
        'required_any': [
            # Cache flush operations
            r'\b(clflush|clflushopt|clwb)\b',
            r'\bdc\s+(civac|cvac|ivac)\b',
            # TLB invalidation
            r'\b(invlpg|tlbi)\b',
            # Combined with load suggests FLUSH+RELOAD
        ],
        'supporting': [
            r'\b(rdtsc|rdtscp)\b',  # Timing
            r'\bmrs\s+\w+,\s*cntvct',  # ARM timing
            r'\b(lfence|mfence|dsb|dmb)\b',  # Barriers
        ],
        'min_pattern_score': 1,  # Must have at least 1 required pattern
    },
    
    'MDS': {
        'required_any': [
            # Memory barriers after speculative load
            r'\b(lfence|mfence)\b',
            r'\b(dsb|dmb)\s+(ish|sy)\b',
            # Cache flush for side channel
            r'\b(clflush|clflushopt)\b',
            r'\bdc\s+(civac|cvac)\b',
            # Microarchitectural buffer access hints
            r'\b(verw|wbinvd)\b',
        ],
        'supporting': [
            r'\bldr\b.*\[.*\]',  # Load with addressing
            r'\bmov\w*\b.*\[.*\]',  # x86 memory access
            r'\b(rdtsc|rdtscp)\b',  # Timing
        ],
        'min_pattern_score': 1,
    },
    
    'SPECTRE_V1': {
        'required_any': [
            # Bounds check pattern: compare + conditional branch
            r'\b(cmp|subs|tst|test)\b',
        ],
        'supporting': [
            # Must also have conditional branch
            r'\bb\.(eq|ne|lt|gt|ge|le|hs|lo|hi|ls)\b',
            r'\bj(e|ne|l|g|le|ge|b|a|be|ae|z|nz|s|ns|o|no)\b',
            # Followed by memory access
            r'\bldr\b',
            r'\bmov\w*\b.*\[.*\]',
        ],
        'min_pattern_score': 2,  # Need compare AND branch
    },
    
    'SPECTRE_V2': {
        'required_any': [
            # Indirect branches
            r'\bblr\s+x',  # ARM indirect call
            r'\bbr\s+x',  # ARM indirect branch
            r'\bcall\s*\*',  # x86 indirect call
            r'\bjmp\s*\*',  # x86 indirect jump
            r'\b(callq|jmpq)\s*\*',
        ],
        'supporting': [
            r'\b(lfence|dsb)\b',
            r'\bretpoline\b',
        ],
        'min_pattern_score': 1,
    },
    
    'RETBLEED': {
        'required_any': [
            # Return instruction (key for ret speculation)
            r'\b(ret|retq|retw|retl)\b',
        ],
        'supporting': [
            # Call instructions (for RSB filling)
            r'\b(call|callq|bl)\b',
            # Stack operations around ret
            r'\b(push|pop|leave)\b',
            r'\bstp\s+x29,\s*x30',  # ARM64 frame setup
        ],
        'min_pattern_score': 2,  # Need ret AND call/stack ops
    },
    
    'INCEPTION': {
        'required_any': [
            # Call + speculative behavior
            r'\b(call|callq|bl|blr)\b',
            # Return for misspeculation
            r'\b(ret|retq)\b',
        ],
        'supporting': [
            # Memory operations for gadget
            r'\bldr\b',
            r'\bmov\w*\b.*\[',
            # Barriers
            r'\b(lfence|dsb)\b',
        ],
        'min_pattern_score': 2,  # Need both call and ret patterns
    },
    
    'BRANCH_HISTORY_INJECTION': {
        'required_any': [
            # Conditional branches (for history manipulation)
            r'\bb\.(eq|ne|lt|gt|ge|le|hs|lo)\b',
            r'\bj(e|ne|l|g|le|ge|b|a|z|nz)\b',
            # Indirect branches (target of injection)
            r'\b(blr|br)\s+x',
            r'\b(call|jmp)\s*\*',
        ],
        'supporting': [
            # Multiple branches in sequence
            r'\bb\.', 
            r'\bj[a-z]{1,3}\b',
        ],
        'min_pattern_score': 2,
    },
    
    'SPECTRE_V4': {
        'required_any': [
            # Store-to-load forwarding pattern
            r'\bstr\b.*\bldr\b',  # Store then load
            r'\bmov\b.*\[.*\].*\n.*\bmov\b.*\[.*\]',  # x86 store-load
        ],
        'supporting': [
            r'\b(lfence|mfence|dsb)\b',
        ],
        'min_pattern_score': 1,
    },
    
    'BENIGN': {
        # Benign code should NOT have attack patterns
        # It's easier to identify by absence of attack features
        'required_any': [],
        'disqualifying': [
            # If it has these, it's probably not benign
            r'\b(clflush|rdtsc|invlpg)\b',
            r'\bdc\s+(civac|cvac)\b',
            r'\bmrs\s+\w+,\s*cntvct',
        ],
        'min_pattern_score': 0,
    },
}


def get_ground_truth_label(filename: str) -> str:
    """Extract vulnerability type from filename."""
    filename_lower = filename.lower()
    
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
    """Normalize an assembly line."""
    s = line.strip()
    if not s or s.startswith('.') or s.startswith('#') or s.startswith('//'):
        return ''
    s = re.split(r'[;#@]', s)[0].strip()
    return s


def score_window_for_class(sequence: list, class_name: str) -> tuple:
    """
    Score how well a window matches a class's discriminative patterns.
    Returns (score, matched_patterns).
    """
    if class_name not in DISCRIMINATIVE_PATTERNS:
        return (0, [])
    
    patterns = DISCRIMINATIVE_PATTERNS[class_name]
    seq_text = '\n'.join(sequence).lower()
    
    score = 0
    matched = []
    
    # Check required patterns
    for pattern in patterns.get('required_any', []):
        if re.search(pattern, seq_text, re.IGNORECASE | re.MULTILINE):
            score += 1
            matched.append(pattern)
    
    # Check supporting patterns (worth less)
    for pattern in patterns.get('supporting', []):
        if re.search(pattern, seq_text, re.IGNORECASE | re.MULTILINE):
            score += 0.5
            matched.append(f'(support){pattern}')
    
    # Check disqualifying patterns for BENIGN
    for pattern in patterns.get('disqualifying', []):
        if re.search(pattern, seq_text, re.IGNORECASE | re.MULTILINE):
            score -= 2  # Strong negative
            matched.append(f'(disqualify){pattern}')
    
    return (score, matched)


def is_window_discriminative(sequence: list, label: str) -> bool:
    """Check if a window contains discriminative features for its label."""
    if label not in DISCRIMINATIVE_PATTERNS:
        return False
    
    patterns = DISCRIMINATIVE_PATTERNS[label]
    min_score = patterns.get('min_pattern_score', 1)
    
    score, _ = score_window_for_class(sequence, label)
    return score >= min_score


def extract_discriminative_windows(asm_path: Path, 
                                   window_sizes: list = [25, 35, 50],
                                   step: int = 10,
                                   min_window: int = 15) -> list:
    """
    Extract windows that contain discriminative features for their class.
    """
    raw_lines = asm_path.read_text(errors='ignore').splitlines()
    norm_lines = [normalize_line(l) for l in raw_lines]
    non_empty_lines = [(i, l) for i, l in enumerate(norm_lines) if l]
    
    if len(non_empty_lines) < min_window:
        return []
    
    is_x86 = any('%' in l for l in raw_lines[:100])
    arch = 'x86_64' if is_x86 else 'arm64'
    label = get_ground_truth_label(asm_path.name)
    
    if label == 'UNKNOWN':
        return []
    
    windows = []
    seen = set()
    
    for ws in window_sizes:
        for start in range(0, len(non_empty_lines) - ws + 1, step):
            # Hash to avoid exact duplicates
            key = (start // step, ws)
            if key in seen:
                continue
            
            seq = [l for _, l in non_empty_lines[start:start + ws]]
            
            # Check if window is discriminative for its class
            if is_window_discriminative(seq, label):
                seen.add(key)
                score, patterns = score_window_for_class(seq, label)
                
                windows.append({
                    'sequence': seq,
                    'label': label,
                    'arch': arch,
                    'source_file': str(asm_path),
                    'window_size': len(seq),
                    'discriminative_score': score,
                    'matched_patterns': len(patterns),
                })
    
    # Also try full file if small
    if len(non_empty_lines) <= 80:
        seq = [l for _, l in non_empty_lines]
        if is_window_discriminative(seq, label):
            score, patterns = score_window_for_class(seq, label)
            windows.append({
                'sequence': seq,
                'label': label,
                'arch': arch,
                'source_file': str(asm_path),
                'window_size': len(seq),
                'discriminative_score': score,
                'matched_patterns': len(patterns),
            })
    
    return windows


def main():
    ap = argparse.ArgumentParser(description="Extract discriminative windows for each attack class")
    ap.add_argument('--asm-dir', type=Path, default=Path('c_vulns/asm_code'))
    ap.add_argument('--out', type=Path, default=Path('data/extracted/discriminative_windows.jsonl'))
    ap.add_argument('--min-window', type=int, default=15)
    ap.add_argument('--per-class-cap', type=int, default=3000)
    args = ap.parse_args()
    
    args.out.parent.mkdir(parents=True, exist_ok=True)
    
    label_counts = defaultdict(int)
    label_scores = defaultdict(list)
    total = 0
    
    all_windows = []
    
    for asm_file in sorted(args.asm_dir.glob('*.s')):
        windows = extract_discriminative_windows(
            asm_file,
            min_window=args.min_window,
        )
        all_windows.extend(windows)
    
    # Group by class and apply cap
    class_windows = defaultdict(list)
    for w in all_windows:
        class_windows[w['label']].append(w)
    
    # Sort each class by discriminative score (higher = more distinctive)
    # Take top N per class
    with open(args.out, 'w') as fout:
        for label, windows in class_windows.items():
            # Sort by discriminative score descending
            windows.sort(key=lambda x: -x['discriminative_score'])
            
            for w in windows[:args.per_class_cap]:
                fout.write(json.dumps(w) + '\n')
                label_counts[label] += 1
                label_scores[label].append(w['discriminative_score'])
                total += 1
    
    print(f"\nExtracted {total} discriminative windows to {args.out}")
    print("\nLabel distribution (with avg discriminative score):")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        avg_score = sum(label_scores[label]) / len(label_scores[label]) if label_scores[label] else 0
        print(f"  {label}: {count} windows (avg score: {avg_score:.2f})")


if __name__ == '__main__':
    main()

