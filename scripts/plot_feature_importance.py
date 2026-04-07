#!/usr/bin/env python3
import argparse
import json
import joblib
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from pathlib import Path

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model-dir", type=Path, default=Path("models/merged_rf_v5"))
    parser.add_argument("--output", type=Path, default=Path("viz_comparisons/feature_importance.png"))
    parser.add_argument("--top-k", type=int, default=30)
    args = parser.parse_args()

    print(f"Loading model from {args.model_dir}...")
    try:
        clf = joblib.load(args.model_dir / "rf_multiclass.joblib")
        vec = joblib.load(args.model_dir / "rf_vectorizer.joblib")
    except FileNotFoundError:
        print("Error: Model files not found.")
        return

    # Extract feature importances
    importances = clf.feature_importances_
    feature_names = vec.get_feature_names_out()
    
    # Create a DataFrame
    df = pd.DataFrame({
        'feature': feature_names,
        'importance': importances
    })
    
    # Sort and take top K
    df = df.sort_values(by='importance', ascending=False).head(args.top_k)
    
    # Plot
    plt.figure(figsize=(12, 10))
    plt.barh(df['feature'], df['importance'], color='skyblue')
    plt.xlabel("Gini Importance")
    plt.ylabel("Feature")
    plt.title(f"Top {args.top_k} Features - Random Forest")
    plt.gca().invert_yaxis()  # Highest importance at the top
    plt.tight_layout()
    
    # Save
    args.output.parent.mkdir(parents=True, exist_ok=True)
    plt.savefig(args.output)
    print(f"Saved feature importance plot to {args.output}")
    
    # Print text summary
    print("\nTop 20 Features:")
    print(df[['feature', 'importance']].head(20).to_string(index=False))

if __name__ == "__main__":
    main()

