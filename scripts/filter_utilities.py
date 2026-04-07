import json
from pathlib import Path
import re

def is_utility_sequence(sequence):
    """
    Check if the sequence is primarily a utility function rather than vulnerability-specific code.
    
    This checks:
    1. If the sequence starts with a known utility function label
    2. If the sequence contains calls to utility functions (bl _utility)
    3. If the sequence is primarily composed of utility function code patterns
    """
    if not sequence:
        return False
    
    # Join sequence for pattern matching
    seq_text = '\n'.join(sequence).lower()
    first_line = sequence[0].strip().lower()
    
    # Known utility function labels
    utility_labels = [
        "_flush_probe_array:",
        "flush_probe_array:",
        "_measure_time:",
        "_rdtsc_wrapper:",
        "_rdtsc:",
        "rdtsc:",
        "_reload_side_channel:", 
        "_perform_measurement:",
        "perform_measurement:",
        "__mm_mfence:",
        "_mm_mfence:",
        "__mm_lfence:",
        "_mm_lfence:",
        "__mm_clflush:",
        "_mm_clflush:",
        "mfence:",
        "lfence:",
        "check:",
        "_common_init:",
        "common_init:",
        "_benign_target:",
        "benign_target:",
        "_sigsegv_handler",  # Signal handler setup
    ]
    
    # Check if starts with utility label
    for label in utility_labels:
        if first_line.startswith(label):
            return True
    
    # Check if sequence is predominantly utility function code
    # Count utility-related patterns vs total instructions
    utility_patterns = [
        r'bl\s+_?flush_probe_array',
        r'bl\s+_?_mm_mfence',
        r'bl\s+_?_mm_lfence', 
        r'bl\s+_?_mm_clflush',
        r'bl\s+_?perform_measurement',
        r'bl\s+_?common_init',
        r'bl\s+_?rdtsc',
        r'bl\s+_?printf',  # Print statements are harness code
        r'bl\s+_?bzero',
        r'bl\s+_?signal',
        r'bl\s+_?siglongjmp',
        r'bl\s+_?sigsetjmp',
        r'bl\s+_?clock_gettime',
        r'adrp\s+.*l_\.str',  # String literals (printf args)
        r'add\s+.*l_\.str.*@pageoff',  # String literal offsets
    ]
    
    utility_instruction_count = 0
    for pattern in utility_patterns:
        utility_instruction_count += len(re.findall(pattern, seq_text))
    
    # If more than 30% of the sequence is utility-related, filter it
    total_instructions = len([l for l in sequence if l.strip() and not l.strip().endswith(':')])
    if total_instructions > 0 and utility_instruction_count / total_instructions > 0.3:
        return True
    
    # Check if this is a loop iteration of flush_probe_array (common pattern)
    # Pattern: loop with dc civac or clflush
    if 'dc\tcivac' in seq_text or 'clflush' in seq_text:
        # Check if it's just the flushing loop (has loop structure but no actual vulnerability gadget)
        if 'lbb0_' in seq_text and seq_text.count('b\t') > 2:
            # Additional check: is there any vulnerability-specific pattern?
            vuln_patterns = [
                r'ldrb.*lsl.*ldr',  # Spectre-style dependent load
                r'mrs\s+.*pmccntr',  # Timing measurement (vuln-specific)
                r'eor\s+x0.*ldrb.*lsl.*ldr',  # MDS-specific pattern
            ]
            has_vuln_pattern = any(re.search(p, seq_text) for p in vuln_patterns)
            if not has_vuln_pattern:
                return True
    
    return False


def contains_vulnerability_gadget(sequence, label):
    """
    Check if the sequence contains patterns specific to the labeled vulnerability type.
    This helps ensure we keep the actually discriminative samples.
    """
    seq_text = '\n'.join(sequence).lower()
    
    # Vulnerability-specific patterns that should NOT be filtered
    vuln_specific_patterns = {
        'MDS': [
            r'eor\s+x0.*ldrb.*lsl',  # MDS memory sampling pattern
            r'xor.*movb.*shl',       # x86 MDS pattern
            r'ldrb.*lsl.*ldr\s+x1',  # ARM64 MDS probe
        ],
        'SPECTRE_V1': [
            r'cmp.*b\.(ge|lt|le|gt).*ldr.*lsl',  # Bounds check bypass
            r'subs.*b\.(ge|lt).*ldr',            # ARM64 bounds check
        ],
        'SPECTRE_V2': [
            r'blr\s+x',      # Indirect branch (ARM64)
            r'call\s+\*',    # Indirect call (x86)
            r'jmp\s+\*',     # Indirect jump (x86)
        ],
        'BRANCH_HISTORY_INJECTION': [
            r'blr\s+x.*blr\s+x',  # Multiple indirect branches
            r'b\s+ltmp',          # BHI branch training pattern
        ],
        'RETBLEED': [
            r'ret.*ret',     # Multiple returns
            r'stp.*blr.*ldp.*ret',  # Call/return sequence
        ],
        'L1TF': [
            r'dc\s+civac.*ldr',  # Cache line flush then load
        ],
        'INCEPTION': [
            r'blr.*bl\s+_',  # Indirect then direct call pattern
        ],
    }
    
    patterns = vuln_specific_patterns.get(label, [])
    return any(re.search(p, seq_text) for p in patterns)

def main():
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, default=Path("data/dataset/merged_dataset_v5_deduped.jsonl"))
    parser.add_argument("--output", type=Path, default=Path("data/dataset/merged_dataset_v5_filtered.jsonl"))
    args = parser.parse_args()
    
    input_path = args.input
    output_path = args.output
    
    print(f"Reading from {input_path}...")
    
    kept_count = 0
    dropped_count = 0
    dropped_by_label = {}
    kept_by_label = {}
    
    with open(output_path, 'w') as out_f:
        with open(input_path, 'r') as in_f:
            for line in in_f:
                try:
                    record = json.loads(line)
                    seq = record.get('sequence', [])
                    label = record.get('label', record.get('vuln_label', 'UNKNOWN'))
                    
                    # Filter out very short sequences which are likely fragments
                    if len(seq) < 5:
                        dropped_count += 1
                        dropped_by_label[label] = dropped_by_label.get(label, 0) + 1
                        continue
                    
                    # Check if this is a utility sequence
                    if is_utility_sequence(seq):
                        # But keep it if it contains vulnerability-specific gadget patterns
                        if not contains_vulnerability_gadget(seq, label):
                            dropped_count += 1
                            dropped_by_label[label] = dropped_by_label.get(label, 0) + 1
                            continue
                        
                    out_f.write(line)
                    kept_count += 1
                    kept_by_label[label] = kept_by_label.get(label, 0) + 1
                except Exception as e:
                    print(f"Error parsing line: {e}")
                    continue

    print(f"\nFiltering complete.")
    print(f"Total Kept: {kept_count}")
    print(f"Total Dropped: {dropped_count}")
    print(f"\nKept by label:")
    for label, count in sorted(kept_by_label.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}")
    print(f"\nDropped by label:")
    for label, count in sorted(dropped_by_label.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}")
    print(f"\nOutput written to {output_path}")

if __name__ == "__main__":
    main()


