#!/usr/bin/env python3
"""
Simple Vulnerability Match Validation
Validates the matches found by assembly_similarity_analyzer.py using a simpler approach
"""

import os
import json
import pickle
from pathlib import Path
from typing import List, Dict, Any
from collections import defaultdict
import logging

def setup_logging():
    """Setup logging"""
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler('simple_validation.log'),
            logging.StreamHandler()
        ]
    )
    return logging.getLogger(__name__)

def load_similarity_results(similarity_dir: str = "similarity_analysis"):
    """Load results from similarity analysis"""
    logger = logging.getLogger(__name__)
    
    try:
        # Load summary results
        results_path = Path(similarity_dir) / "similarity_results.json"
        if results_path.exists():
            with open(results_path, 'r') as f:
                summary_results = json.load(f)
            logger.info(f"Loaded similarity summary: {summary_results}")
            return summary_results
        else:
            logger.error(f"Similarity results file not found: {results_path}")
            return None
            
    except Exception as e:
        logger.error(f"Failed to load similarity results: {e}")
        return None

def analyze_top_matches(summary_results: Dict[str, Any]):
    """Analyze the top matches from similarity results"""
    logger = logging.getLogger(__name__)
    
    print("\n=== SIMPLE VULNERABILITY VALIDATION ===")
    
    # Extract top matches
    top_matches = summary_results.get('top_matches', [])
    
    print(f"\nAnalyzing {len(top_matches)} top similarity matches...")
    
    validation_results = []
    
    for i, match in enumerate(top_matches):
        print(f"\n--- Match {i+1}: {match['source_file']} ---")
        
        # Basic validation analysis
        validation_score = 0.0
        risk_factors = []
        mitigation_factors = []
        
        # Analyze confidence score
        confidence = match.get('confidence_score', 0.0)
        if confidence > 0.7:
            validation_score += 0.3
            risk_factors.append("High similarity confidence")
        elif confidence > 0.5:
            validation_score += 0.2
            risk_factors.append("Medium similarity confidence")
        elif confidence > 0.3:
            validation_score += 0.1
            risk_factors.append("Low similarity confidence")
        
        # Analyze file characteristics
        filename = match['source_file']
        
        # Check architecture
        if 'arm64' in filename:
            risk_factors.append("ARM64 architecture (common target)")
        elif 'x86_64' in filename:
            risk_factors.append("x86_64 architecture (common target)")
        
        # Check optimization level
        if 'O2' in filename or 'O3' in filename:
            risk_factors.append("High optimization level (can introduce vulnerabilities)")
            validation_score += 0.1
        elif 'O0' in filename:
            mitigation_factors.append("No optimization (reduces speculation)")
        
        # Check if it's a system/library function
        if any(keyword in filename.lower() for keyword in ['strcpy', 'strncpy', 'memcpy', 'memset', 'index']):
            risk_factors.append("System/library function (common attack vector)")
            validation_score += 0.2
        
        # Analyze instruction count
        instruction_count = match.get('instruction_count', 0)
        if instruction_count > 20:
            risk_factors.append("Large instruction sequence (more complex)")
        elif instruction_count < 5:
            mitigation_factors.append("Small instruction sequence (less likely to be vulnerable)")
        
        # Analyze matched gadgets
        matched_gadgets = match.get('matched_gadgets', [])
        if len(matched_gadgets) > 5:
            risk_factors.append("Matches multiple vulnerability types")
            validation_score += 0.1
        
        # Check for specific vulnerability types
        vuln_types = set()
        for gadget in matched_gadgets:
            for vuln_type in ['SPECTRE_V1', 'SPECTRE_V2', 'MELTDOWN', 'L1TF', 'MDS', 'BHI', 'INCEPTION', 'RETBLEED']:
                if vuln_type in gadget:
                    vuln_types.add(vuln_type)
        
        if 'SPECTRE_V1' in vuln_types:
            risk_factors.append("Spectre V1 pattern detected")
            validation_score += 0.2
        if 'MELTDOWN' in vuln_types:
            risk_factors.append("Meltdown pattern detected")
            validation_score += 0.2
        if 'SPECTRE_V2' in vuln_types:
            risk_factors.append("Spectre V2 pattern detected")
            validation_score += 0.2
        
        # Determine risk level
        if validation_score >= 0.6:
            risk_level = "HIGH"
        elif validation_score >= 0.4:
            risk_level = "MEDIUM"
        elif validation_score >= 0.2:
            risk_level = "LOW"
        else:
            risk_level = "MINIMAL"
        
        # Determine if vulnerable
        is_vulnerable = validation_score > 0.5
        
        # Print analysis
        print(f"Confidence Score: {confidence:.3f}")
        print(f"Validation Score: {validation_score:.3f}")
        print(f"Risk Level: {risk_level}")
        print(f"Vulnerable: {'YES' if is_vulnerable else 'NO'}")
        print(f"Vulnerability Types: {', '.join(vuln_types) if vuln_types else 'None'}")
        print(f"Instruction Count: {instruction_count}")
        print(f"Matched Gadgets: {len(matched_gadgets)}")
        
        if risk_factors:
            print(f"Risk Factors: {', '.join(risk_factors)}")
        if mitigation_factors:
            print(f"Mitigation Factors: {', '.join(mitigation_factors)}")
        
        # Store result
        validation_results.append({
            'source_file': match['source_file'],
            'confidence_score': confidence,
            'validation_score': validation_score,
            'risk_level': risk_level,
            'is_vulnerable': is_vulnerable,
            'vulnerability_types': list(vuln_types),
            'instruction_count': instruction_count,
            'matched_gadgets_count': len(matched_gadgets),
            'risk_factors': risk_factors,
            'mitigation_factors': mitigation_factors
        })
    
    return validation_results

def analyze_vulnerability_distribution(summary_results: Dict[str, Any]):
    """Analyze vulnerability type distribution"""
    print(f"\n=== VULNERABILITY TYPE DISTRIBUTION ===")
    
    vuln_dist = summary_results.get('vulnerability_type_distribution', {})
    
    if vuln_dist:
        print(f"\nTotal matches by vulnerability type:")
        for vuln_type, count in sorted(vuln_dist.items()):
            print(f"  {vuln_type}: {count}")
        
        # Calculate percentages
        total_matches = sum(vuln_dist.values())
        print(f"\nPercentage distribution:")
        for vuln_type, count in sorted(vuln_dist.items()):
            percentage = (count / total_matches) * 100
            print(f"  {vuln_type}: {percentage:.1f}%")
    else:
        print("No vulnerability type distribution data available")

def analyze_confidence_distribution(summary_results: Dict[str, Any]):
    """Analyze confidence score distribution"""
    print(f"\n=== CONFIDENCE DISTRIBUTION ===")
    
    high_conf = summary_results.get('high_confidence_count', 0)
    med_conf = summary_results.get('medium_confidence_count', 0)
    total_candidates = summary_results.get('total_candidates', 0)
    
    print(f"Total candidates: {total_candidates}")
    print(f"High confidence (>= 0.7): {high_conf}")
    print(f"Medium confidence (0.4-0.7): {med_conf}")
    
    if total_candidates > 0:
        high_percentage = (high_conf / total_candidates) * 100
        med_percentage = (med_conf / total_candidates) * 100
        print(f"High confidence percentage: {high_percentage:.1f}%")
        print(f"Medium confidence percentage: {med_percentage:.1f}%")

def save_validation_results(validation_results: List[Dict], output_file: str = "simple_validation_results.json"):
    """Save validation results"""
    with open(output_file, 'w') as f:
        json.dump(validation_results, f, indent=2)
    
    print(f"\nValidation results saved to {output_file}")

def print_validation_summary(validation_results: List[Dict]):
    """Print validation summary"""
    print(f"\n=== VALIDATION SUMMARY ===")
    
    total_matches = len(validation_results)
    vulnerable_matches = [r for r in validation_results if r['is_vulnerable']]
    high_risk_matches = [r for r in validation_results if r['risk_level'] == 'HIGH']
    
    print(f"Total matches analyzed: {total_matches}")
    print(f"Confirmed vulnerable: {len(vulnerable_matches)}")
    print(f"High risk: {len(high_risk_matches)}")
    
    # Risk level distribution
    risk_levels = defaultdict(int)
    for result in validation_results:
        risk_levels[result['risk_level']] += 1
    
    print(f"\nRisk Level Distribution:")
    for risk_level, count in sorted(risk_levels.items()):
        print(f"  {risk_level}: {count}")
    
    # Vulnerability type distribution
    vuln_types = defaultdict(int)
    for result in validation_results:
        for vuln_type in result['vulnerability_types']:
            vuln_types[vuln_type] += 1
    
    print(f"\nVulnerability Type Distribution:")
    for vuln_type, count in sorted(vuln_types.items()):
        print(f"  {vuln_type}: {count}")
    
    # Top vulnerable matches
    print(f"\nTop Vulnerable Matches:")
    vulnerable_sorted = sorted(vulnerable_matches, key=lambda x: x['validation_score'], reverse=True)
    for i, result in enumerate(vulnerable_sorted[:5]):
        print(f"  {i+1}. {Path(result['source_file']).name}")
        print(f"     Validation Score: {result['validation_score']:.3f}")
        print(f"     Risk Level: {result['risk_level']}")
        print(f"     Types: {', '.join(result['vulnerability_types'])}")

def main():
    logger = setup_logging()
    
    # Load similarity results
    summary_results = load_similarity_results()
    
    if not summary_results:
        print("No similarity results found. Run assembly_similarity_analyzer.py first.")
        return
    
    # Analyze vulnerability distribution
    analyze_vulnerability_distribution(summary_results)
    
    # Analyze confidence distribution
    analyze_confidence_distribution(summary_results)
    
    # Analyze top matches
    validation_results = analyze_top_matches(summary_results)
    
    # Save results
    save_validation_results(validation_results)
    
    # Print summary
    print_validation_summary(validation_results)

if __name__ == "__main__":
    main() 