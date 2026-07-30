"""
Shared fixtures: canonical minimal gadget sequences for each vulnerability class.

Each sequence is the smallest valid window that contains the class-defining
micro-architectural trigger.  Tests import these to verify that augmentation
preserves (or correctly removes) the trigger.

Register / opcode naming follows AT&T syntax for x86 and standard ARM64 mnemonics.
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent.parent / "scripts"))

import pytest

# ---------------------------------------------------------------------------
# Spectre V1 — bounds-check bypass via conditional branch + dependent load
# ARM64 canonical:  cmp / b.ge <safe> / ldr <secret> / ldr <probe>
# ---------------------------------------------------------------------------
SPECTRE_V1_ARM = [
    "cmp x1, x2",
    "b.ge .Lsafe",
    "ldr x0, [x3, x1, lsl #3]",     # secret load (speculated)
    "ldr x4, [x5, x0, lsl #6]",     # probe-array access (cache covert channel)
]

SPECTRE_V1_X86 = [
    "cmpq %rsi, %rdi",
    "jge .Lsafe",
    "movq (%rcx,%rdi,8), %rax",     # secret load
    "movq (%rdx,%rax,64), %rax",    # probe-array access
]

# ---------------------------------------------------------------------------
# Spectre V4 — store-bypass speculation via load before store retires
# ---------------------------------------------------------------------------
SPECTRE_V4_ARM = [
    "str x0, [x1]",
    "ldr x2, [x1]",                 # speculative load may bypass the store
    "ldr x3, [x4, x2, lsl #6]",    # dependent probe access
]

SPECTRE_V4_X86 = [
    "movq %rax, (%rdi)",
    "movq (%rdi), %rbx",            # speculative bypass load
    "movq (%rdx,%rbx,1), %rcx",    # probe
]

# ---------------------------------------------------------------------------
# RETBLEED — return-stack-buffer poisoning (ret is the speculation trigger)
# ---------------------------------------------------------------------------
RETBLEED_X86 = [
    "pushq %rbp",
    "movq %rsp, %rbp",
    "nop",
    "nop",
    "nop",
    "popq %rbp",
    "ret",                          # RETBLEED trigger — must not be removed
]

RETBLEED_ARM = [
    "stp x29, x30, [sp, #-16]!",
    "nop",
    "ldp x29, x30, [sp], #16",
    "ret",                          # RETBLEED trigger
]

# ---------------------------------------------------------------------------
# INCEPTION — recursive RET misprediction via call+ret in same stack frame
# ---------------------------------------------------------------------------
INCEPTION_X86 = [
    "pushq %rbp",
    "movq %rsp, %rbp",
    "callq *%rax",                  # indirect call — INCEPTION trigger
    "nop",
    "popq %rbp",
    "ret",
]

INCEPTION_ARM = [
    "stp x29, x30, [sp, #-16]!",
    "blr x9",                       # indirect branch-with-link — INCEPTION trigger
    "ldp x29, x30, [sp], #16",
    "ret",
]

# ---------------------------------------------------------------------------
# BHI — Branch History Injection (indirect branch through polluted history)
# ---------------------------------------------------------------------------
BHI_ARM = [
    "mov x0, #0",
    "blr x8",                       # BHI trigger: indirect branch target polluted
    "ret",
]

BHI_X86 = [
    "movq $0, %rax",
    "callq *%rbx",                  # BHI trigger: indirect call
    "ret",
]

# ---------------------------------------------------------------------------
# L1TF / Meltdown — page-not-present transient read + Flush+Reload probe
# ---------------------------------------------------------------------------
L1TF_X86 = [
    "clflush (%rsi)",
    "movzbl (%rcx), %eax",          # transient load from non-present page
    "shlq $12, %rax",               # scale by page size (4096 = 2^12)
    "movq (%rsi,%rax,1), %rbx",    # Flush+Reload probe — page_probe pattern
    "mfence",
    "rdtsc",
    "mfence",
]

# ---------------------------------------------------------------------------
# MDS — MFBDS/MLPDS/MDSUM via movntdqa + Flush+Reload timing
# ---------------------------------------------------------------------------
MDS_X86 = [
    "clflush (%rdx)",
    "movntdqa (%rax), %xmm0",       # MDS trigger: uncacheable load leaks stale buffer
    "pand %xmm1, %xmm0",
    "movd %xmm0, %eax",
    "shlq $6, %rax",                # cache-line stride (64 = 2^6)
    "movq (%rdx,%rax), %rbx",      # Flush+Reload probe
    "mfence",
    "rdtsc",
    "mfence",
]

# ---------------------------------------------------------------------------
# BENIGN — stack frame + trivial computation, no speculation trigger
# ---------------------------------------------------------------------------
BENIGN = [
    "pushq %rbp",
    "movq %rsp, %rbp",
    "movq $42, %rax",
    "addq $1, %rax",
    "popq %rbp",
    "ret",
]

# ---------------------------------------------------------------------------
# Return-based class set — flip_branch_polarity / strip_housekeeping must
# refuse to modify any sequence that contains these triggers.
# ---------------------------------------------------------------------------
RETURN_BASED_CLASSES = [
    ("RETBLEED_X86",  RETBLEED_X86),
    ("RETBLEED_ARM",  RETBLEED_ARM),
    ("INCEPTION_X86", INCEPTION_X86),
    ("INCEPTION_ARM", INCEPTION_ARM),
    ("BHI_ARM",       BHI_ARM),
    ("BHI_X86",       BHI_X86),
]

# ---------------------------------------------------------------------------
# Forward-branch classes — flip_branch_polarity / strip_housekeeping are
# allowed to modify these (the speculation trigger is a conditional branch,
# not a return or indirect branch).
#
# NOTE: SPECTRE_V4 (store bypass) uses a store→load pair as trigger, NOT
# a conditional branch.  Tests asserting conditional-branch presence must
# not include V4 sequences.
# ---------------------------------------------------------------------------
FORWARD_BRANCH_CLASSES = [
    ("SPECTRE_V1_ARM",  SPECTRE_V1_ARM),
    ("SPECTRE_V1_X86",  SPECTRE_V1_X86),
]

# V4 has no conditional branch; listed separately for transforms that don't need one
FORWARD_NO_BRANCH_CLASSES = [
    ("SPECTRE_V4_ARM",  SPECTRE_V4_ARM),
    ("SPECTRE_V4_X86",  SPECTRE_V4_X86),
]
