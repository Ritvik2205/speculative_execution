"""pytest conftest for SpecExec tests."""
import sys
from pathlib import Path

# Add repo root to sys.path so oracle and scripts can be imported
repo_root = str(Path(__file__).parent.parent)
scripts_dir = str(Path(__file__).parent.parent / "scripts")

for path in [repo_root, scripts_dir]:
    if path not in sys.path:
        sys.path.insert(0, path)
