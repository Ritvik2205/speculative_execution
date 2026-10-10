# Where to run which oracle

Two real-hardware/symbolic oracles live in this repo. They run in different
places, and neither substitutes for the other.

## Revizor — i5-8300H bare-metal Linux box ONLY

Revizor tests real CPUs for speculative-execution leaks: its `rvzr_executor`
kernel module reads actual hardware performance counters and controls
speculation on the physical silicon. It requires:

- a real x86-64 Intel/AMD machine
- running Linux, with root
- with the `rvzr_executor` kernel module built and loaded

It **cannot** run in Docker on an Apple-Silicon Mac (or any arm64 host) —
Docker Desktop for Mac runs a Linux VM, but that VM has no real Intel/AMD
microarchitecture underneath, so there are no hardware PMU counters and
`rvzr_executor` has nothing to attach to. `run_multiclass_campaign.sh`'s
host guard checks this and refuses (loudly) on the wrong host.

Run on the i5-8300H box:

```bash
sudo bash oracle/revizor/scripts/run_multiclass_campaign.sh \
  --classes "SPECTRE_V4 MDS L1TF SPECTRE_V1" \
  --n-seeds 10 \
  --n 1000 --inputs 100 --timeout 900
```

Then, to actually ingest whatever violations it found into the pipeline's
training/eval corpus:

```bash
python3 oracle/revizor/convert_revizor_gadgets.py \
  --classes MDS L1TF SPECTRE_V1 SPECTRE_V4 \
  --roots rvzr_runs
```

(`run_multiclass_campaign.sh` already prints a new-vs-duplicate gadget
count at the end of each run via
`oracle/revizor/scripts/count_new_gadgets.py`, so you know before
re-running the converter whether the campaign actually grew the corpus.)

## Spectector — runs on this Mac (Docker, `specdiscover-spectector:pinned`)

Spectector is a *symbolic* oracle: it doesn't need real hardware, it
evaluates a leakage-contract proof over generated assembly. That makes it
the tool for oracle-labelling generated gadgets (Phase 2/4 generator
output, augmented programs, etc.) on a laptop — including this Mac.

Build the pinned image once:

```bash
bash oracle/docker/build_spectector.sh
```

Run it (see `oracle/spectector_oracle.py` for the Python wrapper used
throughout the pipeline; it invokes the same image):

```bash
docker run --rm -v "$PWD":/work -w /work specdiscover-spectector:pinned \
  <spectector CLI args — see oracle/spectector_oracle.py for the exact invocation>
```

In practice you almost never invoke the image directly — call
`oracle/spectector_oracle.py`'s `run_spectector` (or whatever entry point
the current pipeline stage uses) and let it manage the container.

## Summary

| Tool | Where | Why |
|---|---|---|
| Revizor | i5-8300H bare-metal Linux only | needs real hardware PMU counters + `rvzr_executor` kernel module; no arm64/Docker substitute |
| Spectector | This Mac, via Docker (`specdiscover-spectector:pinned`) | symbolic oracle, no hardware dependency |

## V2 / RETBLEED hardware ground truth — i5-8300H, published PoC + control

`run_v2_retbleed_campaign.sh` is a RUNNER and LABELLER, not an exploit: it
ships no attack. Revizor cannot test SPECTRE_V2 or RETBLEED (no indirect-branch
or return clause, CALL/RET excluded from its pool), but the i5-8300H is an
affected part, so ground truth comes from a published PoC run under a
mitigation control. You supply the built PoC binary (SPECTRE_V2: Google
SafeSide, already a corpus source; RETBLEED: the ETH Zurich artifact). The
script records the kernel mitigation state, requires BYTE-MATCH output
("RECOVERED k/N" of the known secret, never a hit count — the discipline that
the retracted "V4 40/40" result violated), and labels leak only on a majority
of correct bytes. Confirm a class the way V4 was: leaks on a mitigation-OFF
boot (`spectre_v2=off` / `retbleed=off` on the kernel cmdline), stops on a
mitigation-ON boot.
