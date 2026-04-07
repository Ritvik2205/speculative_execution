#!/usr/bin/env python3
import json
from pathlib import Path
import re
import sys

sys.path.append(str(Path(__file__).resolve().parents[1]))
from githubCrawl.enhanced_gadget_extractor import EnhancedGadgetExtractor


def get_ground_truth_label(filename: str) -> str:
    """
    Derive the ground truth vulnerability label from the source file name.
    This is more reliable than pattern-based classification for our training data.
    """
    name = filename.lower()
    
    # Order matters - check more specific patterns first
    # MDS variants (check before other patterns since mds_zombie could match spectre otherwise)
    if 'mds_zombie' in name or 'zombieload' in name:
        return 'MDS'
    if 'mds_ridl' in name or 'ridl' in name:
        return 'MDS'
    if 'mds_fallout' in name or 'fallout' in name:
        return 'MDS'
    if 'mds_taa' in name or 'taa' in name:
        return 'MDS'
    if 'mds' in name:
        return 'MDS'
    
    # Spectre variants
    if 'spectre_1' in name or 'spectre_v1' in name:
        return 'SPECTRE_V1'
    if 'spectre_2' in name or 'spectre_v2' in name:
        return 'SPECTRE_V2'
    if 'spectre_v4' in name or 'spectre_4' in name:
        return 'SPECTRE_V4'
    if 'spectre' in name:  # Generic spectre defaults to V1
        return 'SPECTRE_V1'
    
    # Other attacks
    if 'bhi' in name or 'branch_history' in name:
        return 'BRANCH_HISTORY_INJECTION'
    if 'retbleed' in name:
        return 'RETBLEED'
    if 'inception' in name:
        return 'INCEPTION'
    if 'l1tf' in name:
        return 'L1TF'
    if 'meltdown' in name:
        return 'MELTDOWN'
    
    # Utility/benign code
    if 'utils' in name or 'benign' in name:
        return 'BENIGN'
    
    return 'UNKNOWN'


def parse_asm_to_filedata(path: Path) -> dict:
    lines = path.read_text(errors="ignore").splitlines()
    raw_instructions = []
    for i, ln in enumerate(lines):
        s = ln.strip()
        if not s or s.startswith('.') or s.endswith(':'):
            continue
        # strip comments
        s = s.split(';', 1)[0].strip()
        if not s:
            continue
        parts = s.split()
        opcode = parts[0]
        operands = []
        if len(parts) > 1:
            rest = ' '.join(parts[1:])
            operands = [o.strip() for o in re.split(r",\s*", rest) if o.strip()]
        raw_instructions.append({
            'opcode': opcode,
            'operands': operands,
            'line': i,
            'raw': s,
        })
    arch = 'arm64' if 'arm64' in path.name or 'aarch64' in path.name else 'x86_64'
    return {
        'file_path': str(path),
        'arch': arch,
        'raw_instructions': raw_instructions,
    }


def main():
    root = Path(__file__).resolve().parents[1]
    asm_dir = root / 'c_vulns' / 'asm_code'
    out_dir = root / 'c_vulns' / 'extracted_gadgets'
    out_dir.mkdir(parents=True, exist_ok=True)

    extractor = EnhancedGadgetExtractor()
    results = []
    label_counts = {}
    
    for asm in asm_dir.glob('*.s'):
        fd = parse_asm_to_filedata(asm)
        gadgets = extractor.extract_enhanced_gadgets(fd)
        
        # Get ground truth label from file name
        ground_truth_label = get_ground_truth_label(asm.name)
        
        for g in gadgets:
            # Extract the actual instruction sequence from the gadget
            # The 'instructions' attribute contains EnhancedInstruction objects
            # We need to extract raw_line from each instruction
            sequence = []
            if hasattr(g, 'instructions') and g.instructions:
                for instr in g.instructions:
                    if hasattr(instr, 'raw_line') and instr.raw_line:
                        sequence.append(instr.raw_line)
            
            # Skip gadgets with empty sequences
            if len(sequence) < 3:
                continue
            
            # Use ground truth label instead of pattern-based classification
            # But keep the pattern-based type as 'detected_type' for analysis
            results.append({
                'source_file': g.source_file,
                'arch': g.architecture,
                'type': ground_truth_label,  # Use ground truth!
                'detected_type': g.gadget_type,  # Pattern-based detection for comparison
                'confidence': g.confidence_score,
                'context_window': g.context_window,
                'sequence': sequence,  # IMPORTANT: Add actual instruction sequence!
                'features': g.features,
                'pattern_breakdown': g.vulnerability_score_breakdown,
            })
            label_counts[ground_truth_label] = label_counts.get(ground_truth_label, 0) + 1
    
    out_path = out_dir / 'gadgets.jsonl'
    with out_path.open('w') as f:
        for r in results:
            f.write(json.dumps(r) + '\n')
    
    print(f"Wrote {len(results)} gadgets to {out_path}")
    print("\nLabel distribution (from file names):")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}")


if __name__ == '__main__':
    main()


