# Running the SpecExec trainings on the Edinburgh Informatics teaching cluster

Source: https://computing.help.inf.ed.ac.uk/teaching-cluster (+ /external-login, /slurm, /cluster-tips).
Cluster = **Slurm**, head nodes **`icf`** / **`icf2`**, behind the Informatics firewall.

`<UUN>` = your university username (e.g. `s1234567`).

---

## 1. Connect (from this laptop)

The cluster is only reachable from inside the Informatics firewall, so you hop through an SSH gateway. Two options:

**A. OpenVPN, then straight in** (simplest once VPN is set up — https://computing.help.inf.ed.ac.uk/openvpn):
```bash
# after connecting the School OpenVPN:
ssh <UUN>@icf.inf.ed.ac.uk        # or icf2.inf.ed.ac.uk
```

**B. Jump through the SSH gateway** (no VPN): put this in `~/.ssh/config` on the laptop:
```
Host inf-gw
    HostName student.ssh.inf.ed.ac.uk
    User <UUN>

Host icf icf2
    HostName %h.inf.ed.ac.uk
    User <UUN>
    ProxyJump inf-gw
```
then just:
```bash
ssh icf
```
`ProxyJump` does the two hops (laptop → `student.ssh.inf.ed.ac.uk` → `icf`) in one command. The docs recommend **Kerberos/GSSAPI** auth over passwords; for macOS see https://computing.help.inf.ed.ac.uk/external-login (get a ticket with `kinit <UUN>@INF.ED.AC.UK`, then `ssh -K icf`).

---

## 2. Get the code onto the cluster (do this on `icf`)

The repo is on GitHub, so from the head node (which has outbound access):
```bash
git clone https://github.com/Ritvik2205/speculative_execution.git ~/speculative_execution
cd ~/speculative_execution
git fetch origin && git checkout may2026        # the hardening branch
```
**First push the branch from your laptop** if you haven't: `git push origin may2026`.
(If the head node has no GitHub access, instead rsync from the laptop:
`rsync -a --exclude .git ~/SpecExec/ <UUN>@icf.inf.ed.ac.uk:~/speculative_execution/` — but then also copy `v54/data/v55h_train.jsonl` and `v54/data/v54_test.jsonl`, which are the only data files the trainings need and are committed to the branch.)

---

## 3. One-time environment (on `icf`)

No conda is provided, so install Miniconda in your home dir and make a GPU PyTorch env:
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/mc.sh
bash ~/mc.sh -b -p ~/miniconda3
source ~/miniconda3/etc/profile.d/conda.sh
conda create -y -n specexec python=3.11
conda activate specexec
# GPU PyTorch (the cluster GPUs are CUDA; requirements.txt is missing torch/scipy/matplotlib):
pip install torch --index-url https://download.pytorch.org/whl/cu121
pip install numpy scipy scikit-learn pandas tqdm networkx matplotlib
```
`v54/train_gine_v38.py` auto-selects the GPU (`torch.cuda.is_available()`), so no code change is needed.

---

## 4. See what GPUs/partitions exist (run these first — the docs are inconsistent on names)
```bash
sinfo -N -O partition,nodelist:14,gres:40,cpus:8,memory:10   # partitions + GPU types
```
Pick a real partition from that output and set it in `eval/cluster/train.sbatch` (the `#SBATCH --partition=` line — the docs mention `Teaching`, `Standard`, `Short`, `LongJobs`, `Teach-LongJobs`; `sinfo` shows the truth).

---

## 5. Submit the trainings

The two scripts are in `eval/cluster/`:
- `train.sbatch` — one GPU run: stages code+data to node-local `/disk/scratch`, trains, copies results back to `eval/cluster_out/<tag>_s<seed>/`, cleans scratch. Runs the default `train_gine_v38` command, or a `CMD=...` override (used for W5/W6).
- `submit_all.sh` — fires one sbatch per config for **everything runnable on the cluster**: W3 grid (12), W4 edge-ablations (9), W5 leave-one-ISA-out (1 sweep, `--time=08:00:00`), W6 generator pretrain (1, `--time=06:00:00`). 23 jobs total.

**Not in the batch — W6 oracle-RL yield:** `rejection_sample_finetune` needs the Spectector **Docker** oracle, which the teaching cluster does not provide. Run it on your Docker/WSL box (`specdiscover-spectector:pinned`), not Slurm. It also needs a small CLI runner wiring the real generator + realizer + `SpectectorValidator` — that's the one remaining glue task.

**W5 caveat:** `leave_one_isa_out.py` runs the leave-one-ISA-out sweep on the *existing* corpus with bootstrap CIs (result in its `.out` log). It does not yet use the idiomatic-RISC-V corpus (`eval/data/idiomatic_riscv.jsonl`) or the windowing wrapper (`eval/isa_windowing.py`) — wiring those in (Task 5.4) would strengthen the transfer number.

**W6 pretrain caveat:** the batch pretrains on `v55h_train` (a runnable proof of the mechanism). For real cross-distribution gain, stage a large external asm corpus (ExeBench/AnghaBench) into the repo and point `--corpus` at it.

```bash
cd ~/speculative_execution
# edit the partition in eval/cluster/train.sbatch first (step 4), then:
bash eval/cluster/submit_all.sh
squeue -u $USER            # watch the queue
```
Or a single run to test the pipeline end-to-end:
```bash
sbatch --export=ALL,TAG=smoke,SEED=42,EXTRA="" eval/cluster/train.sbatch
tail -f smoke_*.out
```
Interactive GPU shell for debugging (docs: 2h Interactive limit):
```bash
srun -p Teaching --gres=gpu:1 --pty bash    # use a real partition name
```

---

## 6. Collect results

Each job writes `eval/cluster_out/<tag>_s<seed>/gine_best.pt` + `gine_metrics.json` back to your home checkout. Pull them to the laptop:
```bash
rsync -a <UUN>@icf.inf.ed.ac.uk:~/speculative_execution/eval/cluster_out/ ~/SpecExec/eval/cluster_out/
```
Then aggregate exactly as the local plan does: run `eval/robustness_suite.py` on each checkpoint and compare per the recipes in `eval/w3/AGGREGATE_WHEN_DONE.md` (W3) and the W4 ablation notes.

---

## Gotchas (from the cluster docs)
- **Home is NOT backed up** and there's no hard quota but limited space — keep results in git / copy to the laptop.
- **Always stage to `/disk/scratch`** at job start and copy out at the end (train.sbatch does this) — the distributed filesystem is slow for the repeated reads training does.
- **You get no GPU unless you ask** (`--gres=gpu:1`) and no GPU on the default partition — always set `--partition` and `--gres`.
- Set `--mem` and `--time` (train.sbatch sets 16 GB / 2h); keep jobs short and checkpointable.
- On a real GPU each run is ~10–20 min (vs ~45 min CPU locally), so the full 12-cell grid + 9 ablations finish in well under an hour of wall-clock across the queue.
