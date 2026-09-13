#!/bin/bash
set -euo pipefail
sudo apt-get install -y build-essential git python3-venv python3-pip
gcc --version | head -1
git clone --depth 1 https://github.com/microsoft/sca-fuzzer.git ~/sca-fuzzer || (cd ~/sca-fuzzer && git pull)
cd ~/sca-fuzzer
python3 -m venv venv
source venv/bin/activate
pip install "unicorn==1.0.3"
pip install -e .
rvzr download_spec -a x86-64 -o ~/sca-fuzzer/base_x86.json
echo "=== venv + spec ready ==="
