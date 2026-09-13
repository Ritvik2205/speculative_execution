# SpecDiscover — RISC-V speculative-execution data: can we source it, or must we create it?

*Written 2026-08-30. Research task, primary sources only (papers, vendor
statements, official repos, ISA specs). Answers the question raised in
`SPECDISCOVER_NEW_ISA_ROADMAP.md` gap G1/G10: our current "RISC-V corpus" is a
~40-rule mnemonic transliteration of the x86/ARM corpus
(`scripts/translate_riscv_inline_asm.py`), which is not independent evidence.
This asks whether real RISC-V samples exist to source, and if not, what
creating them costs.*

---

## Bottom line

**Mostly CREATE, with a small, real, sourceable seed.** RISC-V hardware does
genuinely speculate — the "RISC-V is too simple to be vulnerable" assumption
was explicitly tested and refuted on commercial silicon in 2026
(`USENIX Security 2026`, Gerlach et al.). Real, hardware-confirmed Spectre PoCs
exist for RISC-V, with public code, running on real off-the-shelf boards. But
the total public inventory is tiny — realistically **on the order of two to
three dozen distinct, working, non-trivial samples** across every source
found, not the "hundreds" a training/eval corpus needs, and none of it is
packaged as an ML-ready gadget corpus. None of the x86-era tools this repo's
own `NEW_SAMPLES_STRATEGY.md` survey relies on (FastSpec, SafeSide, Kasper,
Spectector) have RISC-V support. A RISC-V-native oracle exists only in
narrow, very recent (2025–2026) academic form — no turnkey Spectector/Revizor
equivalent. **Building a few hundred genuinely RISC-V-native, verified-label
gadgets is a months problem, not a days/weeks problem**, and it is the
long pole identified in the existing roadmap (gap G1/G10) — this research
confirms that assessment rather than overturning it.

---

## 1. Does RISC-V hardware actually speculate in the ways these attacks require?

Short answer: **some of it, and increasingly so** — but it splits cleanly
along the in-order/out-of-order line, and that line is not where the "modern
vs. embedded" line usually falls in RISC-V marketing.

| Core | OoO or in-order | BTB / RSB | Speculates past branches/loads | Availability |
|---|---|---|---|---|
| **BOOM (SonicBOOM)** | Out-of-order, superscalar | Yes — Branch Target Buffer + a hardware TAGE predictor (SonicBOOM); Return Address Stack (RAS) present, though the RISC-V-BOOM team notes the RAS was at one point "disconnected in the BPU (commented out)" in the version tested for Spectre-RSB | Yes, by design (2-level predictor: Next-Line Predictor backed by TAGE) | **RTL only.** Open-source Chisel, simulate via Verilator/FPGA (Chipyard). Not sold as commercial silicon. |
| **XiangShan** | Out-of-order, superscalar | Yes — modern branch predictor, RAS present | Yes | **RTL, open-source (Chisel).** Simulatable via NEMU/DiffTest and FPGA; some silicon tape-outs exist under the academic project but it is not a retail-purchasable chip. |
| **SiFive P650 / P870** | Out-of-order (both) | Yes — P870 uses an 8-table TAGE predictor with 16K entries and a "fast zero-bubble" target predictor ([Chips and Cheese, Hot Chips 2023](https://chipsandcheese.com/p/hot-chips-2023-sifives-p870-takes-risc-v-further)) | Yes | Licensable IP; **P650-class silicon exists** (see SiFive P550, tested below — P650/P870 are IP announcements, not yet confirmed in a purchasable retail chip as of this research pass). |
| **SiFive P550** | Out-of-order | Yes | Yes — **empirically confirmed vulnerable to Spectre-PHT/BTB/RSB/STL** | **Real silicon**, in shipping SoCs (used as the OoO reference in the Gerlach et al. USENIX Sec 2026 study, below). |
| **SiFive U74** (contrast case) | **In-order** | No meaningful speculative BTB/RAS in the Spectre sense | **No** — SiFive's own 2018 statement: "our processors do not perform this form of speculation... [they] do not speculatively refill or evict data cache lines" ([SiFive Statement on Meltdown and Spectre](https://www.sifive.com/blog/sifive-statement-on-meltdown-and-spectre)); independently re-confirmed as not vulnerable to the tested Spectre variants by Gerlach et al. 2026 | **Real silicon** (StarFive VisionFive 2, ~$70 board) |
| **Ventana Veyron V2** | Out-of-order, "15-wide" pipeline ([Ventana press release](https://www.ventanamicro.com/ventana-introduces-veyron-v2/)) | Not independently verified in this pass — Ventana's marketing describes an "aggressive out-of-order pipeline" but no third-party microarchitectural teardown or Spectre evaluation was found | `[inference]` almost certainly speculates given the OoO claim and 15-wide issue width, but **unverified** — not covered by any Spectre-on-RISC-V study found | IP + data-center chiplets; not retail silicon; access is via cloud/design partners, not purchasable |
| **Tenstorrent Ascalon-X** | Out-of-order, 8-wide decode | Not independently verified — marketing states OoO superscalar with branch-capable ALUs, RVA23-compliant | `[inference]` likely speculates; **unverified**, no Spectre study found | Licensable IP, announced Dec 2025; **no shipping silicon found** in this research pass |
| **SpacemiT K1 / X60** | **In-order, dual-issue** ([RT-RK GCC tuning writeup](https://www.rt-rk.com/gcc-tuning-for-spacemit-x60-building-an-in-order-dual-issue-scheduler-model-part-i/)) | Not applicable in the OoO sense | `[inference]` given in-order design and the pattern observed on SiFive U74/T-Head C906/C908 (below), likely not vulnerable to the same Spectre variants, but **not directly tested** by any source found | Real, cheap silicon (Banana Pi BPI-F3, Milk-V Jupiter) |
| **T-Head Xuantie C910 / C920** | Out-of-order | Yes | Yes — **empirically confirmed vulnerable**; used for the headline kernel-memory-leak PoC (below) | **Real silicon**, in cheap dev boards (BeagleV-Ahead, Sipeed LicheePi 4A, ~$100) |
| **T-Head Xuantie C906 / C908** (contrast case) | **In-order** | No | **No** — confirmed not vulnerable to the tested Spectre variants ([Gerlach et al. 2026](https://www.usenix.org/conference/usenixsecurity26/presentation/gerlach)) | Real silicon (Sipeed Nezha, CanMV Kendryte K230) |

**The load-bearing fact**: this is not a RISC-V-wide property. It is an
in-order/out-of-order property, and it was measured directly, not inferred.
[Gerlach, Bognar, Weber, Schwarz, Van Bulck, "Spectre on RISC-V Silicon: Attacks
and Defenses on Commercial Out-of-Order Processors," USENIX Security
2026](https://www.usenix.org/conference/usenixsecurity26/presentation/gerlach)
systematically tested **every commercially available out-of-order RISC-V
processor at the time** — SiFive P550 and T-Head Xuantie C910/C920 — and found
all three vulnerable to Spectre-PHT, Spectre-BTB, Spectre-RSB, and Spectre-STL,
with **up to 100% recall and >97% precision** in gadget detection, and a
working PoC that **leaks arbitrary Linux kernel memory from the Xuantie C910
at 338 B/s**. The same paper tested the in-order SiFive U74 and T-Head
C906/C908 and found them **not vulnerable** to the same variants — consistent
with SiFive's own 2018 statement, which predates SiFive's own OoO P-series and
therefore should not be read as covering P550/P650/P870.

`[inference]`: none of the newer high-end commercial cores (Ventana Veyron,
Tenstorrent Ascalon) have been independently Spectre-tested by anyone found in
this search; treat "OoO ⇒ probably vulnerable" as a reasonable prior given the
100% pattern observed so far on tested OoO RISC-V cores, not as a demonstrated
fact for those two specific cores.

The RISC-V ISA itself has **no dedicated speculation barrier instruction**.
The USENIX Sec 2026 paper states this explicitly and works around it by
empirically characterizing which existing instructions happen to halt
speculation on the tested chips. `fence.i` is not a speculation barrier — it
orders instruction-fetch with respect to prior stores (for self-modifying
code / JIT), unrelated to speculative side channels; it does appear in the
`cispa/Security-RISC` PoC set as a *side channel primitive* (a Flush+Reload
variant on the instruction cache uses `fence.i`'s side effects), which is the
opposite of a defense. The CMO extension (Zicbom: `CBO.INVAL`/`CBO.CLEAN`/
`CBO.FLUSH`) is a cache-management, not a speculation-barrier, extension —
useful for building covert-channel defenses (Wistoff et al., below) but not
itself a barrier against transient execution. Zkt ("data-independent timing")
constrains a specific list of scalar-crypto-adjacent instructions to be
constant-time; it says nothing about speculative loads generally and does not
mitigate Spectre. Two RISC-V ISA proposals do target this gap directly but are
not yet ratified extensions: a **Timing Fences Task Group** proposal for a
"timing fence" instruction, and a **`fence.spec`** proposal for selective
speculation, both surveyed in [RISC-V International's "Featured Work:
Microarchitecture Security: The Spectre
Affair"](https://riscv.org/blog/featured-work-microarchitecture-security-the-spectre-affair/),
which also cites Wistoff et al.'s single-instruction microarchitectural-state
flush (an ISA extension, evaluated on the CVA6/Ariane core, that lets an OS
close covert channels at context-switch boundaries — a covert-channel
defense, not a Spectre defense per se) and Escouteloup et al.'s "Under the
Dome" hardware timing-partitioning proposal.

---

## 2. Has anyone demonstrated actual speculative-execution attacks on RISC-V?

Yes, on multiple real cores, with a clear timeline of escalating scope:

- **2019 — first demonstrated Spectre on an open-source RISC-V core.**
  Gonzalez, Korpan, Zhao, Younis, Asanović, ["Replicating and Mitigating
  Spectre Attacks on an Open Source RISC-V
  Microarchitecture"](https://carrv.github.io/2019/papers/carrv2019_paper_5.pdf),
  CARRV 2019 (UC Berkeley). First demonstrated speculative-execution attack on
  BOOM, plus a preliminary RTL mitigation for the L1 data cache. Public code:
  [`riscv-boom/boom-attacks`](https://github.com/riscv-boom/boom-attacks).
  Verified directly (repo inspected for this report): it contains exactly
  **two working PoC C files** — `condBranchMispred.c` (Spectre-PHT/BCB) and
  `indirBranchMispred.c` (Spectre-BTB) — plus an explicitly **non-working**
  `returnStackBuffer.c` (Spectre-RSB), which the README says fails because
  "the RSB was disconnected in the BPU (commented out)" in the tested BOOM
  build. The repo's own commit history stopped in **October 2019**; it has
  received no further pushes since (only metadata refreshes as of this
  research pass). This runs against RTL simulation of a specific historical
  BOOM commit, not silicon.

- **2021 — RISC-V + CHERI test suite.** Fuchs, Woodruff, Moore, Neumann,
  Watson (Cambridge CTSRD), ["Developing a Test Suite for Transient-Execution
  Attacks on RISC-V and
  CHERI-RISC-V"](https://www.cl.cam.ac.uk/research/security/ctsrd/pdfs/202106-carrv-transient-execution.pdf),
  CARRV 2021. States the goal as reproducing "all major transient-execution
  attacks" on RISC-V and CHERI-RISC-V, tested "in simulation and on an FPGA."
  This is the closest thing to a RISC-V-native SafeSide/transient.fail
  analogue found. **Could not locate a public code repository for this
  specific test suite** despite searching the CTSRD-CHERI GitHub organization
  directly (349 repos checked by name-pattern; the org's public repos are CHERI
  infrastructure — Sail models, `TestRIG`, FreeRTOS ports — not this test
  suite by any findable name). Treat the suite's public availability as
  **unconfirmed**, not refuted.

- **2023 — first attacks on real, commercial RISC-V silicon.** Gerlach,
  Weber, Zhang, Schwarz, ["A Security RISC: Microarchitectural Attacks on
  Hardware RISC-V CPUs,"](https://misc0110.net/files/riscv_attacks_sp23.pdf)
  IEEE S&P 2023. Public artifact repo
  [`cispa/Security-RISC`](https://github.com/cispa/Security-RISC) (verified by
  direct inspection for this report). Tested on **real, purchasable boards**:
  T-Head C906 (Sipeed Nezha / Lichee RV), C908 (CanMV Kendryte K230), C910
  (BeagleV-Ahead), and SiFive U74 (StarFive VisionFive 2). Contents include
  working, runnable C source for: Flush+Reload, Evict+Reload, Flush+Flush,
  Prime+Probe (data- and instruction-cache variants using `dcache.iva` /
  `icache.iva` / `fence.i` side effects), Fault+Fault, a speculative-fetch
  histogram demo (`spectre-v1`), a working `spectre` exploit on the C910, TLB
  eviction, page-walk timing, retired-instruction-count side channels, and
  three real case studies: recovering AES key bytes via T-table timing,
  extracting an mbedTLS key via Flush+Fault, and fingerprinting hidden files
  on a system via retired-instruction counts (a "Dropbox case study"). This is
  **real, hardware-confirmed, silicon-level data with public code** — the
  single best public RISC-V source found in this research pass — but it skews
  toward cache/timing covert channels and case studies rather than
  Kocher-style "bounds-check-bypass gadget" samples, and the total sample
  count (~24 named experiments) is small.

- **2026 — full Spectre repertoire, kernel-memory leak, on commercial OoO
  silicon.** Gerlach, Bognar, Weber, Schwarz, Van Bulck, "Spectre on RISC-V
  Silicon," USENIX Security 2026 (Section 1, above). This is the paper that
  directly refutes the "RISC-V is too simple to be vulnerable" assumption
  the question raises. Concrete outcomes reported in secondary coverage
  ([The Register](https://www.theregister.com/security/2026/08/12/spectre-rears-its-ugly-head-again-as-researchers-show-some-risc-v-chips-are-susceptible/5286978),
  [LWN — kernel patches](https://lwn.net/Articles/1051264/)): three of the
  group's Linux kernel Spectre-v1 mitigation patches (pointer masking in
  `uaccess`, `array_index_nospec()` hardening of a syscall table) have been
  merged into mainline Linux, two more are under review; SiFive addressed the
  P550-specific findings; T-Head reportedly committed to publishing ad-hoc
  speculation barriers. **A public artifact/PoC repo for this specific 2026
  paper was not located** in this research pass (the USENIX page itself
  403'd every fetch attempt; no GitHub link surfaced in search). Given the
  same author group's 2023 paper is public on GitHub, a 2026 artifact release
  is plausible but **unconfirmed** — do not assume it exists without checking
  again closer to/after the conference.

- **Independent/adjacent confirmations**, lower confidence or narrower scope:
  - ["How Secure is a High-Performance RISC-V Core? A Spectre V1 Case Study on
    XiangShan Open-Source
    CPU,"](https://dl.acm.org/doi/10.1145/3803525.3804986) EuroSec 2025 —
    title and venue confirmed, but the abstract could not be retrieved
    (403 on fetch); treat as an existing, seemingly relevant paper whose
    specific findings this pass could not verify — do not cite its results
    beyond the title.
  - `BlessedRebuS/RISCV-Attacks` (a student/hobbyist GitHub repo, inspected
    directly) independently reran the `cispa/Security-RISC` `spectre` PoC on
    a SiFive U74 cluster ("Monte Cimone") and confirmed it does **not** leak
    there (consistent with the in-order finding above), framing this as
    corroboration rather than new research — useful as a secondary sanity
    check, not a primary source in its own right.
  - `RPTU-EIS/SecureBOOM` — "Formally proven secure design of...BOOM...w.r.t.
    transient execution attacks" — exists as a defense-side project (RTL
    hardening), implying the underlying BOOM vulnerability is treated as
    established by that group too; abstract/paper not independently verified
    in this pass.
  - GhostWrite (via [`cispa/RISCover`](https://github.com/cispa/RISCover-artifacts),
    CCS 2025) is **not** a speculative-execution bug — it's an architectural
    (non-transient) bug in the T-Head C910's vector-extension instruction
    decode that allows unprivileged arbitrary physical-memory writes. Noted
    here only because it's easy to conflate with the Spectre-class work above:
    it isn't. It is, however, good evidence that CISPA's black-box
    differential-fuzzing methodology (RISCover) works against closed-source
    commercial RISC-V silicon generally, which matters for Q4.
  - "μRL: Discovering Transient Execution Vulnerabilities Using Reinforcement
    Learning" (arXiv 2502.14307) — **checked and is x86-only** (Intel
    Skylake-X, Raptor Lake); does not cover RISC-V. Included here only to
    record that it was checked and ruled out, since RL-based gadget discovery
    is a plausible-sounding lead that does not pan out for this ISA yet.

---

## 3. Are there any public RISC-V gadget/PoC corpora at all?

Checked every tool cataloged in this repo's `NEW_SAMPLES_STRATEGY.md` for
RISC-V support, directly:

| Source (from `NEW_SAMPLES_STRATEGY.md`) | RISC-V support? |
|---|---|
| FastSpec / SpectreGAN | **No.** Paper and repo are x86-only; no RISC-V mentioned anywhere. |
| Kocher's 15 variants | x86/generic C, not RISC-V-specific; would need recompilation and *independent* verification (not transliteration) per-target. |
| Spectector benchmarks | **No RISC-V support found.** Spectector's own tool operates on x64 assembly / muASM; no RISC-V backend located. |
| Pitchfork / haybale-pitchfork | Operates on LLVM IR — in principle ISA-agnostic at the IR level, but no RISC-V-specific evaluation or backend was found in this pass. |
| SafeSide (Google) | **No RISC-V support found**; portable across compilers/OSes on x86/ARM, not extended to RISC-V in any source located. |
| transient.fail / SafeSide docs | Explicitly **x86 (gcc) and ARMv8 only**, per the project's own site, at time of the search that surfaced it. |
| Retbleed | x86/AMD-specific (branch-target-injection via `ret`); no RISC-V analogue found. |
| Kasper (VUSec) | **No RISC-V gadget-scanner support found**; VUSec's RISC-V-adjacent work is a separate fuzzing-driver project, not Kasper itself. |
| Revizor (Microsoft sca-fuzzer) | **This one is more nuanced — see below.** |
| SpecFuzz | No RISC-V support found. |

**Revizor correction**: an AI-generated search summary during this research
claimed Revizor was "evaluated on...the in-order Rocket Core and...out-of-order
BOOM core." **This could not be corroborated against Revizor's own papers**
(arXiv 2105.06872, 2301.07642) or its GitHub
(`microsoft/sca-fuzzer`/`microsoft/side-channel-fuzzer`), both of which present
Revizor as an x86 black-box CPU fuzzer. Flagging explicitly per this task's
instructions: **do not repeat that claim** — it appears to be a
model-generated conflation, most likely with AMuLeT (below), which does target
RISC-V RTL. This is exactly the kind of unverified claim this project has
been burned by before.

**What does exist, RISC-V-specific, found independently of that survey:**

- **`riscv-boom/boom-attacks`** — real code, 2 working gadgets, RTL-only,
  stale since 2019 (Section 2).
- **`cispa/Security-RISC`** — real code, ~24 named experiments, silicon-level,
  from 2023 (Section 2). The best single source, but skews toward cache/timing
  covert channels and case studies rather than a large set of independent
  Kocher-style secret-dependent-load gadgets.
- **CTSRD/CHERI 2021 test suite** — claimed to exist and cover "all major"
  attacks on RISC-V + CHERI-RISC-V, simulation + FPGA; **public code location
  unconfirmed** (Section 2).
- **AMuLeT** (Automated Design-Time Testing of Secure Speculation
  Countermeasures, ASPLOS 2025, arXiv 2503.00145) — applies model-based
  relational testing to **microarchitectural simulators** of speculative
  *defenses* (InvisiSpec, CleanupSpec, STT, SpecLFB), not to bare RISC-V
  cores directly; found "3 known and 6 unknown bugs," including that "the
  open-source implementation of SpecLFB is insecure." Which specific RISC-V
  core(s) back these simulators, and whether code is public, could not be
  confirmed from the abstract alone — would need the full paper.
- **LeaSyn / "Synthesis of Sound and Precise Leakage Contracts for
  Open-Source RISC-V Processors"** (CCS 2025, arXiv 2509.06509) — synthesizes
  formal leakage contracts (an ISA-level security abstraction of what a
  processor may leak via microarchitectural side channels) for **six
  open-source RISC-V CPUs**. This is conceptually the closest RISC-V-native
  analogue to Spectector's speculative-non-interference proofs found in this
  research, but it characterizes *what leaks*, not a corpus of *gadgets that
  leak* — it would need to be paired with a gadget generator to produce
  labeled samples. Public code and which six cores were not confirmed from
  the abstract.
- **RISCover** (CCS 2025, artifact at
  [`cispa/RISCover-artifacts`](https://github.com/cispa/RISCover-artifacts),
  standalone fuzzer at
  [`cispa/RISCover`](https://github.com/cispa/RISCover)) — real, public,
  working black-box differential fuzzer for closed-source silicon,
  demonstrated against 8 off-the-shelf CPUs from 3 vendors, but targets
  general **architectural** bugs (GhostWrite, a C906 halting-sequence bug),
  not speculative-execution/Spectre-class leaks specifically.

**Net for Q3**: a real but small (dozens, not hundreds) inventory of
hardware-confirmed RISC-V samples exists, concentrated in one active research
group's work (CISPA: Gerlach/Weber/Zhang/Schwarz/Bognar/Van Bulck, 2023→2026)
plus one 2019 academic-course-project repo. None of the large-scale x86 tools
this project already relies on have been ported to RISC-V.

---

## 4. What would creating the data actually require?

### Toolchain maturity

- **gem5 RISC-V O3CPU**: structurally supported — gem5's O3 model is "intended
  to be configurable for several different ISAs, including AArch64 and
  RISC-V," and RISC-V O3 bug fixes continue to land in recent releases. But
  maturity for *this specific purpose* (microarchitectural side-channel
  fidelity) is a separate, harder question than "does it run RISC-V code."
  Even on x86, where gem5's O3 model is oldest, [Ayoub, "Reproducing Spectre
  Attack with gem5: How To Do It
  Right?"](https://dl.acm.org/doi/10.1145/3447852.3458715) documents that
  getting a Spectre reproduction to actually manifest correctly in gem5
  required careful, non-obvious tuning — this is well-trodden but non-trivial
  even on the ISA gem5 has modeled longest. `[inference]`: expect the RISC-V
  O3 model, being newer and less exercised for security research
  specifically, to need at least comparable — likely more — hardening work
  before it can be trusted to reproduce a genuine speculative leak rather than
  a simulator artifact.
- **QEMU**: QEMU (TCG) is a functional/binary-translation emulator by design —
  it does not model a microarchitecture, cache hierarchy, or branch predictor
  at all, so it structurally cannot exhibit a real timing side channel or a
  genuine speculative-execution leak. This is foundational to QEMU's own
  design (functional emulation for compatibility/speed, not cycle
  modeling) rather than a specific documented caveat found in this pass; treat
  it as `[inference]` grounded in QEMU's well-known architecture rather than a
  quoted primary source, but it is not seriously contestable — no source found
  in this or prior research claims otherwise.
- **BOOM / XiangShan RTL simulation**: this is real and has been used
  successfully (Section 2 — both the 2019 BOOM paper and this pass's own
  research). It is the highest-fidelity open option, because it's the actual
  RTL, not a model of it — but Verilator/RTL-level simulation is slow (orders
  of magnitude below real-time), so booting a full Linux environment and
  running a hardware-attack-style experiment (needed for genuine, non-toy
  verification) is a heavy, per-experiment cost in engineer + compute time,
  not a quick script.
- **ARCHER** (arXiv-adjacent, *Computers* journal, July 2026) — found late in
  this research pass and worth flagging as a promising, very recent
  development: a cycle-model-relative RV64IMAFDC emulator with **pluggable
  superscalar out-of-order execution and thirteen speculation policies**
  (5 classical defenses + 7 new), purpose-built for side-channel evaluation,
  claiming a <3-minute Linux boot, 3.7× the speed of gem5's DerivO3CPU, and a
  9.4% mean cycle-count deviation from Chipyard's fab-ready RTL. If open,
  this is close to exactly the tool this project would want for cheaply
  generating verified RISC-V speculative-leak labels at scale. **Public code
  availability was not confirmed** in this pass — do not plan around it until
  a repository is actually located and inspected.

### Is there a RISC-V Spectector or Revizor?

**Not a direct equivalent, but two 2025 building blocks exist:**

- **LeaSyn** (Section 3) is the closest analogue to Spectector — it produces
  formal, sound-and-precise leakage *contracts* for RISC-V cores, which is
  the same kind of ground-truth artifact Spectector's speculative
  non-interference proofs provide for x86. It is not, itself, a gadget
  generator or classifier.
- **AMuLeT** (Section 3) is the closest analogue to Revizor for RISC-V —
  model-based relational testing against RISC-V *defense* simulators, finding
  real, confirmed bugs. It targets countermeasure implementations rather than
  bare cores, which is a different (narrower) target than what a training
  corpus needs, but the underlying MRT methodology is directly reusable.

Neither is a drop-in, packaged, "run this and get labeled gadgets" tool the
way Spectector-benchmarks or Revizor's handwritten litmus tests are for x86.
Both are recent (2025) academic research releases with unconfirmed public-code
status in this pass, meaning **standing either one up would itself be a
project**, not a lookup.

### Rough effort: days, weeks, or months?

**Months**, using the evidence gathered as calibration points rather than a
guess:

- The 2019 CARRV BOOM paper — a UC Berkeley grad-course-scale project
  (the same work also appears as a course report, "cs262a-F18") — took on the
  order of a semester and produced exactly **two** working gadgets, with a
  third (RSB) left broken. That is the realistic per-gadget cost with
  *existing* open RTL and no oracle infrastructure to build.
- The CISPA group's line of work — the 2023 S&P silicon paper through the
  2026 USENIX Sec full-Spectre paper — represents roughly **three years** of
  sustained, PhD-level research effort by a well-resourced group to go from
  "first cache-timing PoCs on real RISC-V silicon" to "systematic Spectre-PHT/
  BTB/RSB/STL coverage with >97% precision and a working kernel-leak exploit."
  That's the realistic cost of building a genuine, silicon-validated,
  multi-variant corpus from scratch, including the oracle work (empirically
  characterizing which instructions halt speculation, since RISC-V has none
  dedicated) needed to trust the labels.
- FastSpec — the closest x86 analogue to "genuinely scale up from a handful of
  verified seeds" — needed a dedicated paper's worth of engineering
  (mutational fuzzing *and* a GAN) to go from Kocher's 15 hand-written x86
  seeds to ~1.1M samples, and even then required real Flush+Reload
  verification on isolated hardware to keep only gadgets that actually leaked.
  RISC-V starts from a *weaker* position than x86 did for that project: fewer
  verified seeds (roughly two dozen across `cispa/Security-RISC` and
  `boom-attacks`, vs. Kocher's 15 already-clean single-purpose x86 seeds), no
  mature Flush+Reload/microarchitectural-attack primitive library comparable
  to what FastSpec's authors had for x86 in 2020, and no dedicated speculation
  barrier to reason about compiler-inserted mitigations against. There is no
  reason to expect scaling RISC-V gadgets to be *easier* than the x86 case
  was — if anything, expect it to take longer per verified gadget.

A **days/weeks** estimate would only be defensible for a much narrower goal —
e.g., recompiling the ~26 known, already-published PoCs
(`cispa/Security-RISC` + `boom-attacks`) onto a couple of real boards and
harvesting their assembly as a *seed set*. That is worth doing regardless of
what's decided next; it is real, independent, non-transliterated RISC-V data,
just not enough of it, and mostly the wrong shape (cache-timing PoCs and case
studies, not Kocher-style secret-load-then-transmit gadgets) to be a training
corpus on its own.

---

## Recommendation

1. **Immediately (days): harvest the ~26 known, real PoCs as a verified seed
   set**, not a corpus. Pull the actual assembly generated by
   `cispa/Security-RISC` (24 named experiments, silicon-confirmed, C910/C908/
   C906/U74) and `riscv-boom/boom-attacks` (2 gadgets, BOOM RTL). This
   replaces zero of the current 494-record transliterated corpus's *volume*,
   but it is genuinely independent ground truth to hold out as a sanity/
   contamination check the way `SPECDISCOVER_NEW_ISA_ROADMAP.md` §A already
   recommends for leave-one-ISA-out — do the same holdout logic between
   "transliterated" and "real" RISC-V data before trusting any RISC-V number.
2. **Weeks: try to actually locate and stand up ARCHER, LeaSyn, and the CTSRD
   test suite's code** (all three have unconfirmed public-code status in this
   pass — that should be resolved with direct outreach/repo search before
   assuming either "usable" or "unusable"). If ARCHER's code is public and
   works as advertised, it materially changes the months-estimate below,
   because it removes the RTL-simulation-speed bottleneck that made the 2019
   BOOM project slow.
3. **Months: the real corpus-building project**, if pursued, should mirror
   FastSpec's structure but adapted to RISC-V's weaker starting position —
   (a) get BOOM and/or XiangShan RTL simulation running (or ARCHER, if step 2
   pans out) as the execution substrate; (b) use the ~26 real PoCs plus
   Kocher's 15 (recompiled to RISC-V, not transliterated) as seeds;
   (c) build or adapt a verification oracle — LeaSyn-style leakage contracts,
   or empirical Flush+Reload/Prime+Probe confirmation on real C910/P550
   silicon the way `cispa/Security-RISC` already demonstrates is possible on
   cheap boards — to keep only gadgets that provably leak; (d) mutate/fuzz
   from there. Budget this as a multi-month effort, not a sprint, and treat
   any RISC-V accuracy number produced before this exists (including every
   number in this repo today) as describing "generalization to a syntactic
   transliteration," per the existing roadmap's own framing — this research
   does not find grounds to relax that caveat.
