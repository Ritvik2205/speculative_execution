#!/bin/bash
set -uo pipefail
cd ~/sca-fuzzer/rvzr/executor_km
sudo rmmod rvzr_executor 2>/dev/null
make
echo "=== .ko files ==="
find . -name '*.ko'
echo "=== insmod ==="
sudo insmod rvzr_executor.ko
lsmod | grep rvzr_executor
