#!/usr/bin/env python3
"""
Simple Improved Vulnerability Scanner
Focused on reducing false positives with better filtering and validation
"""

import os
import re
import json
import sqlite3
from pathlib import Path
from typing import List, Dict, Any, Optional, Tuple
from dataclasses import dataclass
import logging

@dataclass
class ImprovedDetection:
    """Enhanced detection result with validation metrics"""
    vulnerability_type: str
    confidence: float
    validation_score: float
    false_positive_likelihood: float
    assembly_file: str
    evidence: Dict[str, Any]
    risk_assessment: str
    why_detected: str
    why_might_be_fp: str

class SimpleImprovedScanner:
    """Improved scanner focused on reducing false positives"""
    
    def __init__(self):
        self.logger = self._setup_logging()
        
        # Stricter confidence thresholds
        self.confidence_thresholds = {
            'CRITICAL': 0.85,
            'HIGH': 0.75,
            'MEDIUM': 0.65,
            'LOW': 0.55
        }
        
        # False positive indicators
        self.fp_indicators = {
            'safe_function_patterns': [
                'time_diff', 'calculate', 'compute', 'math', 'convert',
                'format', 'print', 'display', 'log', 'debug'
            ],
            'safe_code_patterns': [
                # High arithmetic to branch ratio (math code)
                'arithmetic_heavy',
                # Simple loops
                'simple_iteration',
                # Data structure operations
                'data_processing'
            ],
            'mitigation_patterns': [
                'bounds_check_present',
                'speculation_barriers',
                'stack_protection',
                'input_validation'
            ]
        }
        
        # Vulnerability-specific validation rules
        self.vuln_validation_rules = {
            'SPECTRE_V1': {
                'required_elements': ['conditional_branch', 'array_access', 'no_barriers'],
                'fp_indicators': ['math_heavy', 'no_user_input', 'simple_loop'],
                'confidence_boost': 0.2,
                'confidence_penalty': -0.3
            },
            'SPECTRE_V2': {
                'required_elements': ['indirect_branch', 'no_retpoline'],
                'fp_indicators': ['simple_function_calls', 'no_user_input'],
                'confidence_boost': 0.15,
                'confidence_penalty': -0.25
            },
            'L1TF': {
                'required_elements': ['privileged_context', 'memory_access'],
                'fp_indicators': ['user_space_only', 'no_page_faults'],
                'confidence_boost': 0.3,
                'confidence_penalty': -0.4
            },
            'BHI': {
                'required_elements': ['complex_branching', 'indirect_calls'],
                'fp_indicators': ['simple_branches', 'deterministic_flow'],
                'confidence_boost': 0.1,
                'confidence_penalty': -0.2
            },
            'MDS': {
                'required_elements': ['memory_operations', 'store_load_dependency'],
                'fp_indicators': ['simple_data_copy', 'no_speculation'],
                'confidence_boost': 0.15,
                'confidence_penalty': -0.3
            }
        }
        
        self.logger.info("Simple Improved Scanner initialized")
    
    def _setup_logging(self) -> logging.Logger:
        """Setup logging"""
        logging.basicConfig(
            level=logging.INFO,
            format='%(asctime)s - %(levelname)s - %(message)s',
            handlers=[
                logging.FileHandler('simple_improved_scan.log'),
                logging.StreamHandler()
            ]
        )
        return logging.getLogger(__name__)
    
    def scan_and_validate(self, assembly_file: str) -> List[ImprovedDetection]:
        """Scan with improved validation"""
        detections = []
        
        # First get original detections (simulate or load from existing scanner)
        original_detections = self._get_original_detections(assembly_file)
        
        for detection in original_detections:
            # Apply improved validation
            improved_detection = self._validate_and_improve(detection, assembly_file)
            
            if improved_detection:
                detections.append(improved_detection)
        
        return detections
    
    def _get_original_detections(self, assembly_file: str) -> List[Dict[str, Any]]:
        """Get original vulnerability detections"""
        # Load from existing scan results
        detections = []
        
        db_path = "vulnerability_scan_results.db"
        if os.path.exists(db_path):
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute("""
                SELECT vulnerability_type, confidence, evidence, risk_level
                FROM vulnerabilities 
                WHERE assembly_file LIKE ?
            """, (f"%{Path(assembly_file).name}%",))
            
            for row in cursor.fetchall():
                detections.append({
                    'vulnerability_type': row[0],
                    'confidence': row[1],
                    'evidence': row[2],
                    'risk_level': row[3]
                })
            
            conn.close()
        
        return detections
    
    def _validate_and_improve(self, detection: Dict[str, Any], assembly_file: str) -> Optional[ImprovedDetection]:
        """Apply improved validation to a detection"""
        
        vuln_type = detection['vulnerability_type']
        original_confidence = detection['confidence']
        
        # Analyze the assembly file
        analysis = self._analyze_assembly_file(assembly_file)
        
        # Apply vulnerability-specific validation
        validation_result = self._apply_vuln_specific_validation(vuln_type, analysis, assembly_file)
        
        # Calculate improved confidence
        improved_confidence = self._calculate_improved_confidence(
            original_confidence, validation_result, analysis
        )
        
        # Calculate false positive likelihood
        fp_likelihood = self._calculate_fp_likelihood(validation_result, analysis)
        
        # Determine if we should keep this detection
        risk_level = self._determine_risk_level(improved_confidence, fp_likelihood)
        
        if improved_confidence < self.confidence_thresholds[risk_level]:
            self.logger.info(f"Filtered out {vuln_type} detection (conf: {improved_confidence:.3f} < {self.confidence_thresholds[risk_level]:.3f})")
            return None
        
        # Create improved detection
        return ImprovedDetection(
            vulnerability_type=vuln_type,
            confidence=improved_confidence,
            validation_score=validation_result['validation_score'],
            false_positive_likelihood=fp_likelihood,
            assembly_file=assembly_file,
            evidence={
                'original_confidence': original_confidence,
                'analysis': analysis,
                'validation': validation_result
            },
            risk_assessment=risk_level,
            why_detected=validation_result['reasons_for_detection'],
            why_might_be_fp=validation_result['fp_indicators_found']
        )
    
    def _analyze_assembly_file(self, assembly_file: str) -> Dict[str, Any]:
        """Analyze assembly file for key characteristics"""
        analysis = {
            'function_name': 'unknown',
            'instruction_count': 0,
            'branch_ratio': 0.0,
            'memory_ratio': 0.0,
            'arithmetic_ratio': 0.0,
            'has_bounds_checks': False,
            'has_speculation_barriers': False,
            'is_math_heavy': False,
            'is_simple_loop': False,
            'complexity_score': 0.0
        }
        
        try:
            with open(assembly_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            lines = [line.strip() for line in content.split('\n') if line.strip()]
            instructions = []
            
            # Extract function name from filename
            analysis['function_name'] = Path(assembly_file).stem.split('.')[0]
            
            # Parse instructions
            for line in lines:
                if (line and not line.startswith('.') and not line.startswith('#') 
                    and not line.endswith(':') and not line.startswith('//')):
                    instructions.append(line)
            
            analysis['instruction_count'] = len(instructions)
            
            if instructions:
                # Count instruction types
                branch_count = sum(1 for instr in instructions if any(
                    instr.lower().startswith(b) for b in ['b.', 'bl ', 'br ', 'cbz', 'cbnz']
                ))
                memory_count = sum(1 for instr in instructions if any(
                    op in instr.lower() for op in ['ldr', 'str', '[', ']']
                ))
                arithmetic_count = sum(1 for instr in instructions if any(
                    instr.lower().startswith(op) for op in ['add', 'sub', 'mul', 'fmul', 'fadd']
                ))
                
                analysis['branch_ratio'] = branch_count / len(instructions)
                analysis['memory_ratio'] = memory_count / len(instructions)
                analysis['arithmetic_ratio'] = arithmetic_count / len(instructions)
                
                # Check for security features
                content_lower = content.lower()
                analysis['has_bounds_checks'] = bool(re.search(r'cmp.*\n.*b\.[hl]s', content_lower))
                analysis['has_speculation_barriers'] = any(
                    barrier in content_lower for barrier in ['dsb', 'isb', 'lfence']
                )
                
                # Classify code type
                analysis['is_math_heavy'] = analysis['arithmetic_ratio'] > 0.4
                analysis['is_simple_loop'] = (
                    analysis['branch_ratio'] < 0.2 and 
                    'add' in content_lower and 
                    'cmp' in content_lower
                )
                
                # Calculate complexity
                analysis['complexity_score'] = (
                    analysis['branch_ratio'] * 0.4 +
                    analysis['memory_ratio'] * 0.3 +
                    len(set(instr.split()[0] for instr in instructions if instr.split())) / 20
                )
        
        except Exception as e:
            self.logger.warning(f"Failed to analyze {assembly_file}: {e}")
        
        return analysis
    
    def _apply_vuln_specific_validation(self, vuln_type: str, analysis: Dict[str, Any], 
                                      assembly_file: str) -> Dict[str, Any]:
        """Apply vulnerability-specific validation rules"""
        
        validation_result = {
            'validation_score': 0.5,  # Start neutral
            'reasons_for_detection': [],
            'fp_indicators_found': [],
            'confidence_adjustments': []
        }
        
        rules = self.vuln_validation_rules.get(vuln_type, {})
        
        # Check required elements
        required_elements = rules.get('required_elements', [])
        elements_found = 0
        
        for element in required_elements:
            if self._check_required_element(element, analysis, assembly_file):
                elements_found += 1
                validation_result['reasons_for_detection'].append(f"Has {element}")
        
        # Boost validation score based on required elements found
        if required_elements:
            element_score = elements_found / len(required_elements)
            validation_result['validation_score'] += element_score * 0.3
        
        # Check false positive indicators
        fp_indicators = rules.get('fp_indicators', [])
        fp_found = 0
        
        for indicator in fp_indicators:
            if self._check_fp_indicator(indicator, analysis, assembly_file):
                fp_found += 1
                validation_result['fp_indicators_found'].append(f"Shows {indicator}")
        
        # Reduce validation score based on FP indicators
        if fp_indicators:
            fp_score = fp_found / len(fp_indicators)
            validation_result['validation_score'] -= fp_score * 0.4
        
        # Function name analysis
        func_name = analysis.get('function_name', '').lower()
        if any(safe_pattern in func_name for safe_pattern in self.fp_indicators['safe_function_patterns']):
            validation_result['fp_indicators_found'].append("Safe function name pattern")
            validation_result['validation_score'] -= 0.2
        
        # Code pattern analysis
        if analysis.get('is_math_heavy'):
            validation_result['fp_indicators_found'].append("Math-heavy code")
            validation_result['validation_score'] -= 0.15
        
        if analysis.get('is_simple_loop'):
            validation_result['fp_indicators_found'].append("Simple loop pattern")
            validation_result['validation_score'] -= 0.1
        
        # Security feature bonuses/penalties
        if analysis.get('has_bounds_checks'):
            validation_result['reasons_for_detection'].append("No bounds check bypass")
            validation_result['validation_score'] -= 0.2
        
        if analysis.get('has_speculation_barriers'):
            validation_result['fp_indicators_found'].append("Has speculation barriers")
            validation_result['validation_score'] -= 0.3
        
        # Ensure validation score stays in valid range
        validation_result['validation_score'] = max(0.0, min(1.0, validation_result['validation_score']))
        
        return validation_result
    
    def _check_required_element(self, element: str, analysis: Dict[str, Any], assembly_file: str) -> bool:
        """Check if a required element is present"""
        
        if element == 'conditional_branch':
            return analysis.get('branch_ratio', 0) > 0.05
        elif element == 'array_access':
            return analysis.get('memory_ratio', 0) > 0.1
        elif element == 'no_barriers':
            return not analysis.get('has_speculation_barriers', True)
        elif element == 'indirect_branch':
            # Check assembly content for indirect branches
            try:
                with open(assembly_file, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read().lower()
                return 'br ' in content or 'blr' in content
            except:
                return False
        elif element == 'privileged_context':
            # Check if this looks like kernel/privileged code
            return 'kernel' in assembly_file.lower() or 'sys' in assembly_file.lower()
        elif element == 'complex_branching':
            return analysis.get('branch_ratio', 0) > 0.15
        elif element == 'memory_operations':
            return analysis.get('memory_ratio', 0) > 0.2
        else:
            return False
    
    def _check_fp_indicator(self, indicator: str, analysis: Dict[str, Any], assembly_file: str) -> bool:
        """Check if a false positive indicator is present"""
        
        if indicator == 'math_heavy':
            return analysis.get('is_math_heavy', False)
        elif indicator == 'no_user_input':
            func_name = analysis.get('function_name', '').lower()
            return not any(input_word in func_name for input_word in ['input', 'read', 'parse', 'get'])
        elif indicator == 'simple_loop':
            return analysis.get('is_simple_loop', False)
        elif indicator == 'simple_function_calls':
            return analysis.get('complexity_score', 0) < 0.3
        elif indicator == 'user_space_only':
            return 'kernel' not in assembly_file.lower() and 'sys' not in assembly_file.lower()
        elif indicator == 'simple_branches':
            return analysis.get('branch_ratio', 0) < 0.1
        elif indicator == 'deterministic_flow':
            return analysis.get('complexity_score', 0) < 0.2
        elif indicator == 'simple_data_copy':
            return analysis.get('arithmetic_ratio', 0) < 0.1 and analysis.get('branch_ratio', 0) < 0.1
        else:
            return False
    
    def _calculate_improved_confidence(self, original_confidence: float, 
                                     validation_result: Dict[str, Any], 
                                     analysis: Dict[str, Any]) -> float:
        """Calculate improved confidence score"""
        
        # Start with weighted combination of original confidence and validation
        improved_confidence = (original_confidence * 0.6 + validation_result['validation_score'] * 0.4)
        
        # Apply instruction count penalty for very short code
        if analysis.get('instruction_count', 0) < 10:
            improved_confidence *= 0.8
        
        # Apply complexity bonus/penalty
        complexity = analysis.get('complexity_score', 0)
        if complexity > 0.5:
            improved_confidence *= 1.1  # Complex code more likely to have vulns
        elif complexity < 0.2:
            improved_confidence *= 0.7  # Simple code less likely
        
        return max(0.0, min(1.0, improved_confidence))
    
    def _calculate_fp_likelihood(self, validation_result: Dict[str, Any], 
                               analysis: Dict[str, Any]) -> float:
        """Calculate false positive likelihood"""
        
        fp_likelihood = 1.0 - validation_result['validation_score']
        
        # Increase FP likelihood based on indicators
        fp_indicators = len(validation_result.get('fp_indicators_found', []))
        if fp_indicators > 0:
            fp_likelihood += fp_indicators * 0.1
        
        # Safe function patterns increase FP likelihood
        func_name = analysis.get('function_name', '').lower()
        if any(safe_pattern in func_name for safe_pattern in self.fp_indicators['safe_function_patterns']):
            fp_likelihood += 0.2
        
        # Math-heavy code increases FP likelihood
        if analysis.get('is_math_heavy', False):
            fp_likelihood += 0.15
        
        # Security features present increases FP likelihood
        if analysis.get('has_bounds_checks', False):
            fp_likelihood += 0.1
        if analysis.get('has_speculation_barriers', False):
            fp_likelihood += 0.2
        
        return max(0.0, min(1.0, fp_likelihood))
    
    def _determine_risk_level(self, confidence: float, fp_likelihood: float) -> str:
        """Determine risk level based on confidence and FP likelihood"""
        
        # Adjust confidence based on FP likelihood
        adjusted_confidence = confidence * (1.0 - fp_likelihood)
        
        if adjusted_confidence >= 0.85:
            return 'CRITICAL'
        elif adjusted_confidence >= 0.75:
            return 'HIGH'
        elif adjusted_confidence >= 0.65:
            return 'MEDIUM'
        else:
            return 'LOW'
    
    def scan_existing_results(self) -> List[ImprovedDetection]:
        """Re-scan existing vulnerability detection results with improved validation"""
        self.logger.info("Re-scanning existing results with improved validation...")
        
        improved_detections = []
        
        # Load existing scan results
        db_path = "vulnerability_scan_results.db"
        if not os.path.exists(db_path):
            self.logger.warning("No existing scan results found")
            return improved_detections
        
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        
        cursor.execute("""
            SELECT DISTINCT assembly_file, vulnerability_type, confidence, evidence, risk_level
            FROM vulnerabilities
            ORDER BY confidence DESC
        """)
        
        results = cursor.fetchall()
        conn.close()
        
        self.logger.info(f"Found {len(results)} existing detections to re-evaluate")
        
        for assembly_file, vuln_type, confidence, evidence, risk_level in results:
            try:
                detection = {
                    'vulnerability_type': vuln_type,
                    'confidence': confidence,
                    'evidence': evidence,
                    'risk_level': risk_level
                }
                
                improved_detection = self._validate_and_improve(detection, assembly_file)
                
                if improved_detection:
                    improved_detections.append(improved_detection)
                    self.logger.info(f"✅ Kept {vuln_type} in {Path(assembly_file).name} "
                                   f"(conf: {improved_detection.confidence:.3f}, "
                                   f"fp: {improved_detection.false_positive_likelihood:.2f})")
                else:
                    self.logger.info(f"❌ Filtered {vuln_type} in {Path(assembly_file).name} "
                                   f"(likely false positive)")
            
            except Exception as e:
                self.logger.warning(f"Error processing {assembly_file}: {e}")
        
        # Save improved results
        self._save_improved_results(improved_detections)
        
        return improved_detections
    
    def _save_improved_results(self, detections: List[ImprovedDetection]):
        """Save improved detection results"""
        
        # Create new table for improved results
        conn = sqlite3.connect("vulnerability_scan_results.db")
        cursor = conn.cursor()
        
        cursor.execute('''
            CREATE TABLE IF NOT EXISTS improved_vulnerabilities (
                id INTEGER PRIMARY KEY,
                assembly_file TEXT,
                vulnerability_type TEXT,
                confidence REAL,
                validation_score REAL,
                false_positive_likelihood REAL,
                risk_assessment TEXT,
                evidence TEXT,
                why_detected TEXT,
                why_might_be_fp TEXT,
                timestamp TEXT DEFAULT CURRENT_TIMESTAMP
            )
        ''')
        
        # Clear existing improved results
        cursor.execute('DELETE FROM improved_vulnerabilities')
        
        # Insert improved results
        for detection in detections:
            cursor.execute('''
                INSERT INTO improved_vulnerabilities 
                (assembly_file, vulnerability_type, confidence, validation_score,
                 false_positive_likelihood, risk_assessment, evidence, 
                 why_detected, why_might_be_fp)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                detection.assembly_file,
                detection.vulnerability_type,
                detection.confidence,
                detection.validation_score,
                detection.false_positive_likelihood,
                detection.risk_assessment,
                json.dumps(detection.evidence),
                detection.why_detected,
                detection.why_might_be_fp
            ))
        
        conn.commit()
        conn.close()
        
        self.logger.info(f"Saved {len(detections)} improved detection results")
    
    def generate_comparison_report(self, improved_detections: List[ImprovedDetection]):
        """Generate a comparison report"""
        
        # Load original results for comparison
        conn = sqlite3.connect("vulnerability_scan_results.db")
        cursor = conn.cursor()
        
        cursor.execute("SELECT COUNT(*) FROM vulnerabilities")
        original_count = cursor.fetchone()[0]
        
        cursor.execute("SELECT COUNT(*) FROM improved_vulnerabilities")
        improved_count = cursor.fetchone()[0]
        
        conn.close()
        
        # Calculate statistics
        high_confidence = len([d for d in improved_detections if d.confidence >= 0.75])
        low_fp_risk = len([d for d in improved_detections if d.false_positive_likelihood < 0.3])
        
        # Group by vulnerability type
        by_type = {}
        for detection in improved_detections:
            vuln_type = detection.vulnerability_type
            if vuln_type not in by_type:
                by_type[vuln_type] = {'count': 0, 'avg_confidence': 0, 'avg_fp_risk': 0}
            
            by_type[vuln_type]['count'] += 1
            by_type[vuln_type]['avg_confidence'] += detection.confidence
            by_type[vuln_type]['avg_fp_risk'] += detection.false_positive_likelihood
        
        # Calculate averages
        for vuln_type in by_type:
            count = by_type[vuln_type]['count']
            by_type[vuln_type]['avg_confidence'] /= count
            by_type[vuln_type]['avg_fp_risk'] /= count
        
        # Generate report
        report = {
            'improvement_summary': {
                'original_detections': original_count,
                'improved_detections': improved_count,
                'reduction_percentage': (original_count - improved_count) / original_count * 100 if original_count > 0 else 0,
                'high_confidence_detections': high_confidence,
                'low_fp_risk_detections': low_fp_risk
            },
            'by_vulnerability_type': by_type,
            'sample_improvements': []
        }
        
        # Add sample improvements
        for detection in improved_detections[:5]:
            report['sample_improvements'].append({
                'file': Path(detection.assembly_file).name,
                'type': detection.vulnerability_type,
                'confidence': detection.confidence,
                'fp_likelihood': detection.false_positive_likelihood,
                'why_detected': detection.why_detected,
                'concerns': detection.why_might_be_fp
            })
        
        # Save report
        with open('improved_scanner_report.json', 'w') as f:
            json.dump(report, f, indent=2)
        
        # Print summary
        print("\n" + "="*60)
        print("🔬 IMPROVED VULNERABILITY SCANNER REPORT")
        print("="*60)
        print(f"📊 Original detections: {original_count}")
        print(f"✅ Improved detections: {improved_count}")
        print(f"📉 Reduction: {report['improvement_summary']['reduction_percentage']:.1f}%")
        print(f"🎯 High confidence: {high_confidence}")
        print(f"🔒 Low FP risk: {low_fp_risk}")
        
        print(f"\n📈 By vulnerability type:")
        for vuln_type, stats in by_type.items():
            print(f"   {vuln_type}: {stats['count']} detections "
                  f"(avg conf: {stats['avg_confidence']:.3f}, "
                  f"avg FP risk: {stats['avg_fp_risk']:.2f})")
        
        self.logger.info("Improvement report saved to improved_scanner_report.json")

def main():
    """Run the improved scanner"""
    print("🔬 Simple Improved Vulnerability Scanner")
    print("="*50)
    
    scanner = SimpleImprovedScanner()
    
    # Re-scan existing results with improved validation
    improved_detections = scanner.scan_existing_results()
    
    # Generate comparison report
    scanner.generate_comparison_report(improved_detections)
    
    print(f"\n✅ Completed! Processed {len(improved_detections)} improved detections")

if __name__ == "__main__":
    main()