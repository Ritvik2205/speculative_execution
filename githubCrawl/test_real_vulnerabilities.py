#!/usr/bin/env python3
"""
Test the improved scanner on actual vulnerable code to ensure it still detects real vulnerabilities
"""

import os
import json
from pathlib import Path
from simple_improved_scanner import SimpleImprovedScanner

def test_on_known_vulnerabilities():
    """Test improved scanner on known vulnerable assembly files"""
    print("🧪 Testing Improved Scanner on Known Vulnerabilities")
    print("="*60)
    
    scanner = SimpleImprovedScanner()
    
    # Test on known vulnerable files
    vuln_dir = Path("../c_vulns/asm_code")
    
    if not vuln_dir.exists():
        print("❌ Vulnerable code directory not found")
        return
    
    test_files = list(vuln_dir.glob("*.s"))[:5]  # Test first 5 files
    
    if not test_files:
        print("❌ No vulnerable assembly files found")
        return
    
    print(f"Testing on {len(test_files)} known vulnerable files...")
    
    results = {}
    
    for vuln_file in test_files:
        print(f"\n🔍 Testing: {vuln_file.name}")
        
        # Create a mock detection (simulate what original scanner would find)
        mock_detection = create_mock_detection_for_file(vuln_file)
        
        if mock_detection:
            # Test the improved validation
            improved_detection = scanner._validate_and_improve(mock_detection, str(vuln_file))
            
            if improved_detection:
                print(f"  ✅ Still detected {improved_detection.vulnerability_type}")
                print(f"     Confidence: {improved_detection.confidence:.3f}")
                print(f"     FP likelihood: {improved_detection.false_positive_likelihood:.3f}")
                print(f"     Why detected: {improved_detection.why_detected}")
                
                results[vuln_file.name] = {
                    'detected': True,
                    'type': improved_detection.vulnerability_type,
                    'confidence': improved_detection.confidence,
                    'fp_likelihood': improved_detection.false_positive_likelihood
                }
            else:
                print(f"  ❌ No longer detected (filtered as false positive)")
                results[vuln_file.name] = {'detected': False}
        else:
            print(f"  ⚠️  Could not create mock detection")
            results[vuln_file.name] = {'detected': False, 'reason': 'no_mock'}
    
    # Summary
    detected_count = sum(1 for r in results.values() if r.get('detected', False))
    total_count = len(results)
    
    print(f"\n📊 Summary:")
    print(f"   Known vulnerable files tested: {total_count}")
    print(f"   Still detected after improvement: {detected_count}")
    print(f"   Detection rate: {detected_count/total_count*100:.1f}%")
    
    # Save results
    with open('vulnerable_code_test_results.json', 'w') as f:
        json.dump(results, f, indent=2)
    
    return results

def create_mock_detection_for_file(vuln_file: Path) -> dict:
    """Create a mock detection for a vulnerable file"""
    filename = vuln_file.name.lower()
    
    # Determine vulnerability type from filename
    if 'spectre_1' in filename or 'spectre_v1' in filename:
        vuln_type = 'SPECTRE_V1'
        confidence = 0.75  # High confidence for real vulnerability
    elif 'spectre_2' in filename:
        vuln_type = 'SPECTRE_V2'
        confidence = 0.70
    elif 'meltdown' in filename:
        vuln_type = 'MELTDOWN'
        confidence = 0.80
    elif 'l1tf' in filename:
        vuln_type = 'L1TF'
        confidence = 0.65
    elif 'bhi' in filename:
        vuln_type = 'BHI'
        confidence = 0.60
    elif 'mds' in filename:
        vuln_type = 'MDS'
        confidence = 0.70
    elif 'retbleed' in filename:
        vuln_type = 'RETBLEED'
        confidence = 0.65
    elif 'inception' in filename:
        vuln_type = 'INCEPTION'
        confidence = 0.60
    else:
        return None
    
    return {
        'vulnerability_type': vuln_type,
        'confidence': confidence,
        'evidence': f'Mock evidence for {vuln_type}',
        'risk_level': 'HIGH' if confidence > 0.7 else 'MEDIUM'
    }

def test_edge_cases():
    """Test edge cases to ensure robustness"""
    print("\n🔬 Testing Edge Cases")
    print("="*40)
    
    scanner = SimpleImprovedScanner()
    
    # Test cases
    edge_cases = [
        {
            'name': 'Very high confidence real vulnerability',
            'detection': {
                'vulnerability_type': 'SPECTRE_V1',
                'confidence': 0.95,
                'evidence': 'Strong evidence',
                'risk_level': 'CRITICAL'
            },
            'file_content': '''
                // Spectre V1 pattern
                cmp x0, x1
                b.ge bounds_ok
                ldr w2, [x2, x0, lsl #2]
                ldr w3, [x3, w2, lsl #6]
            ''',
            'expected': 'should_detect'
        },
        {
            'name': 'Mathematical function (safe)',
            'detection': {
                'vulnerability_type': 'L1TF',
                'confidence': 0.60,
                'evidence': 'Weak evidence',
                'risk_level': 'MEDIUM'
            },
            'file_content': '''
                // Math function - should be filtered
                fmul d0, d0, d1
                fadd d0, d0, d2
                fsub d0, d0, d3
                fdiv d0, d0, d4
                ret
            ''',
            'expected': 'should_filter'
        },
        {
            'name': 'Code with mitigations',
            'detection': {
                'vulnerability_type': 'SPECTRE_V1',
                'confidence': 0.70,
                'evidence': 'Pattern match',
                'risk_level': 'HIGH'
            },
            'file_content': '''
                // Code with bounds check
                cmp x0, x1
                b.hs bounds_error
                dsb sy  // speculation barrier
                ldr w2, [x2, x0, lsl #2]
                bounds_error:
                ret
            ''',
            'expected': 'should_filter'
        }
    ]
    
    for case in edge_cases:
        print(f"\n🧪 {case['name']}:")
        
        # Create temporary file
        test_file = f"temp_test_{case['name'].replace(' ', '_').lower()}.s"
        with open(test_file, 'w') as f:
            f.write(case['file_content'])
        
        try:
            improved_detection = scanner._validate_and_improve(case['detection'], test_file)
            
            if case['expected'] == 'should_detect':
                if improved_detection:
                    print(f"  ✅ Correctly detected (conf: {improved_detection.confidence:.3f})")
                else:
                    print(f"  ❌ Failed to detect (should have detected)")
            elif case['expected'] == 'should_filter':
                if improved_detection:
                    print(f"  ❌ Failed to filter (conf: {improved_detection.confidence:.3f})")
                else:
                    print(f"  ✅ Correctly filtered as false positive")
        
        except Exception as e:
            print(f"  ❌ Error: {e}")
        
        finally:
            # Clean up
            if os.path.exists(test_file):
                os.remove(test_file)

def main():
    """Run all tests"""
    # Test on known vulnerabilities
    results = test_on_known_vulnerabilities()
    
    # Test edge cases
    test_edge_cases()
    
    print("\n✅ Testing complete!")

if __name__ == "__main__":
    main()