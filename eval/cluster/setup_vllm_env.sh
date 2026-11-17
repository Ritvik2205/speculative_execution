#!/bin/bash
# One-off, on the head node: a separate conda environment for vLLM. vLLM 0.33.0 pins
# torch==2.14.0 and its docs ask for a fresh environment; the `specexec` environment (torch 2.5.1)
# stays as it is for the graph-model jobs. Downloads several GB into $HOME; run under nice.
set -euo pipefail
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda env list | grep -q '^vllm ' || nice -n 19 conda create -y -n vllm python=3.12
conda activate vllm
# PyPI only. vLLM 0.33.0, torch 2.14.0 and torchaudio 2.11.0 on PyPI all link libcudart.so.13
# (checked with readelf). A cu129 extra index swaps in torchaudio 2.11.0+cu129, which needs
# libcudart.so.12 and breaks `import transformers` (it imports torchaudio when present).
nice -n 19 pip install "vllm==0.33.0"
# No import check here: the head node's memory limit stops torch from loading, and the house
# rules keep Python jobs off the head node. Check the CUDA libraries the binaries ask for instead.
pip list 2>/dev/null | grep -E '^(vllm|torch|torchaudio|torchvision|transformers) '
SP="$(python -c 'import sysconfig; print(sysconfig.get_paths()["purelib"])')"
for f in "$SP"/vllm/_C_stable_libtorch.abi3.so "$SP"/torchaudio/lib/_torchaudio.abi3.so; do
  echo "$f: $(readelf -d "$f" | grep -o 'libcudart[^]]*')"
done
