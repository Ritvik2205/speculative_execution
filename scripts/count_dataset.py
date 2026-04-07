import json
from collections import Counter
import sys

def analyze_dataset(path):
    try:
        with open(path, 'r') as f:
            lines = f.readlines()
            total = len(lines)
            print(f"Total lines in {path}: {total}")
            
            labels = Counter()
            sources = Counter()
            
            for line in lines:
                try:
                    data = json.loads(line)
                    labels[data.get('label', 'UNKNOWN')] += 1
                    # Check for specific vuln labels if 'label' is 'vuln'
                    if data.get('label') == 'vuln':
                        labels[f"VULN:{data.get('vuln_label', 'UNKNOWN')}"] += 1
                    
                    src = data.get('source_file', '')
                    if 'github' in src.lower():
                        sources['github'] += 1
                    elif 'c_vulns' in src.lower():
                        sources['c_vulns'] += 1
                    else:
                        sources['other'] += 1
                        
                except:
                    pass
            
            print("Label Distribution:")
            for l, c in labels.most_common():
                print(f"  {l}: {c}")
                
            print("Source Distribution:")
            for s, c in sources.most_common():
                print(f"  {s}: {c}")
                
    except FileNotFoundError:
        print(f"File not found: {path}")

print("--- Augmented Windows ---")
analyze_dataset('data/dataset/augmented_windows.jsonl')
print("\n--- GitHub Negatives ---")
analyze_dataset('githubCrawl/dataset/negatives.jsonl')


