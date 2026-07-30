"""pytest conftest — re-exports attack_sequences constants as fixtures."""
import sys
from pathlib import Path

# Make scripts/ and tests/augmentation/ importable
sys.path.insert(0, str(Path(__file__).parent.parent.parent / "scripts"))
sys.path.insert(0, str(Path(__file__).parent))
