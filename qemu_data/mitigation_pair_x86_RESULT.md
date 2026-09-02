# x86 mitigation-pair — end-to-end proof (QEMU plan, step 2)

*2026-09-02. Validates "the mitigation is the label": same SPECTRE_V1 gadget,
compiled mitigated vs unmitigated, real oracle (Spectector) confirms safe vs leak.
Reproduce: `qemu_data/mitigation_pair_x86.sh`.*

Gadget: `if(i<sz){ v=arr[i]; probe[v*64]=1; }` (bounds-check bypass).

| build | mitigation | how | Spectector (`-a noninter`) |
|---|---|---|---|
| v1_base   | none | clang -O2 | **program is unsafe** — data leak |
| v1_fenced | lfence | source barrier after the branch | **program is safe** — no leak |
| v1_slh    | Speculative Load Hardening | clang `-mspeculative-load-hardening` | program is **unsafe** |

**The pair works**: base leaks, lfence-mitigated is safe — an oracle-confirmed
positive/negative pair from one source. This is the labelling engine the QEMU
build-matrix plan needs.

Two oracle-pairing lessons (fold into the plan):

1. **Match the oracle to the mitigation.** Spectector models the PHT (bounds-check
   bypass) and serialization barriers (`lfence`), so it cleanly separates
   base-vs-lfence. It does NOT model:
   - indirect-branch speculation → SPECTRE_V2 / retpoline pairs report
     safe/unsupported regardless (its own docstring says so);
   - SLH's runtime value-masking → the SLH build still reports **unsafe** even
     though the loads are hardened (the mask poisons the address at run time; the
     symbolic non-interference check flags the residual secret dependence).
   So: **lfence pairs → Spectector; retpoline (V2) and SLH pairs → gem5 /
   InvisiSpec** (microarchitectural models that see thunks and masking).

2. **SLH is a real mitigation that is invisible to symbolic non-interference.**
   Useful to know for labelling: an SLH-hardened gadget is a genuine hard-negative
   for a classifier but would be mislabelled "leak" if Spectector were the only
   oracle. Label SLH builds by construction (the flag), confirm on a microarch
   oracle, never on Spectector.

Codegen confirms the mechanism: SLH inserts an all-ones poison mask
(`sarq $63,%rax`) and OR-masks the index and pointer (`orq %rax,%rdi`) before the
secret load, so misspeculation reads a safe address — a runtime guard Spectector's
abstraction over-approximates as still-leaking.
