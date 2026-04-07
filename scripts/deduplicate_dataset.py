import json
import hashlib
from collections import defaultdict
from pathlib import Path

def get_sequence_hash(sequence):
    """Create a hash of the instruction sequence content."""
    # Join all instructions to create a unique string for the sequence
    content = "|".join([s.strip() for s in sequence])
    return hashlib.md5(content.encode('utf-8')).hexdigest()

def main():
    input_path = Path("data/dataset/merged_dataset_v5.jsonl")
    output_path = Path("data/dataset/merged_dataset_v5_deduped.jsonl")
    
    print(f"Reading from {input_path}...")
    
    # Store (hash -> set of labels seen for this sequence)
    seq_map = defaultdict(set)
    # Store (hash -> list of full records) to write out later
    seq_records = defaultdict(list)
    
    total_read = 0
    
    with open(input_path, 'r') as f:
        for line in f:
            total_read += 1
            try:
                record = json.loads(line)
                seq = record['sequence']
                label = record['label']
                
                # Hash the sequence
                h = get_sequence_hash(seq)
                
                seq_map[h].add(label)
                seq_records[h].append(record)
            except Exception as e:
                print(f"Error parsing line: {e}")
                continue

    print(f"Total records read: {total_read}")
    print(f"Unique sequences: {len(seq_map)}")
    
    # Identify ambiguous sequences (mapped to >1 distinct label)
    ambiguous_hashes = {h for h, labels in seq_map.items() if len(labels) > 1}
    
    print(f"Found {len(ambiguous_hashes)} ambiguous sequences (appearing with multiple conflicting labels).")
    
    # For the ambiguous ones, let's see what they are
    print("\nTop 5 Ambiguous Sequences:")
    for i, h in enumerate(list(ambiguous_hashes)[:5]):
        labels = seq_map[h]
        example_rec = seq_records[h][0]
        print(f"Hash: {h}")
        print(f"  Conflicting Labels: {labels}")
        print(f"  Example Sequence (first 3 lines): {example_rec['sequence'][:3]}")
        print("-" * 30)

    # Filter strategy:
    # 1. If a sequence has multiple labels, remove it entirely (safest) OR re-label as 'BENIGN' if appropriate?
    #    DECISION: Remove entirely. If it's ambiguous, it confuses the classifier. 
    #    These are likely utility functions like 'flush_reload', 'main', etc.
    
    # 2. Also, even if a sequence is unique (1 label), if it appears multiple times, we only need one copy 
    #    (unless we want to weigh it higher, but duplicates usually just bias evaluation if they are in both train/test).
    #    DECISION: Keep one copy per unique sequence to prevent train/test leakage of identical duplicates.
    
    clean_records = []
    dropped_count = 0
    
    for h, records in seq_records.items():
        if h in ambiguous_hashes:
            dropped_count += len(records)
            continue
            
        # If not ambiguous, keep ONE copy
        # We take the first one encountered
        clean_records.append(records[0])
        
        # Note: If we had duplicates with the SAME label, we just dropped the extras here.
        if len(records) > 1:
            dropped_count += (len(records) - 1)
            
    print(f"\nWriting {len(clean_records)} unique, non-ambiguous records to {output_path}...")
    print(f"Dropped {dropped_count} records (duplicates or ambiguous).")
    
    with open(output_path, 'w') as f:
        for record in clean_records:
            f.write(json.dumps(record) + "\n")
            
    print("Done.")

if __name__ == "__main__":
    main()



