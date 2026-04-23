FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && apt-get install -y \
    gcc \
    gcc-12 \
    gcc-12-x86-64-linux-gnu \
    clang-14 \
    gcc-aarch64-linux-gnu \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Make gcc-12 the default gcc
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 100

# Symlink x86_64 cross-compiler to a shorter name
RUN ln -sf /usr/bin/x86_64-linux-gnu-gcc-12 /usr/local/bin/x86_64-linux-gnu-gcc

WORKDIR /work

COPY docker/extract_windows.py /work/extract_windows.py

ENTRYPOINT ["/bin/bash", "/work/compile_attack_sources.sh"]
