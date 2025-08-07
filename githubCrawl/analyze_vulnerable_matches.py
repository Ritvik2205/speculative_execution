#!/usr/bin/env python3
"""
Analyze Vulnerable Matches
Examine the actual assembly code of the most vulnerable matches found
"""

import os
import json
from pathlib import Path
from typing import List, Dict, Any

def load_validation_results(validation_file: str = "simple_validation_results.json"):
    """Load validation results"""
    with open(validation_file, 'r') as f:
        return json.load(f)

def analyze_assembly_code(file_path: str, num_lines: int = 20):
    """Analyze the assembly code of a vulnerable file"""
    try:
        with open(file_path, 'r') as f:
            lines = f.readlines()
        
        print(f"\n=== ASSEMBLY CODE ANALYSIS: {Path(file_path).name} ===")
        print(f"File: {file_path}")
        print(f"Total lines: {len(lines)}")
        
        # Show first few lines
        print(f"\nFirst {num_lines} lines:")
        for i, line in enumerate(lines[:num_lines]):
            print(f"{i+1:3d}: {line.rstrip()}")
        
        # Analyze instruction patterns
        instruction_patterns = analyze_instruction_patterns(lines)
        print(f"\nInstruction Pattern Analysis:")
        for pattern, count in instruction_patterns.items():
            print(f"  {pattern}: {count}")
        
        return instruction_patterns
        
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return {}

def analyze_instruction_patterns(lines: List[str]) -> Dict[str, int]:
    """Analyze instruction patterns in assembly code"""
    patterns = {
        'memory_access': 0,
        'conditional_branch': 0,
        'unconditional_branch': 0,
        'function_call': 0,
        'return': 0,
        'compare': 0,
        'arithmetic': 0,
        'stack_operation': 0
    }
    
    for line in lines:
        line = line.strip().lower()
        
        # Skip comments and empty lines
        if not line or line.startswith('#'):
            continue
        
        # Memory access patterns
        if any(op in line for op in ['ldr', 'str', 'ldp', 'stp', 'ldur', 'stur']):
            patterns['memory_access'] += 1
        
        # Branch patterns
        if any(op in line for op in ['b.', 'cbz', 'cbnz', 'tbnz', 'tbz']):
            patterns['conditional_branch'] += 1
        elif line.startswith('b ') and not line.startswith('b.'):
            patterns['unconditional_branch'] += 1
        
        # Function calls
        if any(op in line for op in ['bl ', 'blr']):
            patterns['function_call'] += 1
        
        # Returns
        if line.startswith('ret'):
            patterns['return'] += 1
        
        # Compare operations
        if any(op in line for op in ['cmp', 'subs', 'adds']):
            patterns['compare'] += 1
        
        # Arithmetic operations
        if any(op in line for op in ['add', 'sub', 'mul', 'div', 'and', 'orr', 'eor']):
            patterns['arithmetic'] += 1
        
        # Stack operations
        if any(op in line for op in ['stp', 'ldp', 'sp']):
            patterns['stack_operation'] += 1
    
    return patterns

def identify_vulnerability_patterns(patterns: Dict[str, int], file_path: str) -> List[str]:
    """Identify specific vulnerability patterns"""
    vulnerability_indicators = []
    
    # Spectre V1 indicators
    if patterns['compare'] > 0 and patterns['memory_access'] > 0:
        vulnerability_indicators.append("Spectre V1: Compare followed by memory access")
    
    if patterns['conditional_branch'] > 0 and patterns['memory_access'] > 0:
        vulnerability_indicators.append("Spectre V1: Conditional branch with memory access")
    
    # Spectre V2 indicators
    if patterns['function_call'] > 0:
        vulnerability_indicators.append("Spectre V2: Function call (indirect branch)")
    
    # Meltdown indicators
    if patterns['memory_access'] > 3:
        vulnerability_indicators.append("Meltdown: High memory access frequency")
    
    # General speculation indicators
    if patterns['conditional_branch'] > 2:
        vulnerability_indicators.append("High conditional branch count (speculation opportunity)")
    
    if patterns['memory_access'] > 5:
        vulnerability_indicators.append("High memory access count (cache side-channel opportunity)")
    
    return vulnerability_indicators

def compare_with_known_vulnerabilities(file_path: str, known_vuln_dir: str = "../c_vulns/asm_code"):
    """Compare with known vulnerability patterns"""
    print(f"\n=== COMPARISON WITH KNOWN VULNERABILITIES ===")
    
    try:
        # Load some known vulnerability files for comparison
        known_vuln_files = []
        for vuln_file in Path(known_vuln_dir).glob("*.s"):
            if vuln_file.is_file():
                known_vuln_files.append(vuln_file)
        
        print(f"Found {len(known_vuln_files)} known vulnerability files for comparison")
        
        # Read the target file
        with open(file_path, 'r') as f:
            target_content = f.read()
        
        # Simple similarity check
        similarities = []
        for vuln_file in known_vuln_files[:5]:  # Check first 5 for performance
            try:
                with open(vuln_file, 'r') as f:
                    vuln_content = f.read()
                
                # Simple string similarity
                common_instructions = set(target_content.split()) & set(vuln_content.split())
                similarity = len(common_instructions) / max(len(set(target_content.split())), len(set(vuln_content.split())))
                
                similarities.append((vuln_file.name, similarity))
                
            except Exception as e:
                continue
        
        # Sort by similarity
        similarities.sort(key=lambda x: x[1], reverse=True)
        
        print(f"Top 3 most similar known vulnerabilities:")
        for i, (vuln_name, similarity) in enumerate(similarities[:3]):
            print(f"  {i+1}. {vuln_name}: {similarity:.3f}")
        
        return similarities
        
    except Exception as e:
        print(f"Error comparing with known vulnerabilities: {e}")
        return []

def generate_exploit_analysis(file_path: str, validation_result: Dict) -> Dict[str, Any]:
    """Generate exploit analysis for a vulnerable file"""
    print(f"\n=== EXPLOIT ANALYSIS ===")
    
    exploit_analysis = {
        'file_path': file_path,
        'vulnerability_types': validation_result['vulnerability_types'],
        'risk_level': validation_result['risk_level'],
        'exploit_difficulty': 'UNKNOWN',
        'attack_vectors': [],
        'mitigation_requirements': [],
        'exploit_requirements': []
    }
    
    # Determine exploit difficulty based on vulnerability types
    if 'SPECTRE_V1' in validation_result['vulnerability_types']:
        exploit_analysis['exploit_difficulty'] = 'MEDIUM'
        exploit_analysis['attack_vectors'].append('Bounds check bypass')
        exploit_analysis['exploit_requirements'].append('Control over array index')
        exploit_analysis['exploit_requirements'].append('Ability to measure cache timing')
    
    if 'MELTDOWN' in validation_result['vulnerability_types']:
        exploit_analysis['exploit_difficulty'] = 'HIGH'
        exploit_analysis['attack_vectors'].append('Kernel memory read')
        exploit_analysis['exploit_requirements'].append('Kernel execution context')
        exploit_analysis['exploit_requirements'].append('Exception handling capability')
    
    if 'SPECTRE_V2' in validation_result['vulnerability_types']:
        exploit_analysis['exploit_difficulty'] = 'HIGH'
        exploit_analysis['attack_vectors'].append('Branch target injection')
        exploit_analysis['exploit_requirements'].append('Control over indirect branch target')
        exploit_analysis['exploit_requirements'].append('Branch target buffer manipulation')
    
    # Add mitigation requirements
    exploit_analysis['mitigation_requirements'].append('Speculation barriers (lfence, mfence, sfence)')
    exploit_analysis['mitigation_requirements'].append('Compiler mitigations (retpoline, etc.)')
    exploit_analysis['mitigation_requirements'].append('Microcode updates')
    
    print(f"Exploit Difficulty: {exploit_analysis['exploit_difficulty']}")
    print(f"Attack Vectors: {', '.join(exploit_analysis['attack_vectors'])}")
    print(f"Exploit Requirements: {', '.join(exploit_analysis['exploit_requirements'])}")
    print(f"Mitigation Requirements: {', '.join(exploit_analysis['mitigation_requirements'])}")
    
    return exploit_analysis

def main():
    # Load validation results
    validation_results = load_validation_results()
    
    # Filter for vulnerable matches
    vulnerable_matches = [r for r in validation_results if r['is_vulnerable']]
    
    print(f"=== VULNERABLE MATCHES ANALYSIS ===")
    print(f"Found {len(vulnerable_matches)} vulnerable matches to analyze")
    
    all_analyses = []
    
    # Analyze each vulnerable match
    for i, match in enumerate(vulnerable_matches[:5]):  # Analyze top 5
        print(f"\n{'='*60}")
        print(f"ANALYZING VULNERABLE MATCH {i+1}/{len(vulnerable_matches[:5])}")
        print(f"{'='*60}")
        
        file_path = match['source_file']
        
        # Analyze assembly code
        patterns = analyze_assembly_code(file_path)
        
        # Identify vulnerability patterns
        vuln_indicators = identify_vulnerability_patterns(patterns, file_path)
        print(f"\nVulnerability Indicators:")
        for indicator in vuln_indicators:
            print(f"  - {indicator}")
        
        # Compare with known vulnerabilities
        similarities = compare_with_known_vulnerabilities(file_path)
        
        # Generate exploit analysis
        exploit_analysis = generate_exploit_analysis(file_path, match)
        
        # Store analysis
        analysis = {
            'match_info': match,
            'patterns': patterns,
            'vulnerability_indicators': vuln_indicators,
            'similarities': similarities,
            'exploit_analysis': exploit_analysis
        }
        all_analyses.append(analysis)
    
    # Save comprehensive analysis
    with open('vulnerable_matches_analysis.json', 'w') as f:
        json.dump(all_analyses, f, indent=2)
    
    print(f"\n{'='*60}")
    print(f"ANALYSIS COMPLETE")
    print(f"{'='*60}")
    print(f"Analyzed {len(all_analyses)} vulnerable matches")
    print(f"Results saved to: vulnerable_matches_analysis.json")
    
    # Print summary
    print(f"\nSUMMARY:")
    for i, analysis in enumerate(all_analyses):
        match = analysis['match_info']
        print(f"  {i+1}. {Path(match['source_file']).name}")
        print(f"     Risk: {match['risk_level']}")
        print(f"     Types: {', '.join(match['vulnerability_types'])}")
        print(f"     Exploit Difficulty: {analysis['exploit_analysis']['exploit_difficulty']}")

if __name__ == "__main__":
    main() 