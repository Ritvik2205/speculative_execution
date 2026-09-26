#!/bin/bash
set -uo pipefail

# Resolve the invoking user's home even when run under sudo (~ would be /root).
USER_HOME=$(getent passwd "${SUDO_USER:-$USER}" | cut -d: -f6)
KM_DIR="${SCA_FUZZER_DIR:-$USER_HOME/sca-fuzzer}/rvzr/executor_km"

if [[ ! -d "$KM_DIR" ]]; then
    echo "ERROR: executor_km not found at $KM_DIR" >&2
    echo "       set SCA_FUZZER_DIR=/path/to/sca-fuzzer and retry" >&2
    exit 1
fi
cd "$KM_DIR" || exit 1
echo "=== building in $PWD ==="

sudo rmmod rvzr_executor 2>/dev/null
if ! make; then
    echo "ERROR: make failed in $PWD" >&2
    exit 1
fi
echo "=== .ko files ==="
find . -name '*.ko'
echo "=== insmod ==="
sudo insmod rvzr_executor.ko || exit 1
lsmod | grep rvzr_executor
