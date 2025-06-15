import sys
import os

# Add Joern's Python client to the path
joern_path = os.path.expanduser("~/.joern/joern-cli/joern-cli")
if os.path.exists(joern_path):
    sys.path.append(joern_path)
else:
    print("Joern installation not found. Please install Joern first using: brew install joern")
    sys.exit(1)

try:
    from joern import JoernClient

    j = JoernClient()
    j.connect()
    j.run_script("importCode(inputPath='test.c', language='c')")
    nodes = j.run_script("cpg.all.l")  # Get nodes
    edges = j.run_script("cpg.allE.l")  # Get edges

    print("Nodes:", nodes)
    print("Edges:", edges)
except ImportError as e:
    print("Error importing Joern client:", e)
    print("Please make sure Joern is installed correctly using: brew install joern")
except Exception as e:
    print("Error running Joern analysis:", e)