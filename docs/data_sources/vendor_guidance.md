# Vendor and standards-body guidance: speculative-execution code sources

Catalogue only. No large data downloaded, no code written. Built 2026-11-05.

Verification key:
- **Fetched**: WebFetch returned the page or document and content was checked.
- **Search-only**: URL surfaced in search results; the page was not fetched or not fetchable.
- **Unverified**: known or referenced, but the URL did not resolve or content could not be read.

"Paired" means the source shows a vulnerable snippet next to a mitigated one, or an explicit before/after.

## Catalogue

| # | Source | URL | Verification | Vuln class | ISA | Code examples (approx.) | Paired vuln/mitigated | Licence / terms |
|---|---|---|---|---|---|---|---|---|
| 1 | Microsoft: C++ Developer Guidance for Speculative Execution Side Channels | https://learn.microsoft.com/en-us/cpp/security/developer-guidance-speculative-execution | Fetched | Spectre v1 (CVE-2017-5753), SSB (CVE-2018-3639), type confusion, uninit use | x86/x64, ARM, ARM64 | ~12 C++ blocks | **Yes**. Each vulnerable pattern carries a `SPECULATION BARRIER` marker; `_mm_lfence` and index-masking examples given as fixes | Not stated on page. Learn/MicrosoftDocs repo is generally CC BY 4.0 (unverified for this page) |
| 2 | Google: Retpoline (Google Help FAQ, "a software construct for preventing branch-target-injection") | https://support.google.com/faqs/answer/7625886 | Fetched | Spectre v2 (branch target injection) | x86 | ~10 code blocks (C++ virtual call, asm, trampolines, refill sequences) | **Implicit**. Native `jmp *%r11` next to retpoline replacement. Not labelled | **Explicit**: royalty-free copyright licence to the retpoline code, provided "as is", not an officially supported Google product |
| 3 | Linux kernel: Spectre side channels (admin-guide/hw-vuln/spectre.html) | https://docs.kernel.org/admin-guide/hw-vuln/spectre.html | Fetched | Spectre v1, v2, v4 | x86 (plus generic) | 1 pseudo-asm block (swapgs) | **Partial**. sysfs status strings pair "Vulnerable" with "Mitigation: ..." states | Footer only: "©The kernel development community". No licence line. Kernel tree is GPL-2.0 (not stated on page) |
| 4 | Linux kernel: Hardware vulnerabilities index | https://docs.kernel.org/admin-guide/hw-vuln/index.html | Fetched | Index for MDS, L1TF, SRBDS, GDS, RFDS, Spectre, SRSO, ITS, TAA, Retbleed (not linked on index), VMSCAPE, and others | x86 | 0 | N/A (index) | Footer only. No licence line |
| 5 | Linux kernel: GDS (Gather Data Sampling) | https://kernel.org/doc/html/v6.19/admin-guide/hw-vuln/gather_data_sampling.html | Search-only | GDS / Downfall (CVE-2022-40982) | x86 | Not counted | Unknown | Same as #4 |
| 6 | Linux kernel: Speculation (mitigating speculation side channels, `array_index_nospec`) | Lives at `Documentation/staging/speculation.rst`, NOT `process/speculation.rst` | docs.kernel.org/process/speculation.html returned **404**. Mirror via grok.openbmc.org (search-only) | Spectre v1 mitigation API | Generic | Small (array_index_nospec usage) | Unknown | Same as #4 |
| 7 | Intel: Speculative Execution Side Channel Mitigations (rev 3.0, May 2018), PDF 336996 | https://www.intel.com/content/dam/develop/external/us/en/documents/336996-speculative-execution-side-channel-mitigations.pdf | Fetched but **content unreadable** (compressed PDF objects). Mirror: https://kib.kiev.ua/x86docs/Intel/WhitePapers/336996-003.pdf (search-only) | Spectre v1/v2/v4, L1TF, MDS | x86 | Unknown | Unknown | Intel copyright; terms not extracted |
| 8 | Intel: Microarchitectural Data Sampling (MDS) | https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/technical-documentation/intel-analysis-microarchitectural-data-sampling.html | Fetched | MDS (ZombieLoad, RIDL, Fallout) | x86 | **8** (VERW mitigation, IVB/BDW/SKL/SLM/KNL clear-buffer sequences) | **No**. All snippets are mitigations; no vulnerable counterpart | "Terms of Use" link in footer; no dedicated licence text |
| 9 | Intel: L1 Terminal Fault (L1TF, "Foreshadow") technical documentation | https://intel.com/content/www/us/en/develop/articles/software-security-guidance/technical-documentation/intel-analysis-l1-terminal-fault.html | Search-only. The `www.intel.com/...developer/...l1-terminal-fault.html` URL returned a 301 to a corp redirector 404 | L1TF | x86 | Unknown | Unknown | Intel standard terms |
| 10 | Intel: Speculative Store Bypass (INTEL-SA-00115, CVE-2018-3639) advisory guidance | https://www.intel.com/content/www/us/en/develop/articles/software-security-guidance/advisory-guidance/speculative-store-bypass.html | Search-only. The `intel.it` mirror 301s to `intel.com`; the developer.intel.com URL from earlier 404'd via corp redirector | SSB | x86 | Unknown | Unknown | Intel standard terms |
| 11 | Intel: Bounds Check Bypass (INTEL-SA-00088, CVE-2017-5753) | https://intel.com/content/www/us/en/develop/articles/software-security-guidance/advisory-guidance/bounds-check-bypass.html | Search-only. The "Analyzing Potential Bounds Check Bypass Vulnerabilities" URL 301s to a 404 redirector | Spectre v1 | x86 | Unknown; expected to include lfence-based pairs | Unknown | Intel standard terms |
| 12 | Intel: Hardware Features Behavior Related to Speculative Execution (doc 758913, rev 0200, Jan 2026) | https://cdrdv2-public.intel.com/758913/Hardware-Features-Behavior-Speculative-Execution-758913-0200-20260120.pdf | Search-only | SSB, SSBD, speculation controls | x86 | Unknown | Unknown | Intel standard terms |
| 13 | Intel: Gather Data Sampling technical paper; INTEL-SA-00828 | Not retrieved (cited by Red Hat) | Unverified | GDS | x86 | Unknown | Unknown | Intel standard terms |
| 14 | Intel: RFDS, ITS | Not found in search | **Gap** | RFDS, ITS | x86 | N/A | N/A | N/A |
| 15 | AMD: Software Techniques for Managing Speculation on AMD Processors (rev 5.09.23) | https://www.amd.com/content/dam/amd/en/documents/processor-tech-docs/programmer-references/software-techniques-for-managing-speculation.pdf | Search-only. The fetch **timed out** (60 s). Older copy: https://www.amd.com/content/dam/amd/en/documents/resources/software-techniques-for-managing-speculation.pdf (search-only) | Spectre v1/v2, SSB | x86 | Unknown; likely lfence and retpoline-style examples | Unknown | AMD copyright; terms not extracted |
| 16 | AMD: SRSO technical update, AMD-SB-7005 r2.0 (Feb 2024) | Official: https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7005.html (search-referenced, unverified). Mirror: https://kib.kiev.ua/x86docs/AMD/Spectre/AMD-SB-7005-r2.0.pdf (search-only) | Search-only | SRSO / Inception | x86 (Zen) | Unknown | Unknown | AMD standard terms |
| 17 | AMD: "A Note About the Potential SRSO Vulnerability" blog (Apr 2024) | https://www.amd.com/en/blogs/2024/a-note-about-the-potential-speculative-return-stac.html | Search-only | SRSO | x86 | 0 (prose) | N/A | AMD standard terms |
| 18 | Arm: Cache Speculation Side-channels whitepaper, v2.5 (June 2020, 21 pp.) | https://documentation-service.arm.com/static/61f904cafa8173727a1b7286 | Fetched but **content unreadable** (raw PDF). Earlier v1.1 (2018): https://developer.arm.com/-/media/Files/pdf/Cache_Speculation_Side-channels.pdf (search-only; that result came via a non-arm proxy domain, so reconfirm) | Spectre v1-style cache side channels; four variants | Arm (AArch64) | Unknown | Unknown | Arm copyright; terms not extracted |
| 19 | Arm: Spectre-BHB whitepaper (v1.7, Mar 2022; v1.8-r0p2 newer) | https://documentation-service.arm.com/static/6582fe1db52744113be61756 and https://documentation-service.arm.com/static/623c60d13b9f553dde8fd8e6 (search-only). Arm advisory page: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability (redirects to support.arm.com; content not extracted) | Search-only | Spectre-BHB (CVE-2022-23960) | Arm (AArch64) | Unknown | Unknown | Arm copyright |
| 20 | Arm: Straight-line Speculation v1.0 (June 2020) | https://developer.arm.com/-/media/Arm%20Developer%20Community/PDF/Security%20Update%2008%20June%202020/Straight-line_Speculation-v1.0.pdf | Search-only | Straight-line speculation (SLS) | Arm | Unknown | Unknown | Arm copyright |
| 21 | RISC-V International: security / speculation guidance | None found | **Gap**. Only roadmap items (Microarchitectural Side Channel SIG, 2022-23), a 2018 isa-dev thread, and academic surveys. Check riscv.org and the security SIG | Speculation / side channels | RISC-V | N/A | N/A | N/A |

## Notes

### Verified in this pass
- **Fetched and usable**: Microsoft C++ guidance (#1), Google retpoline (#2), Linux Spectre page (#3), Linux hw-vuln index (#4), Intel MDS (#8).
- **Fetched but unreadable**: Intel PDF 336996 (#7) and Arm Cache Speculation PDF (#18). Both returned raw PDF objects. A text extraction (`pdftotext`) would be needed. Both files were saved under the session tool-results directory.
- **Timeouts**: AMD SSM PDF (#15).

### Dead or moved URLs
- The Intel "Analyzing Potential Bounds Check Bypass" article and the L1TF and SSB technical-documentation URLs under `www.intel.com/.../software-security-guidance/technical-documentation/...` 301 to a corp redirector that 404s. Use the `/advisory-guidance/` or `/technical-documentation/intel-analysis-*` forms from search (#9-#11), and re-check them in a browser.
- `docs.kernel.org/process/speculation.html` returns 404. The file is `Documentation/staging/speculation.rst` (#6).
- The Arm `developer.arm.com/documentation/110280/latest` URL redirects to `support.arm.com`.

### Licensing caveat
Most vendor sources state copyright only. Their terms should be confirmed before any gadget snippet is redistributed. The Google retpoline page is the only one with an explicit licence grant. Gadget snippets for an evaluation set should be cited with URL and date, not copied wholesale, unless the terms are confirmed.

### Usefulness ranking for the classifier evaluation set
1. Microsoft C++ guidance (#1): paired vulnerable and barrier-annotated snippets, labelled by class.
2. Google retpoline (#2): native-vs-mitigated indirect-branch pairs, with explicit licence.
3. Intel MDS (#8): mitigation-only snippets. Useful as negatives for "mitigated" recognition, but no vulnerable side.
4. Linux Spectre sysfs pairs (#3): status labels, not code. Useful as ground-truth metadata per CPU.
5. Intel and AMD PDFs (#7, #15, #16): probably the richest in paired examples, but neither was readable in this pass. Extract text before counting.
