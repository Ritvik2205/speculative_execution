# Closest prior systems: what generates, what gives feedback, what they compare against

Status: every cell comes from the arXiv full text of the paper (versions: SpecRL v2, µRL v1,
Shesha v2, AutoCAT v3, Osiris v1), read by a research agent on 2026-11-12 with section and table
pointers. I spot-checked four quoted phrases against the extracted text; three matched and one
could not be matched because of line wrapping. Before any cell is cited in the paper, the pointer
must be opened by a person. Items under "Not verified" must not be cited.

## Table

| System | Searches over | How candidates are made | Feedback | Target | Baselines it runs | Budget control | Metric | Training corpus |
|---|---|---|---|---|---|---|---|---|
| SpecRL (arXiv 2502.16756) | Assembly programs, one instruction per action; case study uses 4 instructions, 40 actions | PPO agent | Tiered reward: contract violation > observable misspeculation > misspeculation; step penalty (Sec. II) | AMD Ryzen 5 3600, through Revizor (Sec. III) | Revizor "with a similar action space" only (Sec. III, Fig. 2) | Not stated; detection time vs program size 10–150 | Average time to first leak (Fig. 2) | None |
| µRL (arXiv 2502.14307) | x86 sequences up to 10 instructions, from the uops.info list | PPO agent, hierarchical action space | Bad-speculation counters plus observed byte leakage, per instruction (Eq. 1–2) | Intel i9-7900X, i9-14900K (Sec. 6) | None | 27 and 20 days of runs reported; no comparison | Reward curves; 8 new mechanism classes by manual analysis; leak rate in b/s (Sec. 7, Table 2) | None |
| Shesha (arXiv 2406.06034, USENIX Security 2024) | Sequences of 10 instructions over ~90 instruction-set extensions | Particle swarm, 50 particles | Binary: bad speculation seen in performance counters (Sec. 3.2) | Four Intel generations (Table 2) | Six settings of its own two parameters; two of them "essentially equivalent to random sampling" (Sec. 5, Table 3). Other tools' times quoted from their papers, not re-run | 24-hour campaign; repetitions and variance not stated | Time to first find; new transient paths | None |
| AutoCAT (arXiv 2208.08025) | Cache attack action sequences in a guessing game | PPO agent, Transformer encoder | Guess correctness (Sec. IV-C) | Cache simulator, and three Intel CPUs through CacheQuery (Table III) | Textbook prime+probe; its own agent without the detection penalty; exhaustive search by formula only (Sec. VI-A) | None for search; analytic estimate | Epochs to converge; bit rate; accuracy; detection rate | None |
| Osiris (arXiv 2106.03470, USENIX Security 2021) | Triples of single instructions (reset, trigger, measurement) | Enumeration of all executable triples; no feedback (Sec. 4.1) | None; timing difference is the detector | Three Intel, two AMD CPUs (Sec. 5.1) | None for the search | 500+ hours total; no comparison | Triples reported, clusters, novel channels | None |

## The four baselines we add

| System | Random generator | Mutation of known examples | Frequency (unigram) sampling | Replay of known violators |
|---|---|---|---|---|
| SpecRL | Not as its own arm (Revizor stands in; a formula is given for a perfect random fuzzer) | No | Not mentioned | Not mentioned |
| µRL | No experiment | No | Not mentioned | No |
| Shesha | Only as two settings of itself | No | Not mentioned | Not mentioned |
| AutoCAT | No experiment | No | Not mentioned | Textbook attacks compared on bit rate, not as a search baseline |
| Osiris | Is itself unguided | No (future work) | Not mentioned | No |

What this supports, once checked by a person: none of the five runs an equal-budget comparison
of a learned generator against mutation, unigram and replay baselines, and none states a measured
rate at which random search finds a leak. Our hardware comparison does both. None of the five
trains on a corpus of known violators, so "learning from known violations" is not something they
tested.

What it does not support: that these systems do not work. Each reports finds on real hardware.

## Not verified

- Venues of SpecRL, µRL and AutoCAT (not in the arXiv text).
- SpecRL: whether "detection time" includes training; number of runs behind "on average".
- Shesha: the row-to-value mapping of Table 3 was rebuilt from extracted text; the abstract says
  five new paths, Table 2 lists four cases.
- µRL: per-mechanism numbers in Table 2 were not transcribed.
- Osiris: whether Table 7's counts come from one full enumeration.
