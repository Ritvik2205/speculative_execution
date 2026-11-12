# Additions after the second literature review (2026-11-12)

Status: needs-triage (draft by Claude; nothing here is built or approved)

Inputs: the second literature-review summary (tools, papers, datasets; pasted by the project
owner on 2026-11-12), the plan of record `docs/PLAN_2026-11-11_post_review.md`, and the state of
the open tracks on 2026-11-12.

## 1. Intent

The paper is a measurement paper with a pair benchmark. Its weak points are known:

- no learned model has a positive result yet;
- "the model learned a shortcut" is shown only indirectly, by an opcode-count model matching it;
- ARM pairs are labelled by the kernel patch, not by an oracle;
- the comparison set of detectors is small (rules, one boosted model, one graph model).

This spec picks from the review only what closes one of those points with assets that already
exist in the repository. Everything else is listed under non-goals with the reason.

## 2. Where the open tracks stand

| Track | State on 2026-11-12 | Blocked on |
|---|---|---|
| A hardware generator comparison | Arms built (18,458 programs); pilot and smoke queued | i5 free ~16 Nov; owner's go-ahead for the full run |
| B replication of SPECDET / FastSpec | Done on data; author notes drafted | Supervisor's view on sending |
| C pair benchmark | 2,310 pairs (hardware 1,138; Linux x86 105; Linux arm64 85; injected 982). Rules and opcode model scored. Graph model: 20 jobs running | Cluster jobs finishing |
| C3 SAFE examples of the same kind in `v57` | Not started | New hardware labels (~16 Nov) |
| D symbolic side | Closed | — |
| E gem5 defence testing (AMuLeT setting) | Deferred | Out of scope for this paper |
| F paper rewrite | Not started | Framing agreed with supervisor |
| Ticket: second microarchitecture | Open, not raised with supervisor | Owner |

## 3. What the review adds, mapped to what we already have

| Review item | Existing asset | Gap it could close | Decision |
|---|---|---|---|
| Signal-awareness test (Suneja et al., FSE 2021, arXiv 2011.14934) | `gen/minimize_leaks.ddmin`, `gen/minimality_gate.embeds_in`, injected pairs with known cores | Direct evidence of shortcut learning | **Add (W1)** |
| LLM detector baseline (µLAM-style) | Pair benchmark and `--scores` file interface | Wider comparison set | **Add (W2)**, needs an owner decision |
| Unicorn + Keystone taint labeller | `oracle/spec_emulator.py` already forces mispredictions and rolls back on Unicorn, for x86, arm64, riscv64. It was never validated: it found 0 leaks in 806 hardware labels | Oracle labels for ARM pairs | **Add as validation first (W3)**; ARM labelling (W4) only if W3 passes |
| Osiris clustering of findings | `gen/revizor_native.py` canonical cores; plan items A3/A4 | Root-cause count in the hardware comparison | **Check and adopt (W5)**, small |
| SpecRL, μRL, Shesha, AutoCAT | Feedback (bandit) arm already built | Positioning; a later RL arm | **Related-work only (W6)**; no RL arm now |
| Flow-sensitive GNN | `--cfg-control-edges` arm (ticket `allhw3-cfg-edges`) | — | Already covered; cite as support |
| Keystone | Existing assemble path (`gen/realize.py`, llvm-mc) | — | Not needed; use the existing path (my call) |

Verification status of the review's claims about papers: I confirmed only that the Suneja et al.
paper exists with that title, venue and method name (abstract level). The review itself says
µLAM was read at abstract level. Every statement about another paper must be checked in the
primary source before it is cited (standing rule).

## 4. Goals, non-goals, anti-goals

Goals
- One new measurement that shows shortcut learning directly (W1).
- One more class of detector on the pair benchmark (W2).
- A yes/no answer on whether the Unicorn emulator can be trusted as an oracle (W3), and ARM
  oracle labels if yes (W4).

Non-goals (with reason)
- Python RISC-V simulators (Py-V, riscv-python-model, TinyFive) and PyMTL: none models
  speculation, so there is nothing to leak; a leak in a predictor we wrote ourselves proves little.
- Power and EM datasets (ABBY, ChipWhisperer, ASCAD, ANSSI AES, the disassembly framework):
  physical side channels, a different field.
- PerfVec: predicts execution time, not leaks.
- A full RL generator: the bandit arm is the feedback experiment for this paper; RL only if
  the bandit shows signal.
- gem5 / AMuLeT: stays deferred (plan section E).
- More hardware: handled in ticket `second-hardware-platform`, not here.

Anti-goals
- A new oracle used for labels before it has reproduced labels we already trust.
- An LLM row reported without a memorisation control (the Linux fixes are public).
- Any new result quoted from one seed.

## 5. Work items

### W1. Signal-awareness test (prediction-preserving minimisation)

Question: when a model calls a program leaking, is it looking at the leak?

**Redesigned on 2026-11-12, before any result.** The first design used the injected programs,
because each carries its known leak core. It could not work: neither model calls a single
injected leaking program leaking (0 of 364 for the graph model, seed 0; 0 of 200 for the opcode
model), so there is nothing to minimise. The models call programs leaking by where they come
from: every hardware program, leaking or mitigated, is called leaking.

Method as built (`eval/pairs/signal_probe.py`, cluster: `eval/pairs/signal_gine.py`):
1. Take every program the model scores above 0.5, in five groups: `v57` test LEAK, `v57` test
   SAFE, hardware programs that leak on the i5, hardware programs that are mitigated on the i5,
   injected leaking programs.
2. Delete instructions with `ddmin` for as long as the score stays above 0.5.
3. Ask a question that needs no oracle: does the reduced program have at least two
   memory-touching instructions? A transient leak needs a read of the secret and a second access
   that depends on it, so a reduced program with fewer cannot leak. The share of such programs is
   a lower bound on how often the call does not rest on the leak.

- Outputs: per model and group, share called leaking, reduced length, share that cannot leak,
  the most common reduced programs. `eval/pairs/SIGNAL.md`.
- Known weakness: reduced programs are shorter than anything in training. Stated in the file.
- Dropped from the first design: the random-deletion control and the 50-item oracle check. Both
  answered "did the core survive", which is no longer the question.

### W2. LLM baseline on the pair benchmark

Question: does a general LLM, with no training on our data, separate the pairs?

- Two protocols: single side ("does this leak under speculative execution? probability 0–1")
  and forced choice ("which of A and B leaks?", order randomised and both orders run).
- Output: a scores file in the existing `{"pair_id","side","score"}` format, so
  `eval/pairs/score.py --scores` reports it beside the rules.
- Memorisation control: report hardware and injected sets (not public) separately from the
  Linux sets (public commits). A gap between them is the finding, not noise.
- Runs: 3 repeats at temperature 0 where the API allows, to report run-to-run change.
- Needs from the owner: (a) permission to send benchmark assembly to an external API,
  (b) which provider and key, (c) a spending cap. Rough size: 2,310 pairs, about 4 calls per
  pair across both protocols, a few hundred tokens each.
- Positioning against µLAM only after its evaluation section has been read.
- Done when: LLM rows in `PAIRS.md` with the public / non-public split.
- Cost: half a day of work plus API spend.

### W3. Validate the Unicorn speculative emulator (gate)

Question: can `oracle/spec_emulator.py` reproduce labels we already trust?

- Reference labels: the 982 injected pairs, every side labelled by Spectector on the tainted
  victim. This is the right reference because both tools take an explicit attacker-controlled
  input; the 806 hardware labels are not, since Revizor masks every address (the reason for the
  earlier 0-leak result).
- Procedure: run the emulator on both sides of each pair under the same victim wrapper;
  compare verdicts.
- Pass: agreement of at least 0.95 on leaking sides and on safe sides separately, and no pair
  set (inject, reorder, fence) below 0.90.
- Kill: below 0.90 after one round of fixes. Then the emulator is reported as an unvalidated
  tool and W4 is dropped.
- Done when: `oracle/SPEC_EMULATOR_VALIDATION.md` with the agreement table and every
  disagreement listed by cause.
- Cost: one to two days. Laptop only.

**Result 2026-11-12: KILL.** Leaking sides called leaking 554/824 (0.672); safe sides called safe
771/824 (0.936); 158 pairs not runnable on each side. The emulator is not used as an oracle.
Report: `oracle/SPEC_EMULATOR_VALIDATION.md`.

### W4. Oracle labels for ARM pairs — DROPPED (W3 ended in KILL)

- Build ARM injected pairs: translate the minimal cores to arm64 by hand (they are 2–5
  instructions), inject into arm64 benign bodies, label every side with the validated emulator.
- Re-label the 85 ARM Linux pairs with the emulator where the function can be wrapped; report
  agreement with the patch label.
- Result: an ARM pair set whose labels do not rest on the patch alone. This is what would let
  the paper say more than "transfer test" about ARM.
- Cost: two to three days.

### W5. Root-cause grouping for the hardware comparison

- Read how Osiris groups its findings (primary source). Compare with our canonical-core
  grouping. Adopt theirs only if it merges cases ours splits.
- Fits inside plan items A3/A4; no new experiment.

### W6. Related-work positioning

- Table rows for SpecRL, μRL, Shesha, AutoCAT, Osiris: what generates, what gives feedback,
  which baselines, which metric, hardware or simulator.
- The claim to check in each primary source: none compares against mutation, unigram and
  replay baselines at equal budget.

## 6. Order

1. W1 with the opcode model (now, laptop). W1 with the graph model when the 20 jobs finish.
2. W3 (laptop, independent of everything else).
3. W2 once the owner answers its three questions.
4. W4 if W3 passes.
5. W5 and W6 with the hardware run and the paper rewrite.

## 7. Open questions for the owner

1. Did the reading list come from the supervisor? If so, the simulate-a-CPU-then-RL-then-GNN
   direction may be what he has in mind, and it is worth telling him the Python simulators do not
   speculate.
2. W2: permission, provider, cap.
3. (Closed: W4 dropped after W3 ended in KILL. ARM pairs stay labelled by the kernel patch only.)

## 8. Calls I made (not the owner's decisions)

- Spec location follows `docs/agents/issue-tracker.md` (`.scratch/<slug>/spec.md`).
- Keystone not adopted; the existing assemble path stays.
- W1 uses core-survival as the leak check, with a 50-item oracle confirmation, instead of an
  oracle call per program.
- Pass and kill thresholds in W3 (0.95 / 0.90).
