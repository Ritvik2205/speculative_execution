# Author/vendor PoC collections for real-world speculative-execution gadgets

Catalogue only. No code or large data downloaded. Repo URLs were checked with WebFetch on 2026-11-05 unless marked **unverified**. "Provenance" = who published the code. Only paper-author, university-group, or vendor repos are listed as primary; unofficial forks are excluded.

## Main table

| Name | Class | Paper / CVE | Repo URL (checked) | Provenance | Lang | ISA | Licence | Gadget code in repo? | Approx. size |
|---|---|---|---|---|---|---|---|---|---|
| Meltdown demos (libkdump) | MELTDOWN (not in 9-class set) | Lipp et al., CVE-2017-5754 | https://github.com/isec-tugraz/meltdown (redirect from IAIK/meltdown, archived 2022-10-01) | Paper authors (TU Graz IAIK) | C | x86 | Zlib | Yes (meltdown, meltdown_nonull in libkdump/) | Small, ~14 top-level entries |
| ZombieLoad PoC | MDS | Schwarz et al., CVE-2018-12130 | https://github.com/isec-tugraz/ZombieLoad | Paper authors (TU Graz) | C (inferred) | x86 | **not confirmed** | Yes (attacker/, victim/, module/; 4 variants) | Small, ~9 commits |
| RIDL test suite and exploits | MDS (RIDL) | Van Schaik et al., CVE-2018-12127 / 12126 / 12130 | https://github.com/vusec/ridl | Paper authors (VUSec); shadow PoC credits Jonas Theis | Not stated (likely C/asm) | x86 | **not confirmed** | Likely (exploits/, pocs/, tests/); not stated explicitly | Medium, ~59 commits |
| Fallout / MSBDS Ice Lake variant (icebreak) | MDS (Fallout) | Moghimi et al., CVE-2018-12126 | https://github.com/flowyroll/icebreak (owner "flowyroll"; author link to moghimi.org tech report) | **Provenance unclear**: owner is not confirmed as an author; tech report is by Moghimi | Not stated (C likely) | x86 (Ice Lake) | **not confirmed** | Yes (icebreak_kernel_poc/, icebreak_simple/; uses PTEditor submodule) | Small, 3 commits |
| Zenbleed PoC | Speculative register leak (adjacent to set; not in 9 classes) | CVE-2023-20593 | https://github.com/google/security-research/tree/master/pocs/cpus/zenbleed | Vendor-adjacent: discovered by Tavis Ormandy (Google Project Zero) | C, asm, shell | x86 (AMD Zen 2) | **not shown** on page | Yes (zenbleed.c, zenleak.asm, pattern.c; ~10 files visible) | Small |
| Inception / PhantomCALL artifacts | RETBLEED-family / return-stack training (Inception) | Trujillo, Wikner, Razavi, USENIX Sec 2023, CVE-2023-20569 | https://github.com/comsec-group/inception | Paper authors (ETH COMSEC) | Not stated (C/asm likely) | x86 (AMD Zen 1/2/4) | **not stated** | Yes (inception/, phantomcall/, tte_btb/, tte_rsb/, ibpb-eval/) | 7 top-level entries |
| Spectre-BHB / BHI exploits | BHI | CVE-2022-0001 / 0002 | https://github.com/vusec/bhi-spectre-bhb | Paper authors (VUSec) | Not stated (C/asm likely) | x86 + ARM reverse-engineering code | Apache-2.0 | Yes (pocs/inter_mode, pocs/intra_mode; re/x64, re/arm) | Medium, 3 commits |
| LVI-LFB control-flow hijack PoC | LVI (LFB) | CVE-2020-0551 | https://github.com/bitdefender/lvi-lfb-attack-poc | **Vendor** (Bitdefender; authors Lutas & Lutas) | C/C++ (inferred, VS2015) | x86 (Intel) | LICENSE present, **type not stated** | Yes (src/, lvi-cfh-poc component) | Small, 3 commits, 27 stars |
| Spectre v1 / v2 / v4 demos (SafeSide) | SPECTRE_V1 / V2 / V4 | Google SafeSide project, no CVE | https://github.com/google/safeside | Vendor (Google; "not an officially supported Google product"); archived read-only 2025-02-15 | C++ (demos) | x86 + ARM | BSD-3 **and** GPLv2 | Yes, but **demos leak synthetic data** (demos/, benchmarks/, kernel_modules/) | Medium, 239 commits. Per-variant coverage not confirmed |
| Google security-research `pocs/cpus/*` (multi-PoC directory) | Several (see below) | Various | https://github.com/google/security-research/tree/master/pocs/cpus | Vendor (Google Project Zero) | C, asm | x86 | **not checked** | Varies per subdirectory | Large directory, 16+ subdirectories |

### Subdirectories of google/security-research/pocs/cpus (listed, contents **unverified**)

Found on the directory listing. Each still needs a per-directory check for PoC contents and licence.

- `retbleed/` (RETBLEED, the Retbleed PoC listing likely under Google's repo. The ETH COMSEC repo `comsec-ethz/retbleed` returned HTTP 404 when fetched, so use this copy instead.)
- `inception/` (Inception)
- `intra-mode-bhi/` (BHI)
- `spectre-gadgets/` (Spectre v1 gadgets, likely relevant)
- `mds-x25519/` (MDS-related)
- `reptar/`, `ret2aslr/`, `top-of-stack/`, `xgetbv/`, `entrysign/`, `errata/`, `misc/msrscan`, `pt_side_channel/`, `tdxploits/`, `tdxplore/`

## Gadget scanners and analysis tools (not PoCs; use for gadget discovery, not as ground-truth PoC)

| Name | Repo (checked) | Purpose | Provenance | Notes |
|---|---|---|---|---|
| Kasper | https://github.com/vusec/kasper | Scans the Linux kernel for transient-execution gadgets | VUSec | Source of real kernel gadgets. Needs labelling |
| InSpectre Gadget | https://github.com/vusec/inspectre-gadget | Inspection and exploitability analysis of Spectre v1 disclosure gadgets | VUSec | Exploitability labels could help ground truth. Verify its data outputs |
| TEASan | https://github.com/vusec/teasan | Transient-execution address sanitizer | VUSec | Tool only; not a gadget source |

## Searched and not found (no author/vendor repo located in this pass)

- **Foreshadow / L1TF**: no IAIK repo found. Only the Amazon demonstrator `blitz/l1tf-demo` (see Notes).
- **CacheOut**: paper at cacheoutattack.com and arXiv 2006.13353; no public code located.
- **Downfall / GDS (CVE-2022-40982)**: no PoC repo located. Check downfall.page and Intel INTEL-SA-00828.
- **LVI (original, SGX)**: no repo located. Check lviattack.eu (not fetched).
- **CrossTalk / SRBDS (CVE-2020-0543)**: VUSec says PoC code was released, but no repo located. Check the vusec org (140 repos, only 10 shown on the page).
- **Fallout official VUSec test suite**: not located. The VUSec MDS page mentions one.
- **Inception (AMD SRSO)**: no separate SRSO PoC located. The comsec-group/inception artifact covers Zen.

## Not checked in this pass (time limit)

Spectre-RSB / ret2spec, SSB (Spectre-v4 variant), Ghostrace, Indirector, Phantom standalone, LVI original, CrossTalk, Retbleed under comsec-ethz (URL returned 404), and KAISER (isec-tugraz/KAISER, a mitigation, not a PoC). Listed by the vusec and isec-tugraz org pages but **not verified**: `vusec/btr` (Branch Target Reuse, possible), `vusec/revanc` (page-table cache, possible), `isec-tugraz/armageddon` (ARM cache attacks, probable side-channel tooling, not spec-exec).

## Notes

1. **Provenance policy.** Table rows are paper-author, university-group, or vendor repos. Two borderline cases:
   - `blitz/l1tf-demo` is by Julian Stecklina (Amazon), not the Foreshadow authors. It needs a kernel gadget patch. Excluded from the primary table, but include only as a labelled "vendor-engineer demonstrator" if needed.
   - `flowyroll/icebreak` is owned by a personal account. It is cited by Moghimi's report, but ownership is not confirmed.
2. **Ground-truth caveats.**
   - SafeSide demos leak synthetic data and are archived. They are useful as clean reference gadgets, not as real-world ones.
   - Zenbleed is a register-state leak from a mispredicted VZEROUPPER rollback, not a classic Spectre gadget. Don't mix it into the 9-class labels without a decision.
   - Several repos have no stated licence in the fetched page. Confirm licence before redistributing any code, and prefer citing these by URL.
3. **Coverage gap.** Verified primary sources with gadget code exist for MDS (3), Meltdown (1), Spectre v1/v2/v4 (1, synthetic), Inception/RETBLEED family (1, plus the unverified Google copy), BHI (1), and LVI-LFB (1). **L1TF has no clean author-published PoC found yet.** Consistent with the memory note that L1TF is hard to measure.
4. **Size estimates** are from directory listings only (WebFetch), not clone-level counts. Clone with `--depth 1` for exact numbers.
5. **Licences** marked "not confirmed" were not visible on the fetched page. Check the LICENSE file before any reuse.
