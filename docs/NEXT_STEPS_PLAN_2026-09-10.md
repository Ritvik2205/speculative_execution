# Execution plan — steps 1–4 (2026-09-10)

For each step: **[AGENT]** = code I build/commit here; **[YOU]** = commands you run on the cluster (`icf`) or the i5-8300H hardware box (`ritvik-asus-linux`). Everything assumes `git push origin may2026` from the laptop and `git pull` on each machine first.

Legend for where things run:
- **cluster** = `icf` / Slurm (GPU training, scoring). No internet on compute nodes except head-node git/pip.
- **i5 box** = the bare-metal Intel machine with Revizor + the Spectector Docker image. The ONLY place the hardware oracle and Docker oracle run.

---

## Step 1 — Close the cheap open numbers (½ day, mostly YOU)

Goal: fill `real_v4.md` (fixed-edge-alone), get the W5 leave-one-ISA-out number, and pull the checkpoints. The trained checkpoints already exist on the cluster from the last run — nothing needs retraining.

- **[YOU · laptop]** push so the cluster gets the restored `revizor_v4_real.jsonl` + the fixed `aggregate.sbatch`:
  ```
  git push origin may2026
  ```
- **[YOU · cluster]**
  ```
  cd ~/speculative_execution && git pull
  # checkpoints from the earlier run are still under eval/cluster_out/*/gine_best.pt
  sbatch eval/cluster/aggregate.sbatch          # no dependency needed — training is done
  squeue -u $USER                                # wait for gine_agg to finish (~15 min)
  ```
- **[YOU · laptop]** pull results + the W5 log back:
  ```
  rsync -a <UUN>@icf.inf.ed.ac.uk:~/speculative_execution/eval/cluster_out/ ~/SpecExec/eval/cluster_out/
  rsync -a '<UUN>@icf.inf.ed.ac.uk:~/speculative_execution/gine_w5_loio_*.out' ~/SpecExec/eval/cluster_out/
  ```
  (optional, to enable local re-eval later) also pull the checkpoints:
  ```
  rsync -a --include='*/' --include='gine_best.pt' --exclude='*' <UUN>@icf.inf.ed.ac.uk:~/speculative_execution/eval/cluster_out/ ~/SpecExec/eval/cluster_out/
  ```
- **[AGENT]** once pulled: analyze the filled `real_v4.md` (does the fixed structural edge alone move real-V4 recall off 0%, vs P3's data fix at 100%?) and read the W5 LOIO number; write the finding.

**Acceptance:** `real_v4.md` has real numbers (not n/a); W5 LOIO recall known.

---

## Step 2 — Scale + de-risk the V4 result (few days; needs the i5 box)

Goal: turn P3's "0→100% on 5 gadgets" into a defensible benchmark — a bigger held-out, and a measured V4 **false-positive** rate (P3 added positives only).

- **[YOU · i5 box]** collect more real V4 gadgets — more Revizor seeds:
  ```
  cd ~/speculative_execution && git pull
  # edit oracle/revizor/scripts/run_v4_ssb_campaign.sh SEEDS to e.g. 10 seeds, or just rerun with new seeds
  bash oracle/revizor/scripts/run_v4_ssb_campaign.sh    # ~15 min/seed on the i5
  git add oracle/revizor/results/v4_ssb_<newdate>/ && git commit && git push
  ```
  Target: 40+ unique violating gadgets (up from 16), across more generator seeds.
- **[AGENT]** (a) extend `convert_v4_gadgets.py` to ingest the new campaign dir(s); (b) build **V4-shaped BENIGN**: take each leak gadget and insert an `lfence`/SSBP-equivalent barrier between the store and the dependent load (mitigated → should NOT leak → BENIGN), giving true negatives; (c) rebuild `v55h_hwv4_train.jsonl` + `revizor_v4_heldout.jsonl` with the bigger positive set (more seed-groups) + the V4 benign; (d) extend the aggregator to also report V4 **false-positive** rate on the benign.
- **[YOU · laptop]** push; **[YOU · cluster]** rerun the P3 training + aggregation:
  ```
  cd ~/speculative_execution && git pull
  for s in 42 1 7 13 21; do sbatch --export=ALL,TAG=p3_hwv4,SEED=$s,EXTRA="",TRAIN="v54/data/v55h_hwv4_train.jsonl" eval/cluster/train.sbatch; done
  # after they finish:
  sbatch eval/cluster/aggregate.sbatch
  ```
- **[YOU · laptop]** rsync results; **[AGENT]** analyze: held-out V4 recall on the bigger set + V4 FP rate.

**Acceptance:** held-out V4 recall on ≥3 held-out seed-groups + a measured V4 false-positive rate on mitigated gadgets.

---

## Step 3 — Finalize cross-ISA transfer (1–2 days)

Goal: the leave-one-ISA-out result that uses the idiomatic RISC-V corpus + inference-time windowing (Task 5.4, never wired), and understand the arm64 gap.

- **[AGENT]** wire `eval/data/idiomatic_riscv.jsonl` + `eval/isa_windowing.py` into `eval/leave_one_isa_out.py` (currently uses the old corpus, no windowing); add a per-ISA confusion dump.
- **[YOU · laptop]** push; **[YOU · cluster]** rerun LOIO:
  ```
  cd ~/speculative_execution && git pull
  sbatch --time=08:00:00 --export=ALL,TAG=w5_loio2,SEED=0,CMD="python3 -u eval/leave_one_isa_out.py --seeds 42 1 7 13 21 --idiomatic --windowed" eval/cluster/train.sbatch
  ```
  (the `--idiomatic --windowed` flags are what the AGENT adds.)
- **[YOU · laptop]** rsync the `.out`; **[AGENT]** analyze: cross-ISA transfer with idiomatic data + windowing, and the arm64 per-ISA confusion (which classes drive the 0.752 vs 0.910 gap).

**Acceptance:** a finalized leave-one-ISA-out table (idiomatic + windowed) + an arm64 error breakdown.

---

## Step 4 — Close the generation loop (largest; cluster + i5 box)

Goal: an end-to-end generator → oracle validated-leak loop with a real pretrain and a measurable yield. This is the weakest, least-mature arm.

- **[AGENT]** (a) write `gen/rl_from_oracle.py`'s CLI runner (`main()`) wiring the real generator + `realize.py` + `SpectectorValidator` over N rounds; (b) add an external-corpus staging script (download ExeBench/AnghaBench asm to `gen/data/pretrain_corpus.jsonl`).
- **[YOU · cluster, head node has internet]** stage the external corpus + pretrain:
  ```
  cd ~/speculative_execution && git pull
  python3 gen/stage_pretrain_corpus.py --out gen/data/pretrain_corpus.jsonl   # AGENT-written; downloads on head node
  # pretrain on a Teaching GPU (a6000 on landonia11 has 48GB if the corpus is large):
  sbatch --time=08:00:00 --export=ALL,TAG=w6_pretrain,SEED=0,CMD='python3 -u gen/pretrain_encoder.py --corpus gen/data/pretrain_corpus.jsonl --epochs 30 --save "$OUT/pretrained.pt"' eval/cluster/train.sbatch
  ```
- **[YOU · laptop]** rsync `pretrained.pt` back; **[AGENT]** fine-tune the class-conditioned generator from it (small, local or cluster).
- **[YOU · i5 box]** run the oracle-RL loop — Spectector Docker is here, NOT the cluster:
  ```
  cd ~/speculative_execution && git pull
  python3 gen/rl_from_oracle.py --gen gen/generator.pt --rounds 5 --k 40 --out gen/rl_yield.md   # AGENT-written; uses the Docker oracle
  ```
- **[AGENT]** analyze the validated-leak yield per round (does the loop self-improve?).

**Acceptance:** a pretrained generator + a validated-leak-yield-per-round table from the real oracle.

---

## Summary — what YOU run, by machine

**Cluster (`icf`):**
1. `git pull` (always first)
2. Step 1: `sbatch eval/cluster/aggregate.sbatch` → rsync results back
3. Step 2: resubmit `p3_hwv4` (5 seeds) after the AGENT rebuilds the bigger dataset, then `aggregate.sbatch`
4. Step 3: `sbatch ... w5_loio2 ... --idiomatic --windowed` after the AGENT wires Task 5.4
5. Step 4: `stage_pretrain_corpus.py` (head node) + `sbatch ... w6_pretrain ...`

**i5-8300H box (`ritvik-asus-linux`):**
1. Step 2: `bash oracle/revizor/scripts/run_v4_ssb_campaign.sh` (more V4 gadgets)
2. Step 4: `python3 gen/rl_from_oracle.py ...` (oracle-RL loop with the Docker oracle)

**Laptop:** `git push origin may2026` before each cluster/i5 pull; `rsync` results back after each run.

**Ordering:** Step 1 first (no new training). Steps 2 and 3 are independent and can run in parallel. Step 4 is last and largest. Nothing in steps 1–3 blocks writing the detector paper.
