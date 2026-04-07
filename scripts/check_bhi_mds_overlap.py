import json
from pathlib import Path
from collections import defaultdict

def normalize_seq(seq_lines):
    # Join lines and strip whitespace to ensure robust comparison
    return "\n".join([line.strip() for line in seq_lines if line.strip()])

def main():
    dataset_path = Path("data/dataset/merged_dataset_v5_filtered.jsonl")
    
    bhi_sequences = defaultdict(list)
    mds_sequences = defaultdict(list)
    
    print(f"Reading {dataset_path}...")
    with open(dataset_path, 'r') as f:
        for line_num, line in enumerate(f):
            try:
                rec = json.loads(line)
            except json.JSONDecodeError:
                continue
                
            label = rec.get("vuln_label")
            if not label:
                label = rec.get("label")
            
            # Normalize sequence
            seq_str = normalize_seq(rec.get("sequence", []))
            
            source = rec.get("source_file", "unknown")
            id_val = rec.get("id", f"line_{line_num}")
            
            if label == "BRANCH_HISTORY_INJECTION":
                bhi_sequences[seq_str].append({"id": id_val, "source": source})
            elif label == "MDS":
                mds_sequences[seq_str].append({"id": id_val, "source": source})

    print(f"Found {len(bhi_sequences)} unique BHI sequences.")
    print(f"Found {len(mds_sequences)} unique MDS sequences.")
    
    # Check for overlap
    common_sequences = set(bhi_sequences.keys()) & set(mds_sequences.keys())
    
    print(f"Number of overlapping sequences: {len(common_sequences)}")
    
    if common_sequences:
        print("\n--- Overlapping Sequences Details ---")
        for i, seq in enumerate(common_sequences):
            print(f"\nOverlap #{i+1}:")
            print("Sequence snippet:")
            print(seq[:200] + "..." if len(seq) > 200 else seq)
            
            print("\nAppears in BHI as:")
            for item in bhi_sequences[seq][:3]: # Limit to first 3
                print(f"  - ID: {item['id']}, Source: {item['source']}")
                
            print("\nAppears in MDS as:")
            for item in mds_sequences[seq][:3]: # Limit to first 3
                print(f"  - ID: {item['id']}, Source: {item['source']}")
                
    else:
        print("\nNo exact duplicate sequences found between BHI and MDS.")

if __name__ == "__main__":
    main()

