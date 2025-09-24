#!/usr/bin/env python3
import json
from pathlib import Path
import re
import sys

sys.path.append(str(Path(__file__).resolve().parents[1]))
from githubCrawl.enhanced_gadget_extractor import EnhancedGadgetExtractor


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
    for asm in asm_dir.glob('*.s'):
        fd = parse_asm_to_filedata(asm)
        gadgets = extractor.extract_enhanced_gadgets(fd)
        for g in gadgets:
            results.append({
                'source_file': g.source_file,
                'arch': g.architecture,
                'type': g.gadget_type,
                'confidence': g.confidence_score,
                'context_window': g.context_window,
                'features': g.features,
                'pattern_breakdown': g.vulnerability_score_breakdown,
            })
    out_path = out_dir / 'gadgets.jsonl'
    with out_path.open('w') as f:
        for r in results:
            f.write(json.dumps(r) + '\n')
    print(f"Wrote {len(results)} gadgets to {out_path}")


if __name__ == '__main__':
    main()


