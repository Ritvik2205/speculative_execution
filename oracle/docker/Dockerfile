# oracle/docker/Dockerfile
FROM ghcr.io/gem5/ubuntu-24.04_all-dependencies:latest AS build
ARG GEM5_TAG=v24.0.0.0
RUN git clone --depth 1 --branch ${GEM5_TAG} https://github.com/gem5/gem5.git /gem5
WORKDIR /gem5
RUN python3 $(which scons) build/X86/gem5.opt -j"$(nproc)"
RUN apt-get update && apt-get install -y gcc libc6-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /work
