import json
from pathlib import Path
from collections import defaultdict

def main():
    dataset_path = Path("data/features/features_v5_enhanced.jsonl")
    
    bhi_traces = defaultdict(list)
    mds_traces = defaultdict(list)
    
    print(f"Reading {dataset_path}...")
    with open(dataset_path, 'r') as f:
        for line in f:
            rec = json.loads(line)
            label = rec.get("label")
            op_trace = rec["features"].get("op_trace", "")
            
            if label == "BRANCH_HISTORY_INJECTION":
                bhi_traces[op_trace].append(rec["id"])
            elif label == "MDS":
                mds_traces[op_trace].append(rec["id"])

    print(f"Found {len(bhi_traces)} unique BHI op_traces.")
    print(f"Found {len(mds_traces)} unique MDS op_traces.")
    
    # Check for overlap
    common_traces = set(bhi_traces.keys()) & set(mds_traces.keys())
    
    print(f"Number of overlapping op_traces: {len(common_traces)}")
    
    if common_traces:
        print("\n--- Overlapping Op-Traces (Structural Duplicates) ---")
        for i, trace in enumerate(list(common_traces)[:5]):
            print(f"\nOverlap #{i+1}:")
            print(f"Trace: {trace}")
            print(f"BHI Count: {len(bhi_traces[trace])}, MDS Count: {len(mds_traces[trace])}")
            print(f"Example BHI ID: {bhi_traces[trace][0]}")
            print(f"Example MDS ID: {mds_traces[trace][0]}")

if __name__ == "__main__":
    main()

