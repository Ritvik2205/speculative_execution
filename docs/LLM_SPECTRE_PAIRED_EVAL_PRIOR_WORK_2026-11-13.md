# Prior work check: LLMs on Spectre gadget detection with paired / minimal-pair tests

Date: 2026-11-13. Written by a research agent. Every claim about a paper below carries a read
depth. Section and table pointers are to the PDF text I extracted; a person should open each
pointer before it is cited in the paper (standing rule).

Our protocol, for comparison (`eval/pairs/LLM.md`, `eval/pairs/score_llm.py`,
`.scratch/litreview2-additions/spec.md` W2): a general LLM with no training on our data is given
assembly gadgets from a pair benchmark whose two sides share everything except the leak-relevant
property (fence, injected core, reordered store, kernel patch). Two protocols: single side
(probability that it leaks) and forced choice (which of A and B leaks, both orders). Score = share
of pairs where the leaking side scores higher. Labels: one CPU (three sets), Spectector (injected
sets), or the kernel patch itself (Linux sets). Public and non-public sets are reported apart.

## Verdict

**No direct prior work found; partial by analogy.** I found no paper that gives an LLM Spectre
gadgets as near-identical leaking/safe pairs and scores whether the verdict flips. I also found no
paper that measures any LLM's accuracy at classifying Spectre gadgets at all, at any input level.
This is a search result, not a proof of absence (see Search log for what was not reachable).

- **Closest in domain:** ZeroLeak (Tol and Sunar, arXiv 2308.13062). It has before/after versions
  of Kocher's Spectre-v1 examples, but the LLM writes the patch and Pitchfork, Spectector and
  KLEESpectre give the verdict. The LLM is never asked whether a snippet leaks.
- **Closest in method:** the vulnerable/patched pair evaluations of LLMs for ordinary software
  bugs: PrimeVul (arXiv 2403.18624) and, nearest of all, Cichoń and Dmitruk (arXiv 2609.32890),
  which already has within-pair ranking, a "shorter side is vulnerable" rule at 0.875, and LLM
  verdicts near chance. Neither contains speculative-execution code.
- **The gap that is ours:** speculative-execution leaks, assembly input, labels from hardware or a
  speculative oracle instead of from a fixing commit, and pairs built to differ in one property.
  The paired design and the length-shortcut finding are **not** new and must be credited.

## µLAM, read in full

**Which paper.** The repo has no citation, only the name (`.scratch/litreview2-additions/spec.md`
lines 39, 48, 117). I conclude it is: Upasana Mandal, Shubhi Shukla, Ayushi Rastogi, Sarani
Bhattacharya, Debdeep Mukhopadhyay, "µLAM: A LLM-Powered Assistant for Real-Time
Micro-architectural Attack Detection and Mitigation", ICCAD '24, DOI 10.1145/3676536.3676838,
IACR ePrint 2024/1978. Confidence high: it is the only paper of that name in web search, arXiv
and Semantic Scholar, and the topic matches. Read: all 9 pages, from the Wayback Machine copy of
the ePrint PDF (snapshot 2025-03-24), because eprint.iacr.org returned 403.

**What it does.**

- Model: `gpt-3.5-turbo-0125`, fine-tuned through the OpenAI platform, then wrapped as an
  assistant with one function (Sec. 3.1.1; Table 2: batch size 1, learning-rate multiplier 0.001,
  30 epochs).
- Input: three things in a chat message: hardware performance counter (HPC) values for the
  processes running on the machine, the CPU model, and C source code (Sec. 3, items 1 to 3; the
  function schema in Sec. 3.1.1 names `source_code`, `performance_counters`, `system_config`).
  No assembly, no binary.
- Tasks: (1) say whether an attack is running now, from the HPC values; (2) say whether the
  submitted code is vulnerable and which part; (3) suggest a mitigation (Sec. 3, Sec. 3.1.2).
- Training data: 250 chat-format instances (Sec. 3.1.1, text after the JSONL listing). HPC traces
  were collected on five Intel generations (Table 1) while running RSA/ECC from OpenSSL,
  Libgcrypt and NaCl, with and without an attack (Fig. 2).
- Attacks covered: Flush+Reload, Flush+Flush, Prime+Probe, Umprime+Umprobe. These are cache and
  monitor-instruction attacks, not transient-execution attacks (Sec. 4, first paragraph; Fig. 2).
- Labels: attack running or not, by construction of the trace collection. How the code samples
  were labelled vulnerable or safe is not described.

**Evaluation.** Section 4 calls itself a "proof of concept" and consists of chat transcripts
(ChatBox 3 to 7). The only number is one sentence at the end of Sec. 4: "nearly 1000 distinct
queries", "correct responses in approximately 96% of cases". There is no description of the test
set, no split by task, no per-attack figure, no false-positive rate and no baseline number.
Table 3 compares tools by ticks and crosses for three capabilities; it holds no measurements.
The ChatGPT comparison is two transcripts (ChatBox 1, 2).

**Spectre.** Not evaluated. Spectre and Meltdown appear in the background (Sec. 2.1) and in one
argument in Sec. 4 (after ChatBox 4): because speculative attacks use cache timing to extract
data, detecting Flush+Reload in HPC traces makes µLAM "also capable of discerning speculative
attacks". No experiment supports that sentence. Section 4 also says the model was fine-tuned on
"vulnerabilities stemming from speculative execution and branch prediction"; no such training
example or test is shown.

**Paired or counterfactual evaluation.** None. The nearest thing is ChatBox 5 against ChatBox 7:
the same question on a 12th-generation and an 8th-generation CPU gets different answers, because
Umprime+Umprobe needs instructions the older CPU lacks. That varies the CPU, not the code. No
vulnerable/patched code pair appears anywhere. The two code examples (Libgcrypt RSA in ChatBox 4,
a pthread program in ChatBox 6) are both answered "vulnerable"; no safe code example is shown.

**Bearing on our work.** µLAM is a fine-tuned LLM used as a source-level side-channel and
HPC-anomaly assistant. It is not a Spectre gadget detector, takes no assembly, and has no
evaluation that could be compared with ours. Citing it as "an LLM detector baseline" for Spectre
gadgets would overstate it. A fair one-line description: "a fine-tuned GPT-3.5 assistant that
flags cache attacks from performance-counter traces and comments on C source; it reports about
96% correct answers on about 1,000 queries without a described test set, and has no Spectre
experiment".

## Table of related work

Read depth: **full** = whole paper; **targeted** = full text obtained, the named sections read
and the rest searched by keyword; **abstract-only** = abstract or search snippet only.
"Keyword scan" means the full text was searched for Spectre / speculative / transient /
side-channel and the hits read.

### A. LLMs and speculative execution or microarchitectural leaks

| Work | Model | Input | Task | Paired / counterfactual? | Spectre? | Read depth |
|---|---|---|---|---|---|---|
| µLAM, Mandal et al., ICCAD '24, [ePrint 2024/1978](https://eprint.iacr.org/2024/1978) | GPT-3.5, fine-tuned | HPC values + CPU model + C source | Detect running cache attack; flag vulnerable code; suggest mitigation | No | No experiment; claimed by analogy only | full |
| ZeroLeak, Tol and Sunar, [arXiv 2308.13062](https://arxiv.org/abs/2308.13062) (2023) | GPT-4, GPT-3.5, PaLM 2 family, LLaMA2 (Table 1, Table 3) | C source plus leak location from a tool | Generate a patch | Partial: before/after versions exist, but formal tools judge them, not the LLM | Yes, Spectre-v1 (Kocher examples, one OpenSSL case) | targeted (Sec. 7, 8.2, 8.4, Tables 2 and 3, conclusion) |
| uGen, Dipta, Tiemann, Marin et al., [arXiv 2605.15503](https://arxiv.org/abs/2605.15503) (2026) | GPT-4o, Claude Sonnet-4, Qwen3-Coder | Natural-language task + retrieved documents | Generate working attack proof-of-concept code | No | Yes, Spectre-v1 PoC generation | targeted (abstract, evaluation, Table IV, related work) |
| TEE-RedBench, [arXiv 2602.19450](https://arxiv.org/abs/2602.19450) (2026) | Claude Opus, ChatGPT | Natural-language questions | Advice quality on trusted-execution security | No | Conceptual questions only; no code | targeted (pipeline section, Table 2) |
| QuArch, [arXiv 2510.22087](https://arxiv.org/abs/2510.22087) (2025) | Several frontier LLMs | Natural-language question, sometimes with C | Computer-architecture Q&A | No | No; one worked example on a non-speculative timing channel (appendix, "Timing Side Channel from Short-Circuit Evaluation") | keyword scan |
| CESBench, [arXiv 2609.21344](https://arxiv.org/abs/2609.21344) (2026) | Several LLMs | Expert-written items (multiple choice, judgment, scenario, code) | Cryptographic engineering security for IoT | No pairs found | No (0 hits) | targeted (abstract, benchmark design) |
| SCAgent, Xu et al., [arXiv 2605.17406](https://arxiv.org/abs/2605.17406) (2026) | LLM agents | iOS system documentation and traces | Discover OS-level side channels | No | No | targeted (abstract, introduction; keyword scan) |
| Maskey et al., [Findings of EMNLP 2025](https://aclanthology.org/2025.findings-emnlp.1082/) | Several LLMs | Ciphertext | Decrypt | No ("paired" means plaintext with ciphertext) | No | targeted (abstract; keyword scan) |
| "Evaluating LLM Application Impacts on Evasive Spectre Attack Detection", Electronics 14(7):1384 (2025), DOI 10.3390/electronics14071384 | Random forest; LLMs are the background workload | HPC traces | Detect a running attack | No | Yes, but the LLM is noise, not the detector | **abstract-only** (Crossref abstract; MDPI returned 403) |
| Spec-LAMP, Entropy 28(3):254 (2026), DOI 10.3390/e28030254 | Not an LLM detector; LLMs are the workload | Performance events | Detect a running attack | No | Yes, same caveat | **abstract-only** (search snippet) |

### B. Non-LLM learned Spectre gadget detectors

| Work | Model | Input | Task | Paired / counterfactual? | Read depth |
|---|---|---|---|---|---|
| FastSpec, Tol et al., EuroS&P 2021, [arXiv 2006.14147](https://arxiv.org/abs/2006.14147) | BERT-style encoder, pre-trained on assembly | x86 assembly token windows | Gadget vs benign | No. Benign = whole benign files labelled 0, gadgets labelled 1 (Sec. 5.3). Fence variants are used only to show that Spectector treats `sfence` like `lfence` (Sec. 5.2), not to test FastSpec | targeted (Sec. 5) |
| Biringa, Baye, Kul, HASP '22, [arXiv 2210.14452](https://arxiv.org/abs/2210.14452) (repo name SPECDET) | 1D-CNN, SVC, random forest and others | Assembly tokens; HPC traces | Gadget vs benign; attack vs benign | No. Lists "adversarial attacks on classifiers" as future work | targeted (4-page paper; already analysed in `eval/replication/SPECDET_SHORTCUTS.md`) |
| SCR-Spectre, Computers and Electrical Engineering (2025), ScienceDirect S0045790624009546 | BERT embedding + BiLSTM | Assembly | Gadget detection | Unknown | **abstract-only** (search snippet; ScienceDirect returned 403) |

### C. Paired, counterfactual or signal-awareness evaluation of vulnerability detectors (no Spectre content in any of them)

| Work | Model | Input | Pair type | Spectre? | Read depth |
|---|---|---|---|---|---|
| Cichoń and Dmitruk, "A Function-Level Vulnerability Score Measures Flag Rate More Than the Model: Protocol Effects on Paired Benchmarks", [arXiv 2609.32890](https://arxiv.org/abs/2609.32890) (2026) | 7 frontier and large open LLMs; 61 open models | C/C++ source functions | Vulnerable function vs its version after the fixing commit; five released pair benchmarks plus a 5,705-pair pooled set | No (0 hits) | targeted (abstract, Sec. 1, Sec. 5, Table 4, Appendix J) |
| PrimeVul, Ding et al., ICSE 2025, [arXiv 2403.18624](https://arxiv.org/abs/2403.18624) | Code LMs, GPT-3.5, GPT-4 | C/C++ source functions | Vulnerable vs patched, at least 80% shared text; outcomes P-C / P-V / P-B / P-R (subsection "Paired Functions and Pair-wise Evaluation") | No (0 hits) | targeted (pair-wise evaluation section, results) |
| Risse and Böhme, USENIX Security 2024, [arXiv 2306.17193](https://arxiv.org/abs/2306.17193) | Fine-tuned code models | C source functions | VulnPatchPairs; semantic-preserving transformations | No (0 hits) | targeted (abstract, introduction) |
| SecLLMHolmes, Ullah et al., IEEE S&P 2024, [arXiv 2312.12575](https://arxiv.org/abs/2312.12575) | 8 LLMs | C and Python source | 228 scenarios: vulnerable and patched versions, plus trivial and non-trivial code augmentations | No (0 hits) | targeted (abstract, introduction, comparison table) |
| Suneja et al., FSE 2021, [arXiv 2011.14934](https://arxiv.org/abs/2011.14934) | Three neural detectors (not LLMs) | C source | Prediction-preserving input minimisation; Signal-aware Recall | No (0 hits) | targeted (abstract, introduction) |
| SV-TrustEval-C, Li et al., [arXiv 2505.20630](https://arxiv.org/abs/2505.20630) (2025) | LLMs | C source (Juliet) | Generated safe / unsafe / impaired variants; a "Counterfactual" task (Sec. 3.3.3) | No (0 hits) | targeted (task definitions) |
| VISION, [arXiv 2508.18933](https://arxiv.org/abs/2508.18933); ObliVul, [arXiv 2610.11801](https://arxiv.org/abs/2610.11801) | GNN / LLM-based detectors | Source | Counterfactual augmentation or validation | No (0 hits each) | keyword scan only |
| Smith, Keough, Carter, "Towards stack buffer overflow detection in stripped binaries with context-augmented LLMs", J. Computer Virology and Hacking Techniques (2026), DOI 10.1007/s11416-026-00641-0 | LLMs | Stripped x86-64 binaries (decompiled) | Paired vulnerable and patched binaries for CVEs | No | **abstract-only** (search snippet; no abstract in Crossref) |

## Per-paper notes for the close ones

### ZeroLeak (closest in domain)

- The LLM's job is to rewrite a function. Leak locations come from tools (Microwalk for
  constant-time leaks; Pitchfork, Spectector, KLEESpectre for Spectre-v1, Sec. 7.1), are mapped
  from assembly back to C lines, and are inserted into a prompt template (Sec. 7.2, Fig. 7).
- Table 2 lists a "modified set of Kocher's examples" (16 C functions) under six treatments
  (baseline, inline lfence, clang SLH, clang lfence, USLH, ZeroLeak with GPT-4). Each cell is
  marked detected or not detected by each of the three tools. These are vulnerable/mitigated
  versions of the same function, so the data has a paired shape. The verdict comes from symbolic
  tools. No LLM is asked to classify either side.
- Table 3 compares nine LLMs by whether their patches pass the tools, plus cost.
- The conclusion says the framework uses LLMs "to automatically detect and patch"; the detection
  half is done by the tools (Sec. 5 to 7). I found no experiment where an LLM detects.
- Sec. 8.2 notes Spectector flags some inline-lfence cases as gadgets, which the authors treat as
  false positives. Relevant to our own use of Spectector labels on fence pairs.
- Venue: a survey's reference list gives ESORICS 2024. I did not verify it.

Strongest reading against us: "LLMs have been applied to Kocher's Spectre-v1 examples in
vulnerable and mitigated forms since 2023." True. What that work measured is patch generation
judged by tools, on source, with no hardware labels.

### Cichoń and Dmitruk, arXiv 2609.32890 (closest in method)

- Paired test: a model must flag the vulnerable function and clear the post-fix version
  (abstract; Sec. 1). Benchmarks: PrimeVul paired split, VulnPatchPairs, PairVul, JitVul,
  SecLLMHolmes and a pooled set (Sec. 1; Table 4).
- Within-pair ranking, "whether the vulnerable side scores above its own patch", ties as coin
  flips (Sec. 5). This is the same statistic as our pair score.
- Length shortcut: "The patched side is the longer one in 87.5% of pairs, so that a rule that
  labels the shorter side vulnerable reaches 0.875 without access to the code" (Appendix J).
  Our "shorter side leaks" rule on Linux patch pairs (0.910 in `PAIRS.md`) is the same
  observation on a different corpus.
- Result: for 37 of 68 models the gap between correct and reversed pairs is within noise of
  zero; generated verdicts are at 0.50 to 0.57 by ranking, while a linear probe on activations
  reaches 0.78 on length-matched pairs (abstract; Sec. 5).
- Not in it: speculative execution, assembly, labels from execution. Its labels are fixing
  commits, like our Linux sets and unlike our hardware and Spectector sets.

Strongest reading against us: the pair statistic, the tie rule, the length baseline, the
separation of "ranking" from "absolute verdict", and the finding that LLM verdicts barely
separate pair sides are all published (arXiv v1 September 2026, v2 19 October 2026), before our run. A reviewer who knows this
paper will see our LLM table as its method applied to a new domain. That is a fair description
and we should say so ourselves.

### PrimeVul (origin of the paired test for LLM detectors)

- Introduced the paired split and the four outcomes; reports GPT-3.5 and GPT-4 close to random
  on pairs. Source-level, commit-derived labels, no side-channel classes found by keyword.

### SecLLMHolmes

- Vulnerable and patched versions plus augmentations (renaming, added library calls) that should
  not change the verdict. This is the published form of a counterfactual robustness test for
  LLM detectors. Our "injected" and "reorder" sets are in the same spirit; theirs are source-level
  memory-safety and web bugs.

### Suneja et al.

- Already adopted in this repo as the signal-awareness probe (`eval/pairs/SIGNAL.md`). Not
  LLM-based, not Spectre. Cite as the method's origin.

### FastSpec and Biringa et al. (item 4: non-LLM Spectre detectors with paired evaluation)

- Neither evaluates on pairs. Both test on gadget-versus-benign-file splits. I found no learned
  Spectre detector evaluated on mitigated/unmitigated pairs. SCR-Spectre was not readable, so
  this is unconfirmed for that paper.

### uGen

- LLMs generate Spectre-v1 and cache-attack PoCs, scored by per-metric success on hardware. It
  shows frontier LLMs lack some microarchitectural knowledge (its "Takeaway" box). It is
  generation, not detection, and has no pairs. Useful as a second citation that LLMs have been
  measured on Spectre-related tasks.

## What we can and cannot claim

Wording that survives the closest prior work:

- "To our knowledge, no prior work measures an LLM's ability to tell leaking from non-leaking
  speculative-execution gadgets. ZeroLeak uses LLMs to patch Spectre-v1 code and relies on
  symbolic tools for the verdict; µLAM fine-tunes GPT-3.5 for cache-attack detection from
  performance counters and source code and reports no Spectre experiment."
- "We apply the paired evaluation introduced for software vulnerability detection (PrimeVul;
  Risse and Böhme; Cichoń and Dmitruk) to speculative-execution leaks at the assembly level,
  with labels from hardware and from a speculative oracle instead of from fixing commits."
- "As in paired software-vulnerability benchmarks (Cichoń and Dmitruk report 0.875 for a
  shorter-side rule), length alone separates our kernel patch pairs; our constructed pairs
  remove that shortcut."
- "First LLM baseline on minimal pairs of Spectre gadgets" is defensible only with "to our
  knowledge" and only if the scope is stated (one model family, 240 sampled pairs, 30 per set).

Wording to avoid:

- "First paired / minimal-pair / counterfactual evaluation of vulnerability detectors" or "of
  LLM vulnerability detectors". False: PrimeVul, VulnPatchPairs, SecLLMHolmes, SV-TrustEval-C,
  JitVul, and 2609.32890.
- "We show LLMs rely on length" or "we discover the length shortcut in patch pairs" as a new
  finding. Published in 2609.32890 Appendix J for source-level pairs.
- "Unlike µLAM, we evaluate on pairs" in a way that implies µLAM is a Spectre gadget detector.
  It is not; compare tasks honestly or do not compare numbers at all. Its 96% and our pair
  scores measure different things on different inputs.
- "Hardware-labelled minimal pairs" for the whole LLM table. Only `variants`, `counterfactual`
  and `nofence` carry hardware labels; injected sets are Spectector-labelled and Linux sets are
  labelled by the patch (`eval/pairs/LLM.md`, "Reading it").
- "LLMs cannot / can detect Spectre gadgets" in general. The run is one model family (with 295
  of 2,841 calls served by a fallback model), 30 pairs per set, on one CPU's labels.
- "Nobody has evaluated LLMs on Spectre." ZeroLeak and uGen did, on patching and PoC
  generation.

Open points a reviewer may raise that this search does not settle:

- Whether any paired benchmark asks the model to choose between the two sides in one prompt
  (our forced-choice protocol). The pair papers I read score each side separately. I did not
  check every pair benchmark for this, so do not claim forced choice is new.
- Whether SCR-Spectre or a paper not indexed on arXiv evaluates on mitigated variants.

## Search log

All searches run 2026-11-13. No project names, personal details or unpublished results were put
in any query.

**Repo.** `grep -rIil -E "µLAM|muLAM|uLAM|μLAM"` over `.md`, `.tex`, `.bib`, `.txt`: one file,
`.scratch/litreview2-additions/spec.md`, name only, no citation. `docs/references.md` and
`paper_backup/` have no hit.

**Web search (general engine, about 25 queries).** Themes: µLAM by name; LLM + Spectre gadget
detection + assembly; LLM + speculative execution + GPT-4 + Kocher + lfence + patched pairs;
LLM + minimal pair / counterfactual / paired + side-channel / constant-time; LLM + constant-time
violations + vulnerable/patched pairs; LLM + transient execution + zero-shot classification;
LLM-guided fuzzing for speculative execution; LLM Spectre mitigation / repair / lfence insertion;
LLM constant-time crypto leak detection benchmark; LLM paired evaluation PrimeVul SecLLMHolmes;
deep-learning Spectre gadget detection with mitigated variants; fine-tuned CodeBERT / CodeLlama /
GPT-4 on Spectre assembly; ChatGPT on bounds-check-bypass with and without mitigation; LLM
hardware-security benchmark with speculative execution; LLM agents triaging kernel Spectre
gadgets; signal-aware / minimal pair / counterfactual + Spectre; LLM binary or assembly
vulnerability benchmarks; LLM on RTL speculative leaks; LLM + HPC traces for Spectre attack
detection; LLM + array_index_nospec / SLH / index masking pairs; LLM + compiler-introduced
constant-time violations in assembly; thesis or workshop paper on ChatGPT and Kocher's 15
examples; AISec / LLM4Code / DLSP / HASP / WOOT 2025 to 2026.

**arXiv API, abstract field (31 queries).** `Spectre` with each of `LLM`, `LLMs`,
`"language model"`, `"language models"`, `counterfactual`, `"minimal pair"`, `agent`, `neural`,
`transformer`, `"machine learning" + detect`, `gadget + learning`; `"speculative execution"` and
`"transient execution"` with the LLM terms; `"constant-time"`, `"timing side"`, `"side-channel"`,
`microarchitectural`, `Meltdown`, `"hardware security" + benchmark` with the LLM terms;
`"vulnerability detection"` with `counterfactual` and with `"minimal pairs"`; `speculative +
gadget + LLM`. Result: the only security papers joining Spectre and LLMs in an abstract are
ZeroLeak and uGen. `Spectre + counterfactual`, `Spectre + "minimal pair"`, `"side-channel" +
"minimal pairs"`, `speculative + gadget + LLM`: zero results each.

**Venues.** USENIX Security, IEEE S&P, CCS, NDSS, ASPLOS, MICRO, HPCA, ISCA, DAC, CHES/TCHES,
RAID, ACSAC and the workshops were covered only through the web and arXiv searches above. I did
not page through any proceedings or run full-text search in IEEE Xplore, the ACM DL or Google
Scholar. A paper that is not on arXiv and does not name both the model class and the attack
class in its title or abstract would be missed.

**Could not access.**

- eprint.iacr.org (403, Cloudflare). µLAM read from the Wayback copy of the same PDF.
- ACM DL version of µLAM: not fetched. Camera-ready differences from the ePrint copy unchecked.
- ScienceDirect (403): SCR-Spectre. Abstract-level only.
- MDPI (403): Electronics 14(7):1384 and Entropy 28(3):254. Abstract-level only.
- Semantic Scholar search API (429 on every query). Only one DOI lookup succeeded (µLAM
  metadata).
- UC Merced thesis "A Survey of Spectre Attack Variants and Runtime Detection Mechanisms"
  (Zhou, 2025, escholarship 97p7s4t3): only a 15-page front-matter PDF came back. A search
  snippet said it mentions LLM-assisted detection; the accessible pages have no such text. It is
  a survey, so at most a pointer; I could not follow it.
- Springer article 10.1007/s11416-026-00641-0 (paired vulnerable/patched binaries with LLMs,
  buffer overflows): snippet only.

**Not verified.** ZeroLeak's venue (ESORICS 2024, from a survey reference list). PrimeVul's
venue (ICSE 2025, from the citing paper). SV-TrustEval-C's venue. Publication dates of the 2026
arXiv items are from their arXiv stamps.
