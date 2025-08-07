import pickle
from dataclasses import dataclass
from typing import List, Dict, Tuple, Optional

@dataclass
class Instruction:
    """Represents a single assembly instruction"""
    opcode: str
    operands: List[str]
    line_num: int
    raw_line: str
    semantics: Dict[str, bool]
    address: Optional[int] = None

@dataclass
class Gadget:
    """Represents a potential vulnerability gadget"""
    instructions: List[Instruction]
    gadget_type: str
    confidence_score: float
    context_window: Tuple[int, int]  # (start_line, end_line)
    source_file: str
    architecture: str
    vulnerability_patterns: List[str]
    features: Dict[str, any]

# Load the pickle file
try:
    with open('./gadgets.pkl', 'rb') as f:
        data = pickle.load(f)
    
    print(f"Loaded {len(data)} gadgets")
    print("\nFirst few gadgets:")
    for i, gadget in enumerate(data[:3]):
        print(f"\nGadget {i+1}:")
        print(f"  Type: {gadget.gadget_type}")
        print(f"  Confidence: {gadget.confidence_score:.3f}")
        print(f"  Source: {gadget.source_file}")
        print(f"  Architecture: {gadget.architecture}")
        print(f"  Instructions: {len(gadget.instructions)}")
        print(f"  Patterns: {gadget.vulnerability_patterns}")
        
        # Show first 2 instructions
        for j, instr in enumerate(gadget.instructions[:2]):
            print(f"    {j+1}: {instr.raw_line.strip()}")

except Exception as e:
    print(f"Error loading pickle file: {e}")