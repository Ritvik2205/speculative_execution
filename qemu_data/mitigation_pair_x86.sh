#!/usr/bin/env bash
# Step-2 proof: one x86 SPECTRE_V1 mitigation pair end-to-end through Spectector.
# Same gadget source, three builds, real oracle verdict. Validates the QEMU plan's
# "the mitigation is the label" idea on the cheapest cell. Needs: clang (host),
# Docker + specdiscover-spectector:pinned.
set -euo pipefail
cd "$(dirname "$0")/.."
B=oracle/build; mkdir -p "$B"
cat > "$B/v1_pair.c" <<'C'
#include <stdint.h>
#include <stddef.h>
extern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;
void gadget(size_t i){ if(i<sz){ uint8_t v=arr[i]; probe[v*64]=1; } }
C
CF="--target=x86_64-linux-gnu -O2 -fno-pic -fno-pie -S"
clang $CF -o "$B/v1_base.s" "$B/v1_pair.c"                                 # unmitigated
clang $CF -mspeculative-load-hardening -o "$B/v1_slh.s" "$B/v1_pair.c"     # SLH (flag)
python3 -c "import sys;sys.path.insert(0,'.');from gen.synth import spectector_gadgets as g;open('$B/v1_fenced.c','w').write(g.render_spec('SPECTRE_V1',fenced=True))"
clang $CF -o "$B/v1_fenced.s" "$B/v1_fenced.c"                             # lfence
for v in base fenced slh; do
  echo -n "v1_$v: "
  docker run --rm -v "$PWD":/work specdiscover-spectector:pinned \
    bash -c "run-spectector /work/$B/v1_$v.s -a noninter 2>&1" \
    | grep -E "program is (safe|unsafe)" || echo "(no verdict)"
done
