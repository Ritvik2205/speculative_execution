# Plan after the literature review — 2026-11-11

Input: `~/Downloads/Spectre Gadgets Feedback.md` (literature review and feedback, 281 sources)
and the state in `docs/STEP2_STATUS_2026-11-11.md`. This replaces the ordering in
`docs/NEXT_STEPS_2026-11-10.md` from step 3 onward.

Status of the review's claims: its statements about OUR repo were checked against the repo
and are marked below. Its statements about other papers (numbers, baselines, what is missing)
are NOT verified by me. Each must be read in the primary source before it is cited or built on.

## 0. Correction, 2026-11-11 evening: the hardware target is NOT saturated

Section 1 below accepted the review's claim that Spectre V1 under the no-speculation contract
is saturated on the i5, on the evidence of "9 violations per seed on every seed". The campaign
logs (`oracle/revizor/results/base_rates_261111/`) show that figure is a time ceiling (about
100–120 s to confirm each violation, 900 s limit). Per test case, Revizor's random generator
violates in about 4% (V1), 5–9% (L1TF), 1–2% (MDS) and 0.1–0.6% (V4). All of these leave room
for an arm to do better or worse than random.

What changes: the original settings are usable; V1 and L1TF are the best-powered classes;
V4 needs about 1,000 programs per campaign. What does not change: campaign-level metrics,
tests to first violation, distinct minimised cores, at least 10 campaigns per arm with A12 and
Mann–Whitney, the feedback arm. The contract pilot (`cond`, `bpas`) is now a secondary
question (what is left once the common mechanism is permitted), not a precondition.

## 1. What the review gets right about us (checked)

| Claim | Check | Verdict |
|---|---|---|
| The queued hardware run tests Spectre V1 against a no-speculation contract, so random fuzzing will violate constantly | `hw/gen_vs_random/SPECTRE_V1/config.yaml`: `contract_execution_clause: no_speculation`, `BASE-COND_BR` enabled | True |
| That target is saturated on this CPU | Campaign logs: about 4% of random V1 test cases violate; the constant 9 per seed is a time ceiling | **False** (see section 0) |
| The symbolic negative result is expected | Our own tables: branch-keeping benign 0.60–0.62 | True |
| The nine-class dataset is our own pipeline, not a public benchmark | Built from `c_vulns/` by `augment_asm_windows.py` and `v54/build_dataset.py` | True. Never describe it as a third-party benchmark |
| The 806 hardware-labelled fence variants are the strongest artefact | Unique in the repo: labels from silicon, minimal pairs | Agree |
| Trial counts are too low | 5 seeds almost everywhere | True |

## 2. What we are doing wrong

1. **The hardware experiment as queued cannot answer its question.** With V1 against a
   no-speculation contract, the random arm will violate at close to the same rate as every other
   arm. It would repeat the Spectector failure on silicon. It is scheduled to start
   automatically around 16 November.
2. **Wrong metric.** "Violations per program" rewards finding the same common leak repeatedly.
   The field reports distinct root causes after minimisation and time or tests to first
   violation.
3. **Imitation instead of feedback.** Every positive result in the literature uses a reward
   signal. Our generator copies the distribution of known violators. Where violations are
   common that distribution is ordinary code; where they are rare we have too few examples
   (166 V1 programs, held-out loss 4.1 nats per token).
4. **The classifier's negative class is a different kind of object from its positive class.**
   Old data: arm64 projects against x86 attack snippets. New `v57` data fixes ISA and length,
   but SAFE is still Debian-compiled functions and LEAK is hand-written or fuzzer-generated
   code. A model can still separate them by style. Only pairs that differ in the property
   itself test the claim.
5. **Three rounds of harness building on the symbolic side.** Each was needed to find the
   problem, but the conclusion has been stable since the second. More victims will not change it.
6. **No external anchor.** All findings are about our own pipeline. A reviewer can say the
   artefacts are our mistakes, not the field's.
7. **Statistics.** Five seeds, Wilson intervals on pooled counts, no effect sizes.

## 3. What the paper should be

A measurement paper with one benchmark and one honest generation experiment:

> Reported success in learned Spectre-gadget generation and detection can come from the test
> harness, the base rate and the split. We show this with controls on our own pipeline and on
> published work, release a hardware-labelled minimal-pair benchmark on which simple rules beat
> trained models, and run the first equal-budget comparison of a learned generator against
> random fuzzing under a contract where violations are rare.

Contributions, in order of strength:

1. **Hardware-labelled minimal-pair benchmark.** 806 fence-placement variants now, about 2,460
   more from the training pool when i5 step 4a finishes, plus 301 counterfactuals and the
   fence-free set. Report the prior (0.599), the one-line rule (0.992 on variants, 0.274 on
   counterfactuals), the mechanism rule (0.884) and every trained model beside them.
2. **Controls that expose artefacts**, applied to our pipeline (done) and to one published
   system (new, section 4 B).
3. **Labeller and minimiser** (done): safe / self-contained leak / attacker-dependent leak,
   with a 2–5 instruction core.
4. **Learned generation against random fuzzing where leaks are rare** (redesigned, section 4 A).
   Either outcome is reported.

Dropped as claims: nine-way classification accuracy as a headline; generator yield on a
symbolic oracle; the retraining loop; "DSL conditioning".

## 4. Work plan

### A. Redesign the hardware experiment before it runs (blocking, this week)

A1. **Measure base rates from logs that already exist** (i5, read-only, safe during 4a).
    For every past campaign: class, contract, test cases executed, violations, seconds. Output
    one table: violations per 1,000 test cases and tests to first violation, per class and seed.
    This decides which settings are saturated.
A2. **Pick settings where random is rare.** Candidates, to be confirmed by A1 and a short pilot:
    - V1 menu with the `cond` contract (branch misprediction permitted), so what remains is
      something other than plain V1;
    - V4 with the store-bypass contract variant where the plain bypass is permitted;
    - the straight-line menus (no conditional branches) where the earlier V4 run varied by seed.
    Pilot: 200 random programs per candidate. Keep a setting only if random finds a violation
    in 0.5%–10% of programs.
A3. **Change the runner.** Per arm and seed, a campaign of N programs in a fixed order; record
    the index and time of every violation. Minimise each violating program with `rvzr minimize`
    and canonicalise the core with `gen/revizor_native.py`.
A4. **Metrics.** Primary: distinct minimised cores per campaign, and tests to first violation.
    Secondary: distinct cores not equivalent to any core of a training program; raw violation
    rate. Also report exact-copy and n-gram overlap of generated programs with the training set
    (exact-copy filtering exists).
A5. **Trials and tests.** At least 10 campaigns per arm, same total budget as now
    (10 × 100 instead of 5 × 200). Mann–Whitney U and Vargha–Delaney A12 between arms; report
    medians and A12, not only means.
A6. **Training data for the chosen setting.** If the setting is rare for random, known
    violators under that contract are few. Then the imitation arm is trained on whatever
    violates under the new contract (re-run the 552 + 173 programs under it first: this is the
    replay arm and gives the training set), and arm D below carries the learning claim.
A7. **Add a feedback arm (arm D).** A bandit over generator choices rewarded by Revizor's
    speculation filter and observation filter, which are cheap and graded: choose among unit
    shapes or among parent programs to mutate, update from the filter outcome. This is the
    feedback version the literature supports, built on the emitter that already exists. Keep
    the equal budget.

Until A1–A5 are done, the queued run should not start. The 40-program smoke test is harmless
and useful: it tells us the runner works and gives a first base rate.

### B. Replicate one published system with our controls (laptop and cluster, 1–2 weeks)

B1. Read the SPECDET and FastSpec papers and confirm the review's description. Obtain the
    released data and code. If either is unavailable, stop and say so.
B2. On their data and split: an opcode-count random forest and a length-only rule.
B3. A split grouped by base example (and compiler where recorded), using `v57/neardup.py`
    and `v57/checks.py` unchanged.
B4. Out-of-distribution benign: real x86 functions that contain conditional branches
    (`eval/data/realworld_benign_x86_64.jsonl`).
B5. Our tainted labeller over a sample of their positives and negatives: what share of
    "gadgets" are attacker-dependent, and what share of "benign" windows leak.
B6. Before any of this is written up as a critique, send the reproduction to the original
    authors and wait for a reply.

### C. Rebuild the classifier evaluation around pairs (laptop now, cluster for training)

C1. **Pairs as the primary test.** Three sources, all with the two sides sharing everything
    except the property:
    - hardware fence variants (have 806 + 301 + fence-free; training-pool variants due ~16 Nov);
    - Linux patch pairs already in the repo (`eval/data/realworld_patch_linux.jsonl`, 105
      vulnerable / patched function pairs);
    - injected pairs: a verified gadget core from the minimiser inserted into a real benign
      function against the same function without it, labelled by the tainted oracle.
C2. **Pair metrics.** Share of pairs where the model scores the leaking side higher (the flip
    measure already used), and accuracy at a threshold fixed on training data. Report next to
    the prior and the rules.
C3. **`v57` stays as the training set and for the checks**, with injected and hardware-labelled
    SAFE examples added so the negative class is no longer a different kind of code. Add RISC-V
    only if attacks and benign both exist for it.
C4. **Models on the same footing.** Opcode-count boosting, the positional and mechanism rules,
    GINE without and with branch-target edges; 10 paired seeds. The claim under test is whether
    any learned model beats the mechanism rule (0.884) on counterfactual pairs.
C5. Finish the opcode-count bars on the current `v57` split (running) as the reference point.

### D. Symbolic side: stop building, package what works

D1. No further victims. Freeze `sni`, `indexed`, `tainted` with their controls.
D2. Finish the minimal-core table on the tainted victim (running) and report the labeller as a
    tool: agreement between its attacker-dependent label and hardware labels on programs that
    can be expressed in both.
D3. The fair-candidate rerun is done from existing rows; no new oracle campaign is needed.

### E. Rare-leak extension (only after A–C produce results)

Relational testing of speculation defences in gem5 (the AMuLeT setting), where a leak is rare
and a test is expensive. This is where a learned or feedback generator has room. It needs the
cluster and a working gem5 defence build, so it is a follow-on, not part of the first paper.

### F. Paper

F1. Rewrite the abstract, introduction and contribution list to section 3.
F2. Related-work table from the review, after reading each primary source. Five bib entries
    are still marked unverified from the earlier pass.
F3. State the dataset provenance plainly: built by us from proof-of-concept sources and
    augmentation; not a public benchmark.
F4. Release plan: harness, control rows, checks, and the history of bugs found and fixed.

## 5. Order and dates

| When | What | Where |
|---|---|---|
| Now | A1 base rates from existing logs | i5, read-only |
| Now | C5 bars, D2 cores (both running); B1 reading and data download | laptop |
| This week | A3–A5 runner and metrics; A7 bandit arm; C1 injected pairs and patch pairs | laptop |
| ~16 Nov | Step 4a labels land; smoke test of the runner; A2 pilot for base rates | i5 |
| After pilot | Hardware comparison under the chosen contract, 10 campaigns per arm | i5 |
| After 16 Nov | C4 training on hardware labels plus pairs | cluster |
| Following week | B2–B5 replication; then B6 contact authors | laptop, cluster |

## 6. Decisions needed from the project owner

1. Hold the automatic start of the real hardware run until A1–A5 are in (the smoke test can
   stay). Recommended: yes.
2. Which system to replicate first. Recommended: SPECDET if its data is public (smaller), then
   FastSpec detection.
3. Whether the paper is framed as section 3 (measurement and benchmark). Recommended: yes; the
   generation result becomes one experiment in it, not the headline.
4. Whether to attempt E for this paper. Recommended: no.

## 7. What would make the result strong

- A hardware table where random fuzzing is at a few percent, with 10 campaigns per arm and an
  effect size, whichever arm wins.
- A published detector reproduced, then matched by an opcode count on its own split and
  broken by a grouped split, with the authors informed.
- A pair benchmark with silicon labels where the best trained model, the best rule and the
  prior are all on one line.
