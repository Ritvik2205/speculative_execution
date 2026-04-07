#!/usr/bin/env python3
"""
Validate benign samples to ensure they don't contain vulnerability patterns.

This script:
1. Loads benign samples from a JSONL file
2. Runs vulnerability detection on each sample
3. Filters out samples that match vulnerability patterns
4. Outputs validated benign samples and a report

Usage:
    python scripts/validate_benign_samples.py \
        --input data/benign_samples_v24.jsonl \
        --output data/benign_samples_v24_validated.jsonl \
        --report data/benign_validation_report.json
"""

import argparse
import json
import sys
import re
from pathlib import Path
from collections import Counter, defaultdict
from typing import List, Dict, Optional, Tuple
from multiprocessing import Pool, cpu_count

# Add parent directories to path for imports
sys.path.insert(0, str(Path(__file__).parent.parent / "githubCrawl"))
sys.path.insert(0, str(Path(__file__).parent))


def log(msg: str):
    """Print with flush."""
    print(msg, flush=True)


# ============================================================================
# Vulnerability pattern detection (lightweight, no ML dependencies)
# ============================================================================

# Spectre V1 patterns: bounds check bypass
SPECTRE_V1_PATTERNS = [
    # Conditional branch followed by memory load using index
    r"(cmp|test|tst).*\n.*\bj[a-z]+\b.*\n.*\bmov.*\[",  # x86
    r"(cmp|tst).*\n.*\bb\.(eq|ne|lt|gt|le|ge).*\n.*\bldr",  # ARM64
]

# Spectre V2 patterns: branch target injection
SPECTRE_V2_PATTERNS = [
    r"\bjmp\s+\*",  # x86 indirect jump
    r"\bcall\s+\*",  # x86 indirect call
    r"\bbr\s+x",  # ARM64 indirect branch
    r"\bblr\s+x",  # ARM64 indirect call
]

# L1TF patterns: L1 terminal fault
L1TF_PATTERNS = [
    r"\bclflush\b",  # Cache line flush
    r"\bclflushopt\b",
    r"\bclwb\b",  # Cache line write back
    r"\bdc\s+civac\b",  # ARM64 cache invalidate
]

# MDS patterns: microarchitectural data sampling
MDS_PATTERNS = [
    r"\bverw\b",  # x86 verw instruction
    r"\bmfence\b.*\blfence\b",  # Memory fence patterns
    r"\blfence\b.*\bclflush\b",
]

# Retbleed patterns: return-based speculation
RETBLEED_PATTERNS = [
    r"\bret\b.*\n.*\blfence\b",  # Return followed by fence
    r"\bret\b.*\n.*\bint3\b",  # Return followed by int3
    r"\bretq?\b.*\bnop\b.*\bnop\b",  # Return with NOPs
]

# BHI patterns: branch history injection
BHI_PATTERNS = [
    r"\bjmp\s+\*.*\[",  # Indirect jump with memory operand
    r"\bcall\s+\*.*\[",  # Indirect call with memory operand
    r"\bb\.[a-z]+.*\n.*\bb\.[a-z]+",  # Multiple conditional branches
]

# Inception patterns: transient control flow hijacking
INCEPTION_PATTERNS = [
    r"\bcall\b.*\n.*\bret\b",  # Call followed by return (RSB manipulation)
    r"\bbl\b.*\n.*\bret\b",  # ARM64 call followed by return
]

# Timing attack patterns
TIMING_PATTERNS = [
    r"\brdtsc\b",  # x86 read timestamp counter
    r"\brdtscp\b",  # x86 read timestamp counter with processor ID
    r"\bmrs\b.*cntvct",  # ARM64 read virtual counter
]


def compile_patterns() -> Dict[str, List[re.Pattern]]:
    """Compile all vulnerability patterns."""
    patterns = {
        'SPECTRE_V1': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in SPECTRE_V1_PATTERNS],
        'SPECTRE_V2': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in SPECTRE_V2_PATTERNS],
        'L1TF': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in L1TF_PATTERNS],
        'MDS': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in MDS_PATTERNS],
        'RETBLEED': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in RETBLEED_PATTERNS],
        'BHI': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in BHI_PATTERNS],
        'INCEPTION': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in INCEPTION_PATTERNS],
        'TIMING': [re.compile(p, re.IGNORECASE | re.MULTILINE) for p in TIMING_PATTERNS],
    }
    return patterns


# Global compiled patterns (for multiprocessing)
COMPILED_PATTERNS = None


def init_patterns():
    """Initialize patterns for worker processes."""
    global COMPILED_PATTERNS
    COMPILED_PATTERNS = compile_patterns()


def check_vulnerability_patterns(sequence: List[str], arch: str = 'unknown') -> Dict[str, List[str]]:
    """
    Check if a sequence contains vulnerability patterns.
    
    Args:
        sequence: List of assembly instruction strings
        arch: Architecture (arm64, x86_64, etc.)
    
    Returns:
        Dictionary of {vuln_type: [matched_patterns]}
    """
    global COMPILED_PATTERNS
    if COMPILED_PATTERNS is None:
        init_patterns()
    
    # Join sequence for regex matching
    asm_text = '\n'.join(sequence)
    
    matches = {}
    for vuln_type, patterns in COMPILED_PATTERNS.items():
        vuln_matches = []
        for pattern in patterns:
            if pattern.search(asm_text):
                vuln_matches.append(pattern.pattern)
        if vuln_matches:
            matches[vuln_type] = vuln_matches
    
    return matches


def analyze_speculative_features(sequence: List[str]) -> Dict[str, float]:
    """
    Analyze features that indicate speculative execution vulnerability potential.
    
    Returns:
        Dictionary of {feature_name: score}
    """
    features = {}
    asm_text = '\n'.join(sequence).lower()
    
    # Count suspicious patterns
    indirect_branches = len(re.findall(r'\b(jmp|call)\s+\*', asm_text)) + \
                       len(re.findall(r'\b(br|blr)\s+x', asm_text))
    features['indirect_branch_count'] = indirect_branches
    
    # Memory loads after branches
    branch_load_pattern = re.findall(r'(j[a-z]+|b\.[a-z]+).*\n.*\b(mov|ldr)', asm_text)
    features['branch_load_count'] = len(branch_load_pattern)
    
    # Cache operations
    cache_ops = len(re.findall(r'\b(clflush|clflushopt|clwb|dc\s+civac)\b', asm_text))
    features['cache_op_count'] = cache_ops
    
    # Timing operations
    timing_ops = len(re.findall(r'\b(rdtsc|rdtscp|mrs.*cntvct)\b', asm_text))
    features['timing_op_count'] = timing_ops
    
    # Memory barriers (can be benign or vuln mitigation)
    barriers = len(re.findall(r'\b(mfence|lfence|sfence|dmb|dsb|isb)\b', asm_text))
    features['barrier_count'] = barriers
    
    # Compute overall suspicion score
    suspicion = (
        indirect_branches * 0.3 +
        features['branch_load_count'] * 0.2 +
        cache_ops * 0.4 +
        timing_ops * 0.5 +
        barriers * 0.1  # Barriers can be mitigations, lower weight
    )
    features['suspicion_score'] = min(1.0, suspicion / 3.0)  # Normalize to 0-1
    
    return features


def validate_sample(sample: Dict) -> Tuple[bool, Dict]:
    """
    Validate a single benign sample.
    
    Args:
        sample: Dictionary with 'sequence', 'arch', etc.
    
    Returns:
        Tuple of (is_valid, validation_info)
    """
    sequence = sample.get('sequence', [])
    arch = sample.get('arch', 'unknown')
    
    if len(sequence) < 12:
        return False, {'reason': 'too_short', 'length': len(sequence)}
    
    # Check for vulnerability patterns
    vuln_matches = check_vulnerability_patterns(sequence, arch)
    
    # Analyze speculative features
    spec_features = analyze_speculative_features(sequence)
    
    validation_info = {
        'vuln_matches': vuln_matches,
        'spec_features': spec_features,
        'sequence_length': len(sequence),
    }
    
    # Determine if sample is valid
    is_valid = True
    reasons = []
    
    # Reject if matches known vulnerability patterns
    if vuln_matches:
        is_valid = False
        reasons.append(f"matches_patterns:{list(vuln_matches.keys())}")
    
    # Reject if high suspicion score
    if spec_features['suspicion_score'] > 0.5:
        is_valid = False
        reasons.append(f"high_suspicion:{spec_features['suspicion_score']:.2f}")
    
    # Reject if contains timing or cache operations (strong indicators)
    if spec_features['timing_op_count'] > 0:
        is_valid = False
        reasons.append(f"timing_ops:{spec_features['timing_op_count']}")
    
    if spec_features['cache_op_count'] > 0:
        is_valid = False
        reasons.append(f"cache_ops:{spec_features['cache_op_count']}")
    
    validation_info['is_valid'] = is_valid
    validation_info['rejection_reasons'] = reasons
    
    return is_valid, validation_info


def validate_sample_wrapper(line: str) -> Tuple[Optional[str], Dict]:
    """Wrapper for multiprocessing."""
    try:
        sample = json.loads(line.strip())
    except json.JSONDecodeError:
        return None, {'reason': 'json_decode_error'}
    
    is_valid, info = validate_sample(sample)
    
    if is_valid:
        return line.strip(), info
    else:
        return None, info


def main():
    parser = argparse.ArgumentParser(description="Validate benign samples")
    parser.add_argument("--input", type=Path, required=True,
                        help="Input JSONL file with benign samples")
    parser.add_argument("--output", type=Path, required=True,
                        help="Output JSONL file with validated samples")
    parser.add_argument("--report", type=Path, default=None,
                        help="Output JSON file with validation report")
    parser.add_argument("--workers", type=int, default=None,
                        help="Number of worker processes (default: CPU count - 1)")
    parser.add_argument("--strict", action="store_true",
                        help="Use stricter validation (lower thresholds)")
    args = parser.parse_args()
    
    if not args.input.exists():
        log(f"ERROR: Input file not found: {args.input}")
        return 1
    
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    log("=" * 60)
    log("BENIGN SAMPLE VALIDATION")
    log("=" * 60)
    log(f"Input: {args.input}")
    log(f"Output: {args.output}")
    log(f"Strict mode: {args.strict}")
    
    # Load input
    with open(args.input) as f:
        lines = f.readlines()
    total = len(lines)
    log(f"Loaded {total} samples")
    
    # Validate samples
    num_workers = args.workers or max(1, cpu_count() - 1)
    log(f"Using {num_workers} worker processes")
    
    valid_count = 0
    rejected_count = 0
    rejection_reasons = Counter()
    vuln_type_counts = Counter()
    
    with Pool(processes=num_workers, initializer=init_patterns) as pool:
        with open(args.output, 'w') as out:
            results = pool.imap(validate_sample_wrapper, lines, chunksize=500)
            
            for i, (valid_line, info) in enumerate(results):
                if (i + 1) % 5000 == 0:
                    log(f"  [{i+1:6d}/{total}] valid={valid_count}, rejected={rejected_count}")
                
                if valid_line:
                    out.write(valid_line + '\n')
                    valid_count += 1
                else:
                    rejected_count += 1
                    for reason in info.get('rejection_reasons', [info.get('reason', 'unknown')]):
                        rejection_reasons[reason] += 1
                    for vuln_type in info.get('vuln_matches', {}).keys():
                        vuln_type_counts[vuln_type] += 1
    
    # Summary
    log("\n" + "=" * 60)
    log("VALIDATION SUMMARY")
    log("=" * 60)
    log(f"Total samples: {total}")
    log(f"Valid samples: {valid_count} ({100*valid_count/total:.1f}%)")
    log(f"Rejected samples: {rejected_count} ({100*rejected_count/total:.1f}%)")
    
    log("\nRejection reasons:")
    for reason, count in rejection_reasons.most_common(20):
        log(f"  {reason}: {count}")
    
    if vuln_type_counts:
        log("\nVulnerability pattern matches:")
        for vuln_type, count in vuln_type_counts.most_common():
            log(f"  {vuln_type}: {count}")
    
    # Save report
    if args.report:
        report = {
            'input_file': str(args.input),
            'output_file': str(args.output),
            'total_samples': total,
            'valid_samples': valid_count,
            'rejected_samples': rejected_count,
            'validation_rate': valid_count / total if total > 0 else 0,
            'rejection_reasons': dict(rejection_reasons),
            'vuln_type_counts': dict(vuln_type_counts),
        }
        args.report.parent.mkdir(parents=True, exist_ok=True)
        with open(args.report, 'w') as f:
            json.dump(report, f, indent=2)
        log(f"\nReport saved to: {args.report}")
    
    log(f"\nValidated samples saved to: {args.output}")
    log("=" * 60)
    
    return 0


if __name__ == "__main__":
    sys.exit(main() or 0)
