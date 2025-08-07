#!/usr/bin/env python3
"""
ML Detection Example
Shows exactly how machine learning models detect vulnerabilities in real assembly code
"""

import sqlite3
import json
from pathlib import Path
from github_vulnerability_scanner import GitHubVulnerabilityScanner
from robust_vulnerability_detector import RobustVulnerabilityDetector

def analyze_ml_detection_process():
    """Demonstrate the ML detection process step by step"""
    print("🔬 ML Vulnerability Detection Process Analysis")
    print("="*60)
    
    # Load a real detection result
    db_path = "vulnerability_scan_results.db"
    if not Path(db_path).exists():
        print("❌ No scan results found. Run the scanner first.")
        return
    
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    # Get the highest confidence detection
    cursor.execute("""
        SELECT assembly_file, vulnerability_type, confidence, evidence 
        FROM vulnerabilities 
        ORDER BY confidence DESC 
        LIMIT 1
    """)
    
    result = cursor.fetchone()
    if not result:
        print("❌ No vulnerability detections found")
        return
    
    assembly_file, vuln_type, confidence, evidence_json = result
    evidence = json.loads(evidence_json)
    
    print(f"📁 Analyzing detection in: {Path(assembly_file).name}")
    print(f"🎯 Detected vulnerability: {vuln_type}")
    print(f"📊 Confidence score: {confidence:.3f}")
    
    # Show the ML process
    demonstrate_feature_extraction(assembly_file)
    demonstrate_ml_classification(assembly_file, evidence)
    demonstrate_ensemble_fusion(evidence)
    
    conn.close()

def demonstrate_feature_extraction(assembly_file):
    """Show how features are extracted from assembly code"""
    print(f"\n🔧 STEP 1: Feature Extraction from Assembly Code")
    print("-" * 50)
    
    try:
        # Read assembly file
        with open(assembly_file, 'r', encoding='utf-8', errors='ignore') as f:
            lines = f.readlines()[:20]  # First 20 lines for demo
        
        print(f"📄 Sample assembly code:")
        for i, line in enumerate(lines[:5], 1):
            if line.strip() and not line.strip().startswith('.'):
                print(f"   {i:2d}: {line.strip()}")
        
        # Parse instructions
        scanner = GitHubVulnerabilityScanner()
        instructions = []
        
        for i, line in enumerate(lines):
            line = line.strip()
            if not line or line.startswith('.') or line.startswith('#') or ':' in line:
                continue
            
            parts = line.split()
            if not parts:
                continue
            
            opcode = parts[0].lower()
            operands = parts[1:] if len(parts) > 1 else []
            semantics = scanner._analyze_instruction_semantics(opcode, operands, 'arm64')
            
            instruction = {
                'line_num': i + 1,
                'raw_line': line,
                'opcode': opcode,
                'operands': operands,
                'semantics': semantics
            }
            instructions.append(instruction)
        
        if not instructions:
            print("   ⚠️  No parseable instructions found")
            return
        
        print(f"\n📊 Extracted Features:")
        
        # 1. Statistical features
        opcodes = [instr['opcode'] for instr in instructions]
        unique_opcodes = len(set(opcodes))
        branch_count = sum(1 for instr in instructions if instr['semantics']['is_branch'])
        memory_count = sum(1 for instr in instructions if instr['semantics']['accesses_memory'])
        
        print(f"   📈 Statistical Features:")
        print(f"      - Total instructions: {len(instructions)}")
        print(f"      - Unique opcodes: {unique_opcodes}")
        print(f"      - Branch instructions: {branch_count}")
        print(f"      - Memory accesses: {memory_count}")
        print(f"      - Branch density: {branch_count/len(instructions):.3f}")
        print(f"      - Memory density: {memory_count/len(instructions):.3f}")
        
        # 2. Pattern features
        speculation_indicators = sum(1 for instr in instructions 
                                   if instr['semantics']['is_speculation_barrier'])
        timing_sensitive = sum(1 for instr in instructions 
                             if instr['semantics']['is_timing_sensitive'])
        
        print(f"   🔍 Pattern Features:")
        print(f"      - Speculation barriers: {speculation_indicators}")
        print(f"      - Timing-sensitive ops: {timing_sensitive}")
        print(f"      - Conditional branches: {sum(1 for instr in instructions if instr['semantics']['is_conditional'])}")
        
        # 3. Semantic indicators
        print(f"   🧠 Semantic Indicators:")
        if branch_count > 0 and memory_count > 0:
            print(f"      - Has branch + memory pattern ✅")
        if any(instr['semantics']['is_comparison'] for instr in instructions):
            print(f"      - Has comparison operations ✅")
        if any(instr['semantics']['is_indirect'] for instr in instructions):
            print(f"      - Has indirect operations ✅")
            
    except Exception as e:
        print(f"   ❌ Error analyzing file: {e}")

def demonstrate_ml_classification(assembly_file, evidence):
    """Show how ML models classify the features"""
    print(f"\n🤖 STEP 2: Machine Learning Classification")
    print("-" * 50)
    
    print(f"🌲 Random Forest Classifier Process:")
    print(f"   1. Feature vector (50 dimensions) → Normalized")
    print(f"   2. 100 decision trees vote on vulnerability type")
    print(f"   3. Probability distribution across 8 vulnerability types:")
    
    # Show evidence from the detection
    if 'confidence_breakdown' in evidence:
        breakdown = evidence['confidence_breakdown']
        print(f"      ML Predictions:")
        for key, value in breakdown.items():
            if key.startswith('ml_'):
                vuln_type = key.replace('ml_', '')
                print(f"         {vuln_type}: {value:.3f}")
    
    print(f"\n🔍 Isolation Forest Anomaly Detection:")
    print(f"   - Detects unusual patterns not seen in training")
    print(f"   - Lower scores = more anomalous = potentially vulnerable")
    
    if 'anomaly' in evidence.get('confidence_breakdown', {}):
        anomaly_score = evidence['confidence_breakdown']['anomaly']
        print(f"   - Anomaly score: {anomaly_score:.3f}")

def demonstrate_ensemble_fusion(evidence):
    """Show how ensemble combines multiple ML approaches"""
    print(f"\n🎭 STEP 3: Ensemble Fusion")
    print("-" * 50)
    
    print(f"🔄 Multi-Model Combination:")
    print(f"   The ensemble detector combines:")
    print(f"   • Robust ML Detector (40% weight)")
    print(f"   • Semantic Analyzer (35% weight)")  
    print(f"   • Pattern Matcher (15% weight)")
    print(f"   • Anomaly Detector (10% weight)")
    
    print(f"\n📊 Evidence Collected:")
    detector_results = evidence.get('detector_results', [])
    print(f"   - Detection sources: {len(detector_results)}")
    
    matching_patterns = evidence.get('matching_patterns', [])
    if matching_patterns:
        print(f"   - Matching patterns: {len(matching_patterns)}")
        for pattern in matching_patterns[:3]:
            print(f"     • {pattern}")
    
    semantic_indicators = evidence.get('semantic_indicators', [])
    if semantic_indicators:
        print(f"   - Semantic indicators: {len(semantic_indicators)}")
        for indicator in semantic_indicators[:3]:
            print(f"     • {indicator}")
    
    print(f"\n⚖️ Final Decision Process:")
    print(f"   1. Weighted combination of all scores")
    print(f"   2. Evidence strength calculation")
    print(f"   3. False positive likelihood assessment")
    print(f"   4. Consensus threshold check (≥ 0.4)")
    print(f"   5. Risk level assignment based on confidence")

def show_ml_model_internals():
    """Show the internal structure of ML models"""
    print(f"\n🔬 ML Model Internals")
    print("=" * 60)
    
    try:
        # Initialize detector to show model structure
        detector = RobustVulnerabilityDetector()
        
        # Load vulnerability signatures
        vuln_asm_dir = "../c_vulns/asm_code"
        if Path(vuln_asm_dir).exists():
            print(f"📚 Training Data:")
            signatures = detector.analyze_vulnerable_code(vuln_asm_dir)
            print(f"   - Total signatures: {len(signatures)}")
            
            # Count by vulnerability type
            vuln_counts = {}
            for sig in signatures:
                vuln_counts[sig.vuln_type] = vuln_counts.get(sig.vuln_type, 0) + 1
            
            print(f"   - Distribution by type:")
            for vuln_type, count in sorted(vuln_counts.items()):
                print(f"     • {vuln_type}: {count} signatures")
            
            # Build ML classifier
            detector.build_ml_classifier(signatures)
            
            print(f"\n🌲 Random Forest Model:")
            print(f"   - Trees: {detector.ml_classifier.n_estimators}")
            print(f"   - Max depth: {detector.ml_classifier.max_depth}")
            print(f"   - Features: {detector.ml_classifier.n_features_in_}")
            print(f"   - Classes: {list(detector.ml_classifier.classes_)}")
            
            print(f"\n📊 Feature Importance (Top 5):")
            feature_importance = detector.ml_classifier.feature_importances_
            top_features = sorted(enumerate(feature_importance), key=lambda x: x[1], reverse=True)[:5]
            
            feature_names = [
                "instruction_count", "unique_opcodes", "branch_density", "memory_density",
                "cfg_nodes", "cfg_edges", "cfg_density", "speculation_indicators",
                "timing_patterns", "cache_patterns"
            ]
            
            for i, (feature_idx, importance) in enumerate(top_features, 1):
                feature_name = feature_names[feature_idx] if feature_idx < len(feature_names) else f"feature_{feature_idx}"
                print(f"   {i}. {feature_name}: {importance:.3f}")
                
        else:
            print(f"❌ Training data not found at {vuln_asm_dir}")
            
    except Exception as e:
        print(f"❌ Error showing model internals: {e}")

def main():
    """Run the ML detection analysis"""
    analyze_ml_detection_process()
    show_ml_model_internals()
    
    print(f"\n✅ ML Analysis Complete!")
    print(f"📋 Key Takeaways:")
    print(f"   • 50-dimensional feature vectors capture vulnerability patterns")
    print(f"   • Random Forest provides probabilistic vulnerability classification")
    print(f"   • Isolation Forest detects novel/unknown vulnerability patterns")
    print(f"   • Ensemble fusion combines multiple ML approaches for robustness")
    print(f"   • Evidence collection provides interpretable results")

if __name__ == "__main__":
    main()