#!/usr/bin/env python3
"""
Check the structure of parsed assembly data
"""

import pickle
from pathlib import Path

def check_parsed_data():
    features_path = Path("parsed_assembly") / "assembly_features.pkl"
    
    print("Loading parsed assembly data...")
    with open(features_path, 'rb') as f:
        data = pickle.load(f)
    
    print(f"Data type: {type(data)}")
    print(f"Data length: {len(data)}")
    
    if isinstance(data, list):
        print(f"First few items:")
        for i, item in enumerate(data[:3]):
            print(f"  Item {i}: type={type(item)}")
            if isinstance(item, dict):
                print(f"    Keys: {list(item.keys())}")
                if 'instructions' in item:
                    print(f"    Instructions count: {len(item['instructions'])}")
    elif isinstance(data, dict):
        print(f"Keys: {list(data.keys())[:10]}...")
        first_key = list(data.keys())[0]
        first_value = data[first_key]
        print(f"First value type: {type(first_value)}")
        if isinstance(first_value, dict):
            print(f"First value keys: {list(first_value.keys())}")

if __name__ == "__main__":
    check_parsed_data()