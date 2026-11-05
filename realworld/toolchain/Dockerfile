FROM debian:trixie
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
      gcc g++ clang lld llvm crossbuild-essential-amd64 crossbuild-essential-riscv64 \
      make bc flex bison libelf-dev libssl-dev python3 git ca-certificates \
      dpkg-dev devscripts build-essential fakeroot \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /work
