# oracle/docker/Dockerfile
FROM ghcr.io/gem5/ubuntu-24.04_all-dependencies:latest AS build
ARG GEM5_TAG=v24.0.0.0
RUN git clone --depth 1 --branch ${GEM5_TAG} https://github.com/gem5/gem5.git /gem5
WORKDIR /gem5
# -j4, not $(nproc): the x86 decoder TU (inst-constrs.o) is memory-heavy and
# OOM-kills cc1plus under high parallelism on a <=12GiB VM.
RUN python3 $(which scons) build/X86/gem5.opt -j4
# Container host is arm64 (colima on Apple Silicon). gcc = native arm64 compiler
# (for arm64 guest gadgets); gcc-x86-64-linux-gnu = x86_64 cross-compiler (for
# x86_64 guest gadgets, provides immintrin.h + x86 static libc).
RUN apt-get update && apt-get install -y gcc libc6-dev gcc-x86-64-linux-gnu \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /work
