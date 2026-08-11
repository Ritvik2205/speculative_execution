# Revizor real-hardware plan: this laptop vs. cloud bare-metal

*Scoping only — nothing here has been executed. Per `oracle/revizor/README.md`,
Revizor needs a real x86 Intel/AMD Linux host with root (its executor is a
kernel module reading physical performance counters); WSL2 cannot provide
this (it's a Hyper-V VM, and Hyper-V does not pass through raw MSR/perf-counter
access to guests the way Revizor's executor needs). This machine's actual CPU
— Intel Core i5-8300H ("Coffee Lake", 8th gen, launched 2018) — is a genuine,
un-emulated x86 Intel part, which is new: prior Phase-4 work only had an Apple
Silicon (arm64) machine, where no path to Revizor existed at all.*

## The six classes, mapped against this specific CPU

`oracle/revizor/README.md` already documents which CPU generation each class
needs. Cross-referencing against the i5-8300H specifically:

| Class | Needs | i5-8300H (Coffee Lake, 2018)? |
|---|---|---|
| **L1TF** | Intel, ~Skylake/Coffee Lake, pre-2019 | **Direct match** |
| **MDS** | pre-2019 Intel | **Direct match** |
| **RETBLEED** | Intel 6th–8th gen | **Direct match** (8th gen) |
| SPECTRE_V2 | most pre-mitigation x86 | Depends on current microcode/BIOS state — needs checking, not a hardware-generation blocker |
| BHI | newer Intel, **post-eIBRS** | **No** — eIBRS shipped with Cascade Lake/Ice Lake (2019+); Coffee Lake doesn't have it in hardware |
| INCEPTION | **AMD only** (Zen 1–4) | **No** — this is an Intel CPU |

This means dual-booting *this exact laptop* can potentially confirm up to
**3 of the 6** remaining classes (L1TF, MDS, RETBLEED) directly — no other
hardware needed for those three. The other two (BHI, INCEPTION) are
structurally unreachable on this CPU regardless of OS/mitigation
configuration: BHI needs a newer Intel generation, INCEPTION needs AMD.
SPECTRE_V2 is a maybe, pending checking this machine's current microcode
mitigation state.

## Option A: dual-boot this laptop

**Covers:** L1TF, MDS, RETBLEED (direct hardware match), possibly SPECTRE_V2.
**Does not cover:** BHI, INCEPTION (wrong CPU generation/vendor).

- Cost: free, no new hardware or billing.
- Effort: shrink/repartition the Windows disk, install a Linux distribution
  (Ubuntu Desktop/Server both fine), likely disable Secure Boot to load an
  out-of-tree kernel module (Revizor's executor), and boot with mitigations
  selectively disabled for the classes under test (a standard, documented
  research technique — e.g. kernel boot params like `l1tf=off`, `mds=off`,
  `spectre_v2=off` isolate one mechanism at a time rather than disabling
  everything at once).
- Risk: this is the same physical disk WSL2/Docker/the oracle work now lives
  on. A partitioning mistake is the one genuinely destructive failure mode
  here — should be done with a full backup first, and ideally by installing
  Linux to a *separate* external/USB drive rather than repartitioning the
  internal disk, which sidesteps the risk entirely at the cost of USB-3
  speeds (fine for this workload — Revizor's own footprint is small).
- Only 7.9GB RAM: not a blocker (Revizor + a minimal Linux install is far
  lighter than the WSL2/Docker/gem5 work already running fine here).

## Option B: rent a bare-metal cloud instance

**Covers:** whatever CPU generation/vendor you pick — e.g. a newer Intel
`*.metal` instance for BHI, or an AMD Zen instance for INCEPTION.
**Does not cover:** L1TF/MDS/RETBLEED are *also* available this way, but
Option A gets those for free already, so cloud is really only needed for the
two classes this laptop structurally cannot produce.

- Cost: real and ongoing — bare-metal instances (not regular VMs; must be
  bare-metal specifically, since Revizor's kernel module needs direct
  hardware access) are priced per-hour and comparatively expensive (e.g.
  AWS `*.metal` families, Equinix Metal, or a rented dedicated server from a
  provider like Hetzner). Needs an account/billing set up if not already
  in place.
- Effort: provision the instance, `docker build` the existing
  `oracle/revizor/Dockerfile.revizor` on it, run privileged with the kernel
  module build step from the README — all already scripted and
  plug-and-run per the existing prep, just needs the target machine.
- Risk: low technically (ephemeral, disposable instance; nothing about this
  machine is at risk) — the only real risk is cost if an instance is left
  running.
- Needs picking the *right* instance for each class: a newer-generation
  Intel part with eIBRS for BHI, and a Zen-generation AMD part for
  INCEPTION — likely two different instance types/providers, not one.

## Recommendation

Not a decision to make unilaterally — this is exactly the kind of
irreversible-ish (disk repartitioning) / cost-incurring (cloud billing)
choice that needs your go-ahead. But concretely:

1. **Option A (dual-boot or USB-boot this laptop) is the more efficient
   first move** — it's free and already covers half the remaining classes
   (L1TF, MDS, RETBLEED) via genuine hardware match, with USB-boot as a
   way to get the coverage with zero risk to the existing Windows/WSL setup.
2. **Cloud bare-metal is only actually needed for BHI and INCEPTION**
   specifically, once/if full coverage of all 6 classes matters — it is not
   needed to make progress on the other three.
3. Checked `/sys/devices/system/cpu/vulnerabilities/*` from within WSL2 as a
   first look — and it directly demonstrates the problem this whole plan is
   about: several entries (Meltdown, MDS, L1TF-adjacent host-state checks)
   come back `Unknown: Dependent on hypervisor status` rather than a real
   answer. WSL2's Hyper-V layer obscures the true hardware state even for a
   *read-only* mitigation check — confirming, with direct evidence rather
   than just the general Hyper-V/MSR-passthrough argument above, that WSL2
   cannot be used for this and a real boot (dual-boot or bare-metal cloud)
   is required. SPECTRE_V2 itself reported `Mitigation: IBRS` under WSL2,
   but given the surrounding entries are unreliable through the hypervisor,
   this number shouldn't be trusted either — needs re-checking from a real
   boot, not WSL2.

No action has been taken on either option. Say the word on which (if
either) to proceed with, and whether dual-boot should go to a spare
USB/external drive rather than the internal disk.
