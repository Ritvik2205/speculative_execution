#!/usr/bin/env python3
"""
Scan a single C/C++ source file for speculative execution vulnerabilities.
Pipeline:
 1) Compile source to assembly (clang) for arm64 (default)
 2) Parse assembly to instruction list
 3) Load trained RF + IsolationForest models (if available)
 4) Run detection with DSL minimality
 5) Output JSON with minimal vulnerable sequences
"""

from __future__ import annotations

import argparse
import json
import os
import shutil
import subprocess
from pathlib import Path
from typing import Dict, Any, List

from robust_vulnerability_detector import RobustVulnerabilityDetector
from github_vulnerability_scanner import GitHubVulnerabilityScanner, AssemblyFile

import joblib


def compile_to_asm(src_path: Path, out_dir: Path, arch: str = 'arm64', opt: str = 'O2') -> Path:
    out_dir.mkdir(parents=True, exist_ok=True)
    out_s = out_dir / f"{src_path.stem}.{arch}.clang.{opt}.s"
    cmd = ['clang', '-S', f'-{opt}', str(src_path), '-o', str(out_s)]
    # On macOS, arm64 is default on Apple Silicon; otherwise one can add -target
    try:
        subprocess.run(cmd, check=True, capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        raise RuntimeError(f"Compilation failed: {e.stderr}")
    return out_s


def load_models_into_detector(detector: RobustVulnerabilityDetector, model_dir: Path) -> bool:
    try:
        clf = joblib.load(model_dir / 'ml_classifier.joblib')
        iso = joblib.load(model_dir / 'anomaly_detector.joblib')
        scaler = joblib.load(model_dir / 'scaler.joblib')
        detector.ml_classifier = clf
        detector.anomaly_detector = iso
        detector.scaler = scaler
        return True
    except Exception:
        return False


def scan_source_file(src: Path, arch: str = 'arm64', opt: str = 'O2') -> Dict[str, Any]:
    tmp_dir = Path('temp_scan')
    if tmp_dir.exists():
        shutil.rmtree(tmp_dir)
    tmp_dir.mkdir(parents=True, exist_ok=True)

    asm_path = compile_to_asm(src, tmp_dir, arch=arch, opt=opt)

    # Parse assembly using existing scanner's parser
    scanner = GitHubVulnerabilityScanner()
    asm_file = AssemblyFile(
        filepath=str(asm_path),
        source_file=str(src),
        repository='local',
        architecture=arch,
        compiler='clang',
        optimization_level=opt,
        file_size=asm_path.stat().st_size
    )
    instructions = scanner.parse_assembly_file(asm_file)

    # Setup detector
    detector = RobustVulnerabilityDetector()
    model_dir = Path('ensemble_vulnerability_model_ensemble')
    models_loaded = model_dir.exists() and load_models_into_detector(detector, model_dir)
    if not models_loaded:
        # Fallback: build signatures from c_vulns and train quickly (small) if needed
        vuln_dir = '../c_vulns/asm_code'
        if os.path.exists(vuln_dir):
            signatures = detector.analyze_vulnerable_code(vuln_dir)
            detector.vulnerability_signatures = signatures
            detector.build_ml_classifier(signatures)

    detections = detector.detect_vulnerabilities(instructions, arch)

    # Format output
    results = []
    for det in detections:
        vtype = det.get('vuln_type', det.get('vulnerability_types', ['UNKNOWN']))
        if isinstance(vtype, list):
            vtype = vtype[0] if vtype else 'UNKNOWN'
        results.append({
            'vulnerability_type': vtype,
            'confidence': det.get('primary_confidence', det.get('confidence', 0.0)),
            'location': det.get('location', {'start_line': 0, 'end_line': 0}),
            'evidence': det.get('evidence', {}),
        })

    return {
        'source_file': str(src),
        'assembly_file': str(asm_path),
        'architecture': arch,
        'detections': results
    }


def main():
    parser = argparse.ArgumentParser(description='Scan a source file for speculative execution vulnerabilities')
    parser.add_argument('source', help='Path to C/C++ source file')
    parser.add_argument('--arch', default='arm64', help='Target architecture (default: arm64)')
    parser.add_argument('--opt', default='O2', help='Optimization level (O0/O1/O2/O3/Os)')
    parser.add_argument('--out', default='scan_result.json', help='Output JSON file')
    args = parser.parse_args()

    src = Path(args.source).resolve()
    if not src.exists():
        raise FileNotFoundError(f"Source file not found: {src}")

    result = scan_source_file(src, arch=args.arch, opt=args.opt)

    with open(args.out, 'w') as f:
        json.dump(result, f, indent=2)
    print(f"Saved results to {args.out}")


if __name__ == '__main__':
    main()

