#!/usr/bin/env python3
"""
Vulnerability Match Validation Framework
Validates the matches found by assembly_similarity_analyzer.py
"""

import os
import json
import pickle
import subprocess
from pathlib import Path
from typing import List, Dict, Any, Optional, Tuple
from dataclasses import dataclass
from collections import defaultdict
import logging
import re
import difflib

@dataclass
class ValidationResult:
    """Result of vulnerability validation"""
    source_file: str
    matched_gadgets: List[str]
    confidence_score: float
    validation_score: float
    is_vulnerable: bool
    vulnerability_type: str
    evidence: Dict[str, Any]
    risk_level: str
    exploit_requirements: List[str]
    mitigation_factors: List[str]
    false_positive_likelihood: float

class VulnerabilityMatchValidator:
    """Validates potential vulnerability matches"""
    
    def __init__(self):
        self.logger = self._setup_logging()
        self.candidate_matches = []
        self.known_vulnerabilities = {}
        self.validation_results = []
        
    def _setup_logging(self) -> logging.Logger:
        """Setup logging"""
        logging.basicConfig(
            level=logging.INFO,
            format='%(asctime)s - %(levelname)s - %(message)s',
            handlers=[
                logging.FileHandler('vulnerability_validation.log'),
                logging.StreamHandler()
            ]
        )
        return logging.getLogger(__name__)
    
    def load_similarity_results(self, similarity_dir: str = "similarity_analysis"):
        """Load results from similarity analysis"""
        try:
            # Load candidate matches
            matches_path = Path(similarity_dir) / "candidate_matches.pkl"
            if matches_path.exists():
                with open(matches_path, 'rb') as f:
                    self.candidate_matches = pickle.load(f)
                self.logger.info(f"Loaded {len(self.candidate_matches)} candidate matches")
            
            # Load known vulnerability gadgets
            gadgets_path = Path(similarity_dir) / "known_vulnerability_gadgets.pkl"
            if gadgets_path.exists():
                with open(gadgets_path, 'r') as f:
                    self.known_vulnerabilities = json.load(f)
                self.logger.info(f"Loaded {len(self.known_vulnerabilities)} known vulnerability gadgets")
            
        except Exception as e:
            self.logger.error(f"Failed to load similarity results: {e}")
    
    def validate_all_matches(self) -> List[ValidationResult]:
        """Validate all candidate matches"""
        self.logger.info("Starting validation of all candidate matches...")
        
        for i, candidate in enumerate(self.candidate_matches):
            self.logger.info(f"Validating match {i+1}/{len(self.candidate_matches)}: {candidate.source_file}")
            
            validation_result = self._validate_single_match(candidate)
            self.validation_results.append(validation_result)
        
        return self.validation_results
    
    def _validate_single_match(self, candidate) -> ValidationResult:
        """Validate a single candidate match"""
        # Extract source code if available
        source_code = self._extract_source_code(candidate.source_file)
        
        # Analyze instruction patterns
        pattern_analysis = self._analyze_instruction_patterns(candidate.instructions)
        
        # Check for vulnerability-specific indicators
        vuln_indicators = self._check_vulnerability_indicators(candidate)
        
        # Analyze context and environment
        context_analysis = self._analyze_context(candidate, source_code)
        
        # Calculate validation score
        validation_score = self._calculate_validation_score(
            pattern_analysis, vuln_indicators, context_analysis
        )
        
        # Determine if actually vulnerable
        is_vulnerable = validation_score > 0.7
        
        # Identify vulnerability type
        vulnerability_type = self._identify_vulnerability_type(candidate.matched_gadgets)
        
        # Assess risk level
        risk_level = self._assess_risk_level(validation_score, context_analysis)
        
        # Identify exploit requirements
        exploit_requirements = self._identify_exploit_requirements(
            candidate, pattern_analysis, context_analysis
        )
        
        # Identify mitigation factors
        mitigation_factors = self._identify_mitigation_factors(
            candidate, context_analysis
        )
        
        # Estimate false positive likelihood
        false_positive_likelihood = self._estimate_false_positive_likelihood(
            validation_score, pattern_analysis, context_analysis
        )
        
        return ValidationResult(
            source_file=candidate.source_file,
            matched_gadgets=candidate.matched_gadgets,
            confidence_score=candidate.confidence_score,
            validation_score=validation_score,
            is_vulnerable=is_vulnerable,
            vulnerability_type=vulnerability_type,
            evidence={
                'pattern_analysis': pattern_analysis,
                'vulnerability_indicators': vuln_indicators,
                'context_analysis': context_analysis
            },
            risk_level=risk_level,
            exploit_requirements=exploit_requirements,
            mitigation_factors=mitigation_factors,
            false_positive_likelihood=false_positive_likelihood
        )
    
    def _extract_source_code(self, assembly_file: str) -> Optional[str]:
        """Extract corresponding source code if available"""
        try:
            # Try to find corresponding C/C++ source file
            assembly_path = Path(assembly_file)
            
            # Look for source files in the same directory
            source_dir = assembly_path.parent
            for source_file in source_dir.glob("*.c"):
                with open(source_file, 'r') as f:
                    return f.read()
            
            for source_file in source_dir.glob("*.cpp"):
                with open(source_file, 'r') as f:
                    return f.read()
            
            return None
        except Exception as e:
            self.logger.warning(f"Failed to extract source code for {assembly_file}: {e}")
            return None
    
    def _analyze_instruction_patterns(self, instructions) -> Dict[str, Any]:
        """Analyze instruction patterns for vulnerability indicators"""
        analysis = {
            'has_bounds_check': False,
            'has_speculation_barrier': False,
            'has_memory_access': False,
            'has_conditional_branch': False,
            'has_indirect_branch': False,
            'has_cache_operation': False,
            'has_timing_operation': False,
            'instruction_diversity': 0,
            'control_flow_complexity': 0
        }
        
        opcodes = []
        semantic_types = []
        
        for instr in instructions:
            opcodes.append(instr.opcode)
            semantic_types.append(instr.semantic_type)
            
            # Check for specific patterns
            if instr.opcode in ['cmp', 'test', 'subs']:
                analysis['has_bounds_check'] = True
            
            if instr.opcode in ['lfence', 'mfence', 'sfence', 'dsb', 'isb', 'dmb']:
                analysis['has_speculation_barrier'] = True
            
            if instr.semantic_type in ['LOAD', 'STORE']:
                analysis['has_memory_access'] = True
            
            if instr.opcode in ['jmp', 'je', 'jne', 'b', 'bl']:
                analysis['has_conditional_branch'] = True
            
            if instr.opcode in ['call', 'blr', 'ret']:
                analysis['has_indirect_branch'] = True
            
            if instr.opcode in ['clflush', 'clflushopt', 'dc', 'ic']:
                analysis['has_cache_operation'] = True
            
            if instr.opcode in ['rdtsc', 'rdtscp', 'mrs']:
                analysis['has_timing_operation'] = True
        
        # Calculate diversity and complexity
        analysis['instruction_diversity'] = len(set(opcodes)) / len(opcodes) if opcodes else 0
        analysis['control_flow_complexity'] = len([op for op in opcodes if op in ['jmp', 'je', 'jne', 'b', 'bl', 'call', 'ret']])
        
        return analysis
    
    def _check_vulnerability_indicators(self, candidate) -> Dict[str, Any]:
        """Check for specific vulnerability indicators"""
        indicators = {
            'spectre_v1_indicators': [],
            'spectre_v2_indicators': [],
            'meltdown_indicators': [],
            'l1tf_indicators': [],
            'mds_indicators': [],
            'bhi_indicators': [],
            'inception_indicators': [],
            'retbleed_indicators': []
        }
        
        # Check for Spectre V1 indicators
        if any('SPECTRE_V1' in gadget for gadget in candidate.matched_gadgets):
            if self._has_bounds_check_followed_by_access(candidate.instructions):
                indicators['spectre_v1_indicators'].append('Bounds check followed by speculative access')
            if self._has_conditional_branch_with_memory_access(candidate.instructions):
                indicators['spectre_v1_indicators'].append('Conditional branch with memory access')
        
        # Check for Spectre V2 indicators
        if any('SPECTRE_V2' in gadget for gadget in candidate.matched_gadgets):
            if self._has_indirect_branch(candidate.instructions):
                indicators['spectre_v2_indicators'].append('Indirect branch instruction')
            if self._has_branch_target_buffer_manipulation(candidate.instructions):
                indicators['spectre_v2_indicators'].append('Branch target buffer manipulation')
        
        # Check for Meltdown indicators
        if any('MELTDOWN' in gadget for gadget in candidate.matched_gadgets):
            if self._has_kernel_memory_access(candidate.instructions):
                indicators['meltdown_indicators'].append('Kernel memory access')
            if self._has_exception_handling(candidate.instructions):
                indicators['meltdown_indicators'].append('Exception handling pattern')
        
        # Check for L1TF indicators
        if any('L1TF' in gadget for gadget in candidate.matched_gadgets):
            if self._has_page_table_access(candidate.instructions):
                indicators['l1tf_indicators'].append('Page table access')
            if self._has_cache_flush_operations(candidate.instructions):
                indicators['l1tf_indicators'].append('Cache flush operations')
        
        return indicators
    
    def _analyze_context(self, candidate, source_code: Optional[str]) -> Dict[str, Any]:
        """Analyze context and environment factors"""
        context = {
            'is_kernel_code': False,
            'is_user_space': True,
            'has_mitigations': False,
            'compiler_optimization': 'unknown',
            'architecture': 'unknown',
            'function_name': 'unknown',
            'is_public_api': False,
            'handles_user_input': False
        }
        
        # Extract architecture and optimization from filename
        file_path = Path(candidate.source_file)
        filename = file_path.name
        
        # Parse architecture
        if 'arm64' in filename:
            context['architecture'] = 'arm64'
        elif 'x86_64' in filename:
            context['architecture'] = 'x86_64'
        
        # Parse optimization level
        for opt in ['O0', 'O1', 'O2', 'O3', 'Os']:
            if opt in filename:
                context['compiler_optimization'] = opt
                break
        
        # Check if kernel code
        if any(keyword in filename.lower() for keyword in ['kernel', 'sys', 'driver', 'module']):
            context['is_kernel_code'] = True
            context['is_user_space'] = False
        
        # Check for mitigations in source code
        if source_code:
            if 'lfence' in source_code or 'mfence' in source_code or 'sfence' in source_code:
                context['has_mitigations'] = True
            
            # Check if handles user input
            if any(keyword in source_code for keyword in ['scanf', 'gets', 'fgets', 'read', 'recv']):
                context['handles_user_input'] = True
        
        return context
    
    def _calculate_validation_score(self, pattern_analysis: Dict, vuln_indicators: Dict, 
                                  context_analysis: Dict) -> float:
        """Calculate validation score based on all analyses"""
        score = 0.0
        
        # Pattern analysis contribution (40%)
        pattern_score = 0.0
        if pattern_analysis['has_bounds_check']:
            pattern_score += 0.2
        if pattern_analysis['has_memory_access']:
            pattern_score += 0.2
        if pattern_analysis['has_conditional_branch']:
            pattern_score += 0.2
        if pattern_analysis['instruction_diversity'] > 0.5:
            pattern_score += 0.1
        if pattern_analysis['control_flow_complexity'] > 2:
            pattern_score += 0.1
        
        score += pattern_score * 0.4
        
        # Vulnerability indicators contribution (40%)
        indicator_score = 0.0
        total_indicators = 0
        found_indicators = 0
        
        for vuln_type, indicators in vuln_indicators.items():
            if indicators:  # If we have indicators for this vulnerability type
                total_indicators += 1
                found_indicators += len(indicators)
        
        if total_indicators > 0:
            indicator_score = found_indicators / (total_indicators * 2)  # Normalize
        
        score += indicator_score * 0.4
        
        # Context analysis contribution (20%)
        context_score = 0.0
        if context_analysis['is_kernel_code']:
            context_score += 0.3  # Kernel code is more likely to be vulnerable
        if context_analysis['handles_user_input']:
            context_score += 0.2  # User input handling increases risk
        if not context_analysis['has_mitigations']:
            context_score += 0.2  # No mitigations present
        if context_analysis['compiler_optimization'] in ['O2', 'O3']:
            context_score += 0.1  # Higher optimization can introduce vulnerabilities
        
        score += context_score * 0.2
        
        return min(score, 1.0)  # Cap at 1.0
    
    def _identify_vulnerability_type(self, matched_gadgets: List[str]) -> str:
        """Identify the most likely vulnerability type"""
        vuln_counts = defaultdict(int)
        
        for gadget in matched_gadgets:
            for vuln_type in ['SPECTRE_V1', 'SPECTRE_V2', 'MELTDOWN', 'L1TF', 'MDS', 'BHI', 'INCEPTION', 'RETBLEED']:
                if vuln_type in gadget:
                    vuln_counts[vuln_type] += 1
        
        if vuln_counts:
            return max(vuln_counts.items(), key=lambda x: x[1])[0]
        
        return 'UNKNOWN'
    
    def _assess_risk_level(self, validation_score: float, context_analysis: Dict) -> str:
        """Assess the risk level of the vulnerability"""
        if validation_score >= 0.8:
            return 'CRITICAL'
        elif validation_score >= 0.6:
            return 'HIGH'
        elif validation_score >= 0.4:
            return 'MEDIUM'
        elif validation_score >= 0.2:
            return 'LOW'
        else:
            return 'MINIMAL'
    
    def _identify_exploit_requirements(self, candidate, pattern_analysis: Dict, 
                                     context_analysis: Dict) -> List[str]:
        """Identify requirements for exploitation"""
        requirements = []
        
        if pattern_analysis['has_memory_access']:
            requirements.append('Memory access capability')
        
        if pattern_analysis['has_conditional_branch']:
            requirements.append('Control over branch condition')
        
        if context_analysis['handles_user_input']:
            requirements.append('User input control')
        
        if context_analysis['is_kernel_code']:
            requirements.append('Kernel execution context')
        
        if not context_analysis['has_mitigations']:
            requirements.append('No speculation barriers')
        
        return requirements
    
    def _identify_mitigation_factors(self, candidate, context_analysis: Dict) -> List[str]:
        """Identify factors that mitigate the vulnerability"""
        mitigations = []
        
        if context_analysis['has_mitigations']:
            mitigations.append('Speculation barriers present')
        
        if context_analysis['is_user_space']:
            mitigations.append('User-space execution')
        
        if context_analysis['compiler_optimization'] == 'O0':
            mitigations.append('No compiler optimizations')
        
        return mitigations
    
    def _estimate_false_positive_likelihood(self, validation_score: float, 
                                          pattern_analysis: Dict, 
                                          context_analysis: Dict) -> float:
        """Estimate likelihood of false positive"""
        fp_likelihood = 0.5  # Base likelihood
        
        # Reduce likelihood based on strong indicators
        if validation_score > 0.7:
            fp_likelihood -= 0.3
        elif validation_score > 0.5:
            fp_likelihood -= 0.2
        elif validation_score > 0.3:
            fp_likelihood -= 0.1
        
        # Increase likelihood based on mitigating factors
        if context_analysis['has_mitigations']:
            fp_likelihood += 0.2
        
        if context_analysis['is_user_space']:
            fp_likelihood += 0.1
        
        if pattern_analysis['instruction_diversity'] < 0.3:
            fp_likelihood += 0.1  # Low diversity might indicate false positive
        
        return max(0.0, min(1.0, fp_likelihood))
    
    # Helper methods for vulnerability-specific checks
    def _has_bounds_check_followed_by_access(self, instructions) -> bool:
        """Check for bounds check followed by memory access"""
        for i in range(len(instructions) - 1):
            if instructions[i].opcode in ['cmp', 'test']:
                if instructions[i+1].semantic_type in ['LOAD', 'STORE']:
                    return True
        return False
    
    def _has_conditional_branch_with_memory_access(self, instructions) -> bool:
        """Check for conditional branch with memory access"""
        for i in range(len(instructions) - 1):
            if instructions[i].opcode in ['je', 'jne', 'b']:
                if instructions[i+1].semantic_type in ['LOAD', 'STORE']:
                    return True
        return False
    
    def _has_indirect_branch(self, instructions) -> bool:
        """Check for indirect branch instructions"""
        return any(instr.opcode in ['call', 'blr', 'ret'] for instr in instructions)
    
    def _has_branch_target_buffer_manipulation(self, instructions) -> bool:
        """Check for branch target buffer manipulation"""
        return any(instr.opcode in ['clflush', 'clflushopt'] for instr in instructions)
    
    def _has_kernel_memory_access(self, instructions) -> bool:
        """Check for kernel memory access patterns"""
        # This is a simplified check - real implementation would be more complex
        return any(instr.semantic_type in ['LOAD', 'STORE'] for instr in instructions)
    
    def _has_exception_handling(self, instructions) -> bool:
        """Check for exception handling patterns"""
        return any(instr.opcode in ['int', 'syscall'] for instr in instructions)
    
    def _has_page_table_access(self, instructions) -> bool:
        """Check for page table access patterns"""
        return any(instr.semantic_type in ['LOAD', 'STORE'] for instr in instructions)
    
    def _has_cache_flush_operations(self, instructions) -> bool:
        """Check for cache flush operations"""
        return any(instr.opcode in ['clflush', 'clflushopt', 'dc', 'ic'] for instr in instructions)
    
    def save_validation_results(self, output_file: str = "validation_results.json"):
        """Save validation results to JSON"""
        results_data = []
        
        for result in self.validation_results:
            results_data.append({
                'source_file': result.source_file,
                'matched_gadgets': result.matched_gadgets,
                'confidence_score': result.confidence_score,
                'validation_score': result.validation_score,
                'is_vulnerable': result.is_vulnerable,
                'vulnerability_type': result.vulnerability_type,
                'risk_level': result.risk_level,
                'exploit_requirements': result.exploit_requirements,
                'mitigation_factors': result.mitigation_factors,
                'false_positive_likelihood': result.false_positive_likelihood,
                'evidence': result.evidence
            })
        
        with open(output_file, 'w') as f:
            json.dump(results_data, f, indent=2)
        
        self.logger.info(f"Saved validation results to {output_file}")
    
    def print_validation_summary(self):
        """Print validation summary"""
        print("\n=== VULNERABILITY VALIDATION SUMMARY ===")
        
        total_matches = len(self.validation_results)
        vulnerable_matches = [r for r in self.validation_results if r.is_vulnerable]
        high_risk_matches = [r for r in self.validation_results if r.risk_level in ['CRITICAL', 'HIGH']]
        
        print(f"\nTotal matches analyzed: {total_matches}")
        print(f"Confirmed vulnerable: {len(vulnerable_matches)}")
        print(f"High/Critical risk: {len(high_risk_matches)}")
        
        # Vulnerability type distribution
        vuln_types = defaultdict(int)
        for result in vulnerable_matches:
            vuln_types[result.vulnerability_type] += 1
        
        print(f"\nVulnerability Type Distribution:")
        for vuln_type, count in sorted(vuln_types.items()):
            print(f"  {vuln_type}: {count}")
        
        # Risk level distribution
        risk_levels = defaultdict(int)
        for result in self.validation_results:
            risk_levels[result.risk_level] += 1
        
        print(f"\nRisk Level Distribution:")
        for risk_level, count in sorted(risk_levels.items()):
            print(f"  {risk_level}: {count}")
        
        # Top vulnerable matches
        print(f"\nTop Vulnerable Matches:")
        vulnerable_sorted = sorted(vulnerable_matches, key=lambda x: x.validation_score, reverse=True)
        for i, result in enumerate(vulnerable_sorted[:5]):
            print(f"  {i+1}. {Path(result.source_file).name}")
            print(f"     Type: {result.vulnerability_type}")
            print(f"     Risk: {result.risk_level}")
            print(f"     Validation Score: {result.validation_score:.3f}")
            print(f"     False Positive Likelihood: {result.false_positive_likelihood:.3f}")

def main():
    validator = VulnerabilityMatchValidator()
    
    # Load similarity results
    validator.load_similarity_results()
    
    if not validator.candidate_matches:
        print("No candidate matches found. Run assembly_similarity_analyzer.py first.")
        return
    
    # Validate all matches
    validation_results = validator.validate_all_matches()
    
    # Save results
    validator.save_validation_results()
    
    # Print summary
    validator.print_validation_summary()

if __name__ == "__main__":
    main() 