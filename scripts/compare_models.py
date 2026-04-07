#!/usr/bin/env python3
"""
Compare BiLSTM models v18, v20, v21, v22 performance.
Generates a comparison report and visualization.
"""

import json
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np


def load_model_metrics(model_dir: Path):
    """Load metrics from a model directory."""
    # Try different metrics file names
    for name in ["metrics.json", "rf_metrics.json"]:
        metrics_path = model_dir / name
        if metrics_path.exists():
            with open(metrics_path) as f:
                return json.load(f)
    return None


def normalize_metrics(metrics, model_name):
    """Normalize metrics to a consistent format."""
    # Check if it's BiLSTM format (has train_report/test_report)
    if 'test_report' in metrics:
        return {
            'test_accuracy': metrics.get('best_test_acc', metrics['test_report'].get('accuracy', 0)),
            'final_report': metrics['test_report'],
        }
    # Check if it's RF v18 format (has classes at root level)
    elif 'accuracy' in metrics:
        return {
            'test_accuracy': metrics.get('accuracy', 0),
            'final_report': metrics,
        }
    # Otherwise, use v22 format
    elif 'final_report' in metrics:
        return {
            'test_accuracy': metrics.get('best_test_acc', 0),
            'final_report': metrics['final_report'],
        }
    return metrics


def extract_per_class_f1(report):
    """Extract per-class F1 scores from classification report."""
    classes = ['BENIGN', 'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'L1TF', 
               'MDS', 'RETBLEED', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4']
    f1_scores = {}
    for cls in classes:
        if cls in report:
            f1_scores[cls] = report[cls].get('f1-score', 0)
    return f1_scores


def main():
    print("=" * 70)
    print("MODEL COMPARISON: v18, v20, v21, v22")
    print("=" * 70)
    
    # Define model directories (check which exist)
    models = {
        'v18 (RF)': Path("models/rf_v18_seq_emb"),
        'v19': Path("models/bilstm_v19_best"),
        'v20': Path("models/bilstm_v20"),
        'v21': Path("models/bilstm_v21_contrastive"),
        'v22': Path("models/bilstm_v22"),
        'v23 (Hybrid)': Path("models/bilstm_v23_hybrid"),
        'v25 (Semantic)': Path("models/semantic_v25"),
    }
    
    # Load metrics for each model
    results = {}
    for name, model_dir in models.items():
        raw_metrics = load_model_metrics(model_dir)
        if raw_metrics:
            metrics = normalize_metrics(raw_metrics, name)
            results[name] = metrics
            print(f"\n{name}: Loaded metrics from {model_dir}")
        else:
            print(f"\n{name}: No metrics found at {model_dir}")
    
    if not results:
        print("No model metrics found!")
        return 1
    
    # Summary table
    print("\n" + "=" * 70)
    print("ACCURACY COMPARISON")
    print("=" * 70)
    print(f"{'Model':<12} {'Test Acc':<12} {'Macro F1':<12} {'Weighted F1':<12}")
    print("-" * 55)
    
    for name, metrics in sorted(results.items()):
        test_acc = metrics.get('test_accuracy', 0)
        report = metrics.get('final_report', {})
        macro_f1 = report.get('macro avg', {}).get('f1-score', 0)
        weighted_f1 = report.get('weighted avg', {}).get('f1-score', 0)
        print(f"{name:<12} {test_acc:.4f}       {macro_f1:.4f}       {weighted_f1:.4f}")
    
    # Per-class F1 comparison
    print("\n" + "=" * 70)
    print("PER-CLASS F1 SCORES")
    print("=" * 70)
    
    classes = ['BENIGN', 'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'L1TF', 
               'MDS', 'RETBLEED', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4']
    
    # Header
    header = f"{'Class':<25}"
    for name in sorted(results.keys()):
        header += f"{name:<10}"
    print(header)
    print("-" * (25 + 10 * len(results)))
    
    per_class_f1 = {name: {} for name in results}
    for name, metrics in results.items():
        report = metrics.get('final_report', {})
        for cls in classes:
            if cls in report:
                per_class_f1[name][cls] = report[cls].get('f1-score', 0)
    
    for cls in classes:
        row = f"{cls:<25}"
        for name in sorted(results.keys()):
            f1 = per_class_f1[name].get(cls, 0)
            row += f"{f1:.4f}    "
        print(row)
    
    # Identify confusion improvements
    print("\n" + "=" * 70)
    print("KEY IMPROVEMENTS IN V22")
    print("=" * 70)
    
    if 'v22' in results and 'v20' in results or ('v22' in results):
        v22_report = results.get('v22', {}).get('final_report', {})
        v20_report = results.get('v20', {}).get('final_report', {})
        
        print(f"\nConfused pairs targeted by v22 discriminative features:")
        pairs = [
            ('L1TF', 'SPECTRE_V1'),
            ('RETBLEED', 'INCEPTION'),
            ('MDS', 'SPECTRE_V1'),
            ('INCEPTION', 'BRANCH_HISTORY_INJECTION'),
        ]
        
        for cls1, cls2 in pairs:
            v22_f1_1 = v22_report.get(cls1, {}).get('f1-score', 0)
            v20_f1_1 = v20_report.get(cls1, {}).get('f1-score', 0)
            v22_f1_2 = v22_report.get(cls2, {}).get('f1-score', 0)
            v20_f1_2 = v20_report.get(cls2, {}).get('f1-score', 0)
            
            delta1 = v22_f1_1 - v20_f1_1
            delta2 = v22_f1_2 - v20_f1_2
            
            sign1 = "+" if delta1 >= 0 else ""
            sign2 = "+" if delta2 >= 0 else ""
            
            print(f"\n  {cls1} vs {cls2}:")
            print(f"    {cls1}: v20={v20_f1_1:.4f} -> v22={v22_f1_1:.4f} ({sign1}{delta1:.4f})")
            print(f"    {cls2}: v20={v20_f1_2:.4f} -> v22={v22_f1_2:.4f} ({sign2}{delta2:.4f})")
    
    # Generate comparison visualization
    print("\n" + "=" * 70)
    print("GENERATING VISUALIZATION")
    print("=" * 70)
    
    viz_dir = Path("viz_comparison")
    viz_dir.mkdir(exist_ok=True)
    
    # Bar chart comparison
    fig, axes = plt.subplots(1, 2, figsize=(16, 6))
    
    # Overall accuracy comparison
    model_names = sorted(results.keys())
    accuracies = [results[n].get('test_accuracy', 0) for n in model_names]
    
    colors = ['#2ecc71', '#3498db', '#9b59b6', '#e74c3c', '#f39c12', '#1abc9c', '#e67e22', '#34495e'][:len(model_names)]
    bars = axes[0].bar(model_names, accuracies, color=colors)
    axes[0].set_ylabel('Test Accuracy')
    axes[0].set_title('Overall Test Accuracy Comparison')
    axes[0].set_ylim(0.8, 0.9)
    
    for bar, acc in zip(bars, accuracies):
        axes[0].text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.002, 
                    f'{acc:.3f}', ha='center', va='bottom', fontsize=10)
    
    # Per-class F1 comparison
    x = np.arange(len(classes))
    width = 0.15
    
    for i, name in enumerate(model_names):
        f1s = [per_class_f1[name].get(cls, 0) for cls in classes]
        offset = (i - len(model_names)/2 + 0.5) * width
        axes[1].bar(x + offset, f1s, width, label=name, color=colors[i])
    
    axes[1].set_xlabel('Class')
    axes[1].set_ylabel('F1 Score')
    axes[1].set_title('Per-Class F1 Score Comparison')
    axes[1].set_xticks(x)
    axes[1].set_xticklabels([c[:12] for c in classes], rotation=45, ha='right')
    axes[1].legend()
    axes[1].set_ylim(0.6, 1.0)
    
    plt.tight_layout()
    save_path = viz_dir / "model_comparison.png"
    plt.savefig(save_path, dpi=150)
    plt.close()
    print(f"  Saved: {save_path}")
    
    # Save comparison report
    report_path = viz_dir / "comparison_report.json"
    comparison_report = {
        'models': {},
    }
    for name, metrics in results.items():
        comparison_report['models'][name] = {
            'test_accuracy': metrics.get('test_accuracy', 0),
            'per_class_f1': per_class_f1[name],
        }
    
    with open(report_path, 'w') as f:
        json.dump(comparison_report, f, indent=2)
    print(f"  Saved: {report_path}")
    
    print("\n" + "=" * 70)
    print("COMPARISON COMPLETE")
    print("=" * 70)
    
    return 0


if __name__ == "__main__":
    main()
