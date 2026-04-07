import json
from collections import Counter
import sys
from pathlib import Path

def analyze_dataset(path):
    try:
        path = Path(path)
        with path.open('r') as f:
            lines = f.readlines()
            total = len(lines)
            print(f"Total lines in {path}: {total}")
            
            labels = Counter()
            sources = Counter()
            
            for line in lines:
                try:
                    data = json.loads(line)
                    labels[data.get('label', 'UNKNOWN')] += 1
                    
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

if __name__ == "__main__":
    if len(sys.argv) > 1:
        for p in sys.argv[1:]:
            print(f"\n--- Analyzing {p} ---")
            analyze_dataset(p)
    else:
        print("Usage: python count_dataset.py <path_to_jsonl>")


