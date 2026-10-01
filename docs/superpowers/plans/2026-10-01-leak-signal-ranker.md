# Leak-Signal Ranker Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the regression ranker the original project description names ("train a regression model to rank the candidates so that only the top selections are evaluated for precise measurement") — a surrogate for the oracle that scores generated gadgets so only the top-K reach the expensive oracle.

**Architecture:** Reuse a frozen GINE encoder (the locked classifier's, via `eval/gine_riscv_holdout_eval.load_checkpoint`), capture its post-fusion `combined` vector with a forward pre-hook (no fork of `gine_classifier_v38.py`), and train a small regression head to predict the oracle's continuous `leak_signal`. MC-dropout gives per-candidate uncertainty; UCB acquisition (`μ + β·σ`) picks the batch. The headline metric is sample efficiency: confirmed leaks per oracle call vs random ordering, on a group-held-out split.

**Tech Stack:** PyTorch, the existing `v54` GINE stack, `oracle/validators` (Spectector), `eval/splits.py` group-holdout, pytest.

**Spec:** `docs/superpowers/specs/2026-07-22-phase3-ranker-design.md` (Phase-3 ranker design), updated by the data-reality findings in this plan's Task 1.

## Global Constraints

- **Leak signal is x86_64-only and per-structure.** The only working oracle is Spectector (symbolic SNI, `oracle/spectector_oracle.py`), signal = `trace_length`. No arm64/riscv64 leak signal exists. Every ranker number is x86_64 SPECTRE_V1 unless a new oracle lands. Copy this caveat into every report.
- **The ranker is a surrogate, never ground truth.** All "predicted leak" numbers stay predicted until the oracle confirms. Same discipline as the Phase-2 "plausible candidate, not confirmed leak" framing.
- **Group-holdout, not record split.** Split by augmentation/source `group` via `eval/splits.py` (`group_of`), never by record, or near-duplicate gadgets leak across train/test. Report both random-split and group-holdout; expect a drop and report it.
- **Multi-seed or it does not count.** Single-seed ranker numbers wobble ±1-2pp like the classifier. Report ≥5 seeds with CIs (reuse the `eval/full_tost` convention).
- **No fork.** Do not copy `v54/gine_classifier_v38.py`. Import the encoder and attach the head in a new `rank/` package.
- **Do not run Spectector on the Mac head node.** Real labelling is cluster-only (Apptainer `.sif`); everything else is TDD-able locally with injected/synthetic labels.
- **venv:** `source .venv/bin/activate`; tests run with `python3 -m pytest -p no:cacheprovider`.

## Review Focus

- **Empty / single-class label set.** The first RL loop has no leaks yet, or all candidates share one signal value; `train_ranker` must not divide-by-zero on a constant target or crash on <2 training rows. Covered in Task 3.
- **Unbuildable candidate graphs.** A generated gadget too short / with no PDG nodes must score as −inf acquisition (never selected), not crash or misalign the batch. Covered in Task 5.
- **Degenerate uncertainty.** MC-dropout with a model that has no dropout layers (or dropout=0) returns σ=0 for every candidate; UCB must then fall back to greedy-μ, not NaN. Covered in Task 4.
- **Ranker scored on near-duplicates of its training set.** The efficiency curve must use group-holdout; a record-split number silently inflates precision@K. Covered in Task 6.
- **All-leak or all-safe eval batch.** precision@K and the efficiency curve are undefined when the held-out batch has no positives (or all positives); report NaN with an explicit note rather than a misleading 1.0. Covered in Task 6.

---

## File Structure

- `rank/__init__.py` — package marker.
- `rank/encoder_hook.py` — load a frozen encoder from a checkpoint and expose its `combined` fusion vector per batch (forward pre-hook on `model.classifier`). Consumed by training and scoring.
- `rank/regressor.py` — `LeakRanker`: frozen encoder + regression head; `fit`, `predict`, `predict_mc` (MC-dropout μ/σ).
- `rank/acquisition.py` — `ucb(mu, sigma, beta)` and `select_topk`.
- `rank/data.py` — build `(gadget_record, leak_signal)` training rows from RL sample logs + oracle labels; group-holdout split.
- `rank/train_ranker.py` — CLI: train on labelled rows, write checkpoint + metrics.
- `rank/efficiency.py` — the headline eval: confirmed-leaks-per-oracle-call for ranker-UCB vs random vs greedy-μ on a held-out labelled set.
- `gen/rl_from_oracle.py` — MODIFY: log `result.signal` per sample (the regression target; currently dropped).
- `gen/relabel_signal.sbatch` — cluster job: re-run the oracle on existing RL `samples.jsonl` to attach `leak_signal` (produces real training data).
- `tests/rank/` — one test module per `rank/` file.

---

### Task 1: Log the leak signal (the regression target)

The RL loop records `reward` and `verdict` per sample but drops the oracle's continuous `signal` (`oracle/validators/base.py::ValidationResult.signal`, = Spectector `trace_length`). The ranker regresses that signal, so it must be in the sample log. This task adds it and backfills existing logs on the cluster.

**Files:**
- Modify: `gen/rl_from_oracle.py` (the `_append_sample_record` call inside `rejection_sample_finetune`, ~line 249)
- Create: `gen/relabel_signal.sbatch`
- Test: `tests/gen/test_rl_signal_logged.py`

**Interfaces:**
- Produces: each line of a `samples.jsonl` now carries `"signal": float` (0.0 for non-leak). `rank/data.py` consumes it.

- [ ] **Step 1: Write the failing test**

```python
# tests/gen/test_rl_signal_logged.py
import json, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
from gen.rl_from_oracle import rejection_sample_finetune
from oracle.validators.base import ValidationResult, LEAK

class StubModel:
    vocab = type("V", (), {"cls_id": {}})()
    def sample(self, cls, arch, **kw): return ["movl <mem> <reg>", "ret"]

class StubValidator:
    def validate(self, g):
        return ValidationResult("stub", g["gadget_id"], g["vuln_class"], LEAK, 7.5, {})

def test_signal_is_logged(tmp_path):
    out = tmp_path / "s.jsonl"
    rejection_sample_finetune(
        StubModel(), "SPECTRE_V1", "x86_64", n_rounds=1, k_per_round=2,
        realize_fn=lambda t, c, a, r, i: {"gadget_id": f"g{i}", "vuln_class": c,
                                          "_realized_asm": ["movl (%rax), %ebx", "ret"]},
        validator=StubValidator(), finetune_fn=lambda *a, **k: None,
        samples_out=out)
    rows = [json.loads(l) for l in open(out)]
    assert rows and all("signal" in r for r in rows)
    assert rows[0]["signal"] == 7.5
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/gen/test_rl_signal_logged.py -v -p no:cacheprovider`
Expected: FAIL — `KeyError: 'signal'` / assert on missing key.

- [ ] **Step 3: Add the field**

In `gen/rl_from_oracle.py`, in the `_append_sample_record({...})` dict inside `rejection_sample_finetune`, add one line next to `"reward": gadget["_reward"],`:

```python
                    "signal": float(result.signal),
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/gen/test_rl_signal_logged.py -v -p no:cacheprovider`
Expected: PASS

- [ ] **Step 5: Backfill script for existing logs (cluster)**

```bash
# gen/relabel_signal.sbatch
#!/bin/bash
#SBATCH --job-name=relabel_signal
#SBATCH --partition=Teaching
#SBATCH --time=08:00:00
#SBATCH --mem=8000
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
# For every existing RL samples.jsonl, re-run the Spectector oracle on each
# realized_asm gadget and write samples_signal.jsonl with the "signal" field.
# (Spectector via Apptainer; .sif on shared storage — see oracle/apptainer/.)
for d in gen/rl_ms/*/; do
  python3 gen/relabel_signal.py --samples "$d/samples.jsonl" \
      --out "$d/samples_signal.jsonl" || echo "[relabel] skipped $d"
done
```

Note: `gen/relabel_signal.py` reuses `oracle/validators/SpectectorValidator`; writing it is folded here because it is a thin loop (load samples → `validator.validate` on each realized gadget → copy row + `signal`). It is cluster-run, not unit-tested against real Spectector; the field-shape contract is already covered by Step 1.

- [ ] **Step 6: Commit**

```bash
git add gen/rl_from_oracle.py gen/relabel_signal.sbatch gen/relabel_signal.py tests/gen/test_rl_signal_logged.py
git commit -m "gen: log oracle leak_signal per RL sample (ranker regression target)"
```

---

### Task 2: Frozen-encoder fusion hook

Expose the encoder's post-fusion `combined` vector without forking the model. `GINEClassifier.forward` does not return `combined`, but it is exactly the input to `model.classifier`, so a forward pre-hook on `model.classifier` captures it.

**Files:**
- Create: `rank/__init__.py` (empty), `rank/encoder_hook.py`
- Test: `tests/rank/test_encoder_hook.py`

**Interfaces:**
- Consumes: a checkpoint path (default `models/locked_classifier.json`'s first member) via `eval/gine_riscv_holdout_eval.load_checkpoint(path, device)`.
- Produces: `EncoderHook(ckpt_path, device)` with `.combined_dim: int`, `.make_ds(records)->dataset`, `.embed(records, batch_size=64, mc_passes=1)->np.ndarray [N, combined_dim]` (mean over PDG-buildable records; raises on misalignment), and `.train()/.eval()` toggling dropout for MC passes.

- [ ] **Step 1: Write the failing test**

```python
# tests/rank/test_encoder_hook.py
import json, sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import pytest
MAN = ROOT / "models" / "locked_classifier.json"
pytestmark = pytest.mark.skipif(not MAN.exists(), reason="no locked classifier")

def _recs(n=4):
    rv = [json.loads(l) for l in open(ROOT / "spec/data/riscv_loio_corpus_v2.jsonl")]
    return [r for r in rv if len(r["sequence"]) > 20][:n]

def test_embed_shape_and_determinism():
    from rank.encoder_hook import EncoderHook
    h = EncoderHook(device="cpu")
    recs = _recs()
    emb = h.embed(recs)
    assert emb.shape == (len(recs), h.combined_dim)
    emb2 = h.embed(recs)                 # eval mode => deterministic
    assert np.allclose(emb, emb2, atol=1e-5)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/rank/test_encoder_hook.py -v -p no:cacheprovider`
Expected: FAIL — `ModuleNotFoundError: rank.encoder_hook`.

- [ ] **Step 3: Implement the hook**

```python
# rank/encoder_hook.py
from __future__ import annotations
import json, sys
from pathlib import Path
import numpy as np
import torch

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "eval"))


def _default_ckpt() -> str:
    man = json.loads((ROOT / "models" / "locked_classifier.json").read_text())
    return str(ROOT / man["checkpoints"][0]["path"])


class EncoderHook:
    """Frozen GINE encoder exposing the post-fusion `combined` vector via a
    forward pre-hook on model.classifier (combined is exactly its input)."""

    def __init__(self, ckpt_path: str | None = None, device: str = "cpu"):
        import gine_riscv_holdout_eval as G
        self._G = G
        self.device = torch.device(device)
        L = G.load_checkpoint(Path(ckpt_path or _default_ckpt()), self.device)
        self.model, self.make_ds = L["model"], L["make_ds"]
        self.combined_dim = int(self.model.combined_dim)
        self._buf = {}
        self.model.classifier.register_forward_pre_hook(
            lambda m, args: self._buf.__setitem__("c", args[0].detach()))
        for p in self.model.parameters():
            p.requires_grad_(False)

    def train(self):  # enable dropout for MC passes
        self.model.train()

    def eval(self):
        self.model.eval()

    @torch.no_grad()
    def embed(self, records: list, batch_size: int = 64) -> np.ndarray:
        recs = [{**r, "label": r.get("label", "BENIGN")} for r in records]
        ds = self.make_ds(recs)
        if len(ds) != len(recs):
            raise RuntimeError(f"{len(recs) - len(ds)} records failed PDG build")
        loader = torch.utils.data.DataLoader(
            ds, batch_size=batch_size, shuffle=False,
            collate_fn=self._G.collate_fn, num_workers=0)
        out = []
        for b in loader:
            self.model(b["node_features"].to(self.device), b["edge_index"].to(self.device),
                       b["edge_type"].to(self.device), b["node_mask"].to(self.device),
                       b["handcrafted"].to(self.device), b["global_features"].to(self.device),
                       b["arch_id"].to(self.device),
                       edge_mask=b["edge_mask"].to(self.device),
                       edge_weight=b["edge_weight"].to(self.device))
            out.append(self._buf["c"].cpu().numpy())
        return np.concatenate(out)
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/rank/test_encoder_hook.py -v -p no:cacheprovider`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add rank/__init__.py rank/encoder_hook.py tests/rank/
git commit -m "rank: frozen-encoder fusion-vector hook (no model fork)"
```

---

### Task 3: LeakRanker — regression head + fit/predict

**Files:**
- Create: `rank/regressor.py`
- Test: `tests/rank/test_regressor.py`

**Interfaces:**
- Consumes: `EncoderHook` (Task 2); training pairs `(records, signals: np.ndarray)`.
- Produces: `LeakRanker(hook)` with `.fit(records, signals, epochs=100)`, `.predict(records)->np.ndarray [N]`, `.predict_mc(records, passes=20)->(mu [N], sigma [N])`, `.save(path)/.load(path, hook)`.

- [ ] **Step 1: Write the failing test**

```python
# tests/rank/test_regressor.py
import sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import pytest
pytestmark = pytest.mark.skipif(
    not (ROOT / "models" / "locked_classifier.json").exists(), reason="no locked classifier")

class FakeHook:
    combined_dim = 8
    def __init__(self): self._rng = np.random.RandomState(0)
    def train(self): pass
    def eval(self): pass
    def embed(self, records, batch_size=64):
        # deterministic embedding keyed on record id; signal = embed[:,0]*5
        return np.stack([r["_vec"] for r in records])

def _data(n=64):
    rng = np.random.RandomState(1)
    recs = [{"_vec": rng.randn(8).astype("float32"), "sequence": ["x"], "arch": "x86_64"} for _ in range(n)]
    sig = np.array([r["_vec"][0] * 5.0 for r in recs], dtype="float32")
    return recs, sig

def test_fit_predict_learns_linear_signal():
    from rank.regressor import LeakRanker
    recs, sig = _data()
    r = LeakRanker(FakeHook())
    r.fit(recs, sig, epochs=300)
    pred = r.predict(recs)
    # correlation with truth should be strong on this trivial linear target
    assert np.corrcoef(pred, sig)[0, 1] > 0.9

def test_constant_target_does_not_crash():
    from rank.regressor import LeakRanker
    recs, _ = _data(16)
    r = LeakRanker(FakeHook())
    r.fit(recs, np.zeros(16, dtype="float32"), epochs=20)   # all-safe round
    assert r.predict(recs).shape == (16,)

def test_mc_gives_non_negative_sigma():
    from rank.regressor import LeakRanker
    recs, sig = _data(16)
    r = LeakRanker(FakeHook())
    r.fit(recs, sig, epochs=50)
    mu, sigma = r.predict_mc(recs, passes=10)
    assert mu.shape == sigma.shape == (16,)
    assert (sigma >= 0).all()
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/rank/test_regressor.py -v -p no:cacheprovider`
Expected: FAIL — `ModuleNotFoundError: rank.regressor`.

- [ ] **Step 3: Implement the ranker**

```python
# rank/regressor.py
from __future__ import annotations
import numpy as np
import torch
import torch.nn as nn


class LeakRanker:
    """Frozen encoder (hook) + a small regression head predicting leak_signal.

    Targets are standardised (z-scored) internally so a constant or
    tiny-range target cannot explode the loss; predict() returns to raw
    signal units. MC-dropout keeps the head's dropout on at inference for
    uncertainty.
    """

    def __init__(self, hook, hidden: int = 128, dropout: float = 0.3, device: str = "cpu"):
        self.hook = hook
        self.device = torch.device(device)
        self.head = nn.Sequential(
            nn.Linear(hook.combined_dim, hidden), nn.BatchNorm1d(hidden),
            nn.ReLU(), nn.Dropout(dropout), nn.Linear(hidden, 1),
        ).to(self.device)
        self._mu = 0.0
        self._sd = 1.0

    def _X(self, records):
        return torch.tensor(self.hook.embed(records), dtype=torch.float32, device=self.device)

    def fit(self, records, signals, epochs: int = 100, lr: float = 1e-3):
        signals = np.asarray(signals, dtype="float32")
        self._mu, self._sd = float(signals.mean()), float(signals.std() or 1.0)
        y = torch.tensor((signals - self._mu) / self._sd, device=self.device).unsqueeze(1)
        X = self._X(records)
        opt = torch.optim.Adam(self.head.parameters(), lr=lr, weight_decay=1e-4)
        loss_fn = nn.SmoothL1Loss()
        self.head.train()
        bs = max(2, min(32, len(records)))          # BatchNorm needs >=2
        for _ in range(epochs):
            perm = torch.randperm(len(records))
            for i in range(0, len(records) - 1, bs):
                idx = perm[i:i + bs]
                if len(idx) < 2:
                    continue
                opt.zero_grad()
                loss_fn(self.head(X[idx]), y[idx]).backward()
                opt.step()
        return self

    @torch.no_grad()
    def predict(self, records) -> np.ndarray:
        self.head.eval()
        z = self.head(self._X(records)).squeeze(1).cpu().numpy()
        return z * self._sd + self._mu

    @torch.no_grad()
    def predict_mc(self, records, passes: int = 20):
        self.head.train()                           # keep dropout on
        X = self._X(records)
        preds = np.stack([self.head(X).squeeze(1).cpu().numpy() for _ in range(passes)])
        preds = preds * self._sd + self._mu
        return preds.mean(0), preds.std(0)

    def save(self, path):
        torch.save({"state": self.head.state_dict(), "mu": self._mu, "sd": self._sd}, path)

    def load(self, path, hook=None):
        c = torch.load(path, map_location=self.device, weights_only=False)
        self.head.load_state_dict(c["state"]); self._mu, self._sd = c["mu"], c["sd"]
        return self
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/rank/test_regressor.py -v -p no:cacheprovider`
Expected: PASS (3 tests)

- [ ] **Step 5: Commit**

```bash
git add rank/regressor.py tests/rank/test_regressor.py
git commit -m "rank: LeakRanker regression head (fit/predict/MC-dropout)"
```

---

### Task 4: UCB acquisition

**Files:**
- Create: `rank/acquisition.py`
- Test: `tests/rank/test_acquisition.py`

**Interfaces:**
- Produces: `ucb(mu, sigma, beta=1.0)->np.ndarray`; `select_topk(mu, sigma, k, beta=1.0, mask=None)->list[int]` (indices into the candidate array; `mask` False entries never selected).

- [ ] **Step 1: Write the failing test**

```python
# tests/rank/test_acquisition.py
import numpy as np, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from rank.acquisition import ucb, select_topk

def test_ucb_rewards_uncertainty():
    mu = np.array([1.0, 1.0]); sigma = np.array([0.0, 2.0])
    a = ucb(mu, sigma, beta=1.0)
    assert a[1] > a[0]

def test_zero_sigma_falls_back_to_greedy_mu():
    mu = np.array([0.1, 0.9, 0.5]); sigma = np.zeros(3)
    assert select_topk(mu, sigma, k=1, beta=5.0) == [1]

def test_mask_excludes_candidates():
    mu = np.array([9.0, 0.1]); sigma = np.zeros(2)
    mask = np.array([False, True])
    assert select_topk(mu, sigma, k=1, mask=mask) == [1]
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/rank/test_acquisition.py -v -p no:cacheprovider`
Expected: FAIL — `ModuleNotFoundError`.

- [ ] **Step 3: Implement**

```python
# rank/acquisition.py
import numpy as np

def ucb(mu, sigma, beta: float = 1.0):
    return np.asarray(mu, float) + beta * np.asarray(sigma, float)

def select_topk(mu, sigma, k: int, beta: float = 1.0, mask=None):
    a = ucb(mu, sigma, beta)
    if mask is not None:
        a = np.where(np.asarray(mask, bool), a, -np.inf)
    k = min(k, int(np.isfinite(a).sum()))
    if k <= 0:
        return []
    return np.argsort(a)[::-1][:k].tolist()
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/rank/test_acquisition.py -v -p no:cacheprovider`
Expected: PASS (3 tests)

- [ ] **Step 5: Commit**

```bash
git add rank/acquisition.py tests/rank/test_acquisition.py
git commit -m "rank: UCB acquisition + top-k selection"
```

---

### Task 5: Data assembly + group-holdout split

**Files:**
- Create: `rank/data.py`
- Test: `tests/rank/test_data.py`

**Interfaces:**
- Consumes: `samples_signal.jsonl` files (Task 1), `eval/splits.py` / `eval/group_stats.group_of`.
- Produces: `load_rows(paths)->list[dict]` (each: `sequence` [=realized_asm], `arch`, `signal`, `verdict`, `group`); `group_split(rows, frac=0.25, seed=0)->(train, test)` with disjoint `group` sets; `buildable(rows, hook)->(rows, mask)` marking records whose PDG builds.

- [ ] **Step 1: Write the failing test**

```python
# tests/rank/test_data.py
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from rank.data import load_rows, group_split

def test_load_and_group_split_disjoint(tmp_path):
    f = tmp_path / "samples_signal.jsonl"
    with open(f, "w") as fh:
        for i in range(40):
            fh.write(json.dumps({
                "realized_asm": ["movl (%rax), %ebx", "ret"],
                "verdict": "leak" if i % 2 else "unrunnable",
                "signal": float(i % 2) * 3.0,
                "gadget_id": f"rl_SPECTRE_V1_x86_64_r0_s{i}_hash",
                "class": "SPECTRE_V1"}) + "\n")
    rows = load_rows([str(f)])
    assert rows and all("signal" in r and r["sequence"] and r["arch"] == "x86_64" for r in rows)
    tr, te = group_split(rows, frac=0.25, seed=0)
    assert {r["group"] for r in tr}.isdisjoint({r["group"] for r in te})
    assert len(tr) + len(te) == len(rows)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/rank/test_data.py -v -p no:cacheprovider`
Expected: FAIL — `ModuleNotFoundError`.

- [ ] **Step 3: Implement**

```python
# rank/data.py
from __future__ import annotations
import json, sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "eval"))
from group_stats import group_of  # noqa: E402


def load_rows(paths, arch: str = "x86_64") -> list:
    rows = []
    for p in paths:
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            asm = r.get("realized_asm")
            if not asm or "signal" not in r:
                continue
            rows.append({"sequence": asm, "arch": arch, "signal": float(r["signal"]),
                         "verdict": r.get("verdict"),
                         "group": group_of({"group": r.get("gadget_id", "")}),
                         "gadget_id": r.get("gadget_id")})
    return rows


def group_split(rows, frac: float = 0.25, seed: int = 0):
    groups = sorted({r["group"] for r in rows})
    rng = np.random.RandomState(seed); rng.shuffle(groups)
    n_test = max(1, int(round(len(groups) * frac)))
    test_g = set(groups[:n_test])
    tr = [r for r in rows if r["group"] not in test_g]
    te = [r for r in rows if r["group"] in test_g]
    return tr, te


def buildable(rows, hook):
    """Mask of rows whose PDG builds (unbuildable -> never selectable)."""
    mask = []
    for r in rows:
        try:
            hook.embed([r]); mask.append(True)
        except Exception:
            mask.append(False)
    return rows, np.array(mask, bool)
```

Note: `group_of` keys on the `gadget_id`; RL ids look like `rl_SPECTRE_V1_x86_64_r0_s12_<hash>`, so round/seed variants of one structure share a family prefix — adjust `group_of`'s regexes only if a spot-check shows per-sample uniqueness (then every row is its own group and the split degrades to record-split; flag it loudly in Task 6's report).

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/rank/test_data.py -v -p no:cacheprovider`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add rank/data.py tests/rank/test_data.py
git commit -m "rank: data assembly + group-holdout split for ranker training"
```

---

### Task 6: Efficiency eval — the headline metric

Confirmed-leaks-per-oracle-call for ranker-UCB vs random vs greedy-μ on a held-out labelled set. This is the whole reason the ranker exists.

**Files:**
- Create: `rank/efficiency.py`
- Test: `tests/rank/test_efficiency.py`

**Interfaces:**
- Consumes: held-out rows with `signal`/`verdict`, a fitted `LeakRanker`.
- Produces: `efficiency_curve(ranker, test_rows, beta=1.0)->dict` with `precision_at_k` (list), `leaks_vs_calls` (ranker/random/greedy arrays), `auc_gain_over_random` (float), `n_pos`, `n` — and NaN metrics with a `note` when the held-out batch has 0 or all positives.

- [ ] **Step 1: Write the failing test**

```python
# tests/rank/test_efficiency.py
import numpy as np, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from rank.efficiency import efficiency_curve

class PerfectRanker:
    # predicts the true signal => ranking is optimal
    def predict_mc(self, rows, passes=1):
        s = np.array([r["signal"] for r in rows]); return s, np.zeros_like(s)

class BlindRanker:
    def predict_mc(self, rows, passes=1):
        n = len(rows); return np.zeros(n), np.zeros(n)

def _rows(n=40, n_pos=10):
    rows = [{"signal": 0.0, "verdict": "unrunnable"} for _ in range(n)]
    for i in range(n_pos):
        rows[i] = {"signal": 5.0 + i, "verdict": "leak"}
    return rows

def test_perfect_ranker_beats_random():
    out = efficiency_curve(PerfectRanker(), _rows(), beta=0.0)
    assert out["auc_gain_over_random"] > 0
    assert out["precision_at_k"][0] == 1.0          # first pick is a leak

def test_all_negative_batch_reports_nan():
    out = efficiency_curve(BlindRanker(), _rows(n=20, n_pos=0), beta=0.0)
    assert out["n_pos"] == 0 and np.isnan(out["auc_gain_over_random"])
    assert "note" in out
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/rank/test_efficiency.py -v -p no:cacheprovider`
Expected: FAIL — `ModuleNotFoundError`.

- [ ] **Step 3: Implement**

```python
# rank/efficiency.py
from __future__ import annotations
import numpy as np
from rank.acquisition import ucb


def _is_leak(r):
    return str(r.get("verdict", "")).lower() == "leak"


def _leaks_vs_calls(order, leak):
    return np.cumsum(leak[order])


def efficiency_curve(ranker, test_rows, beta: float = 1.0, seed: int = 0) -> dict:
    leak = np.array([_is_leak(r) for r in test_rows], bool)
    n, n_pos = len(test_rows), int(leak.sum())
    base = {"n": n, "n_pos": n_pos}
    if n_pos == 0 or n_pos == n:
        return {**base, "precision_at_k": [], "auc_gain_over_random": float("nan"),
                "note": "held-out batch has 0 or all positives — efficiency undefined"}
    mu, sigma = ranker.predict_mc(test_rows)
    ranker_order = np.argsort(ucb(mu, sigma, beta))[::-1]
    greedy_order = np.argsort(mu)[::-1]
    rng = np.random.RandomState(seed)
    rand = np.mean([_leaks_vs_calls(rng.permutation(n), leak) for _ in range(200)], axis=0)
    r_curve = _leaks_vs_calls(ranker_order, leak)
    prec = [r_curve[k] / (k + 1) for k in range(n)]
    return {**base,
            "precision_at_k": prec,
            "leaks_vs_calls": {"ranker": r_curve.tolist(), "random": rand.tolist(),
                               "greedy": _leaks_vs_calls(greedy_order, leak).tolist()},
            "auc_gain_over_random": float((r_curve - rand).sum())}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/rank/test_efficiency.py -v -p no:cacheprovider`
Expected: PASS (2 tests)

- [ ] **Step 5: Commit**

```bash
git add rank/efficiency.py tests/rank/test_efficiency.py
git commit -m "rank: confirmed-leaks-per-oracle-call efficiency eval"
```

---

### Task 7: Training CLI + end-to-end smoke (synthetic labels)

Wire Tasks 2-6 into one CLI, and prove the whole path runs end-to-end on synthetic labels so it is ready for real cluster labels without a code change.

**Files:**
- Create: `rank/train_ranker.py`
- Test: `tests/rank/test_train_ranker_smoke.py`

**Interfaces:**
- Consumes: all of `rank/*`.
- Produces: CLI `python3 rank/train_ranker.py --samples <glob> [--seeds 42 1 7 13 21] [--beta 1.0] --out rank/ranker_eval.md`; writes a per-seed efficiency table (mean ± 95% CI) and a ranker checkpoint.

- [ ] **Step 1: Write the failing smoke test**

```python
# tests/rank/test_train_ranker_smoke.py
import json, sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import pytest
pytestmark = pytest.mark.skipif(
    not (ROOT / "models" / "locked_classifier.json").exists(), reason="no locked classifier")

def test_end_to_end_on_synthetic_labels(tmp_path):
    # real riscv records as stand-in gadgets; synthetic signal = graph is V1-ish
    rv = [json.loads(l) for l in open(ROOT / "spec/data/riscv_loio_corpus_v2.jsonl")]
    rv = [r for r in rv if len(r["sequence"]) > 20][:40]
    f = tmp_path / "samples_signal.jsonl"
    with open(f, "w") as fh:
        for i, r in enumerate(rv):
            leak = r["label"] != "BENIGN"
            fh.write(json.dumps({"realized_asm": r["sequence"],
                                 "verdict": "leak" if leak else "unrunnable",
                                 "signal": 5.0 if leak else 0.0,
                                 "gadget_id": f"g_{r['label']}_{i}"}) + "\n")
    from rank.train_ranker import run
    out = run(samples=[str(f)], seeds=[0, 1], out=str(tmp_path / "r.md"), arch="riscv64")
    assert "mean_auc_gain_over_random" in out
    assert (tmp_path / "r.md").exists()
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python3 -m pytest tests/rank/test_train_ranker_smoke.py -v -p no:cacheprovider`
Expected: FAIL — `ModuleNotFoundError: rank.train_ranker`.

- [ ] **Step 3: Implement the CLI**

```python
# rank/train_ranker.py
from __future__ import annotations
import argparse, glob, json
from pathlib import Path
import numpy as np
from scipy import stats
from rank.encoder_hook import EncoderHook
from rank.regressor import LeakRanker
from rank.data import load_rows, group_split
from rank.efficiency import efficiency_curve


def run(samples, seeds=(42, 1, 7, 13, 21), beta=1.0, out=None, arch="x86_64", device="cpu"):
    paths = sorted(p for g in samples for p in glob.glob(g))
    rows = load_rows(paths, arch=arch)
    if not rows:
        raise SystemExit(f"no signal-labelled rows in {paths}")
    hook = EncoderHook(device=device)
    gains = []
    for s in seeds:
        tr, te = group_split(rows, frac=0.25, seed=s)
        r = LeakRanker(hook, device=device)
        r.fit(tr, np.array([x["signal"] for x in tr]))
        gains.append(efficiency_curve(r, te, beta=beta, seed=s)["auc_gain_over_random"])
    gains = np.array([g for g in gains if g == g])     # drop NaN (degenerate splits)
    mean = float(gains.mean()) if len(gains) else float("nan")
    ci = (float(gains.std(ddof=1) / np.sqrt(len(gains)) * stats.t.ppf(0.975, len(gains) - 1))
          if len(gains) > 1 else float("nan"))
    res = {"n_rows": len(rows), "n_groups": len({x["group"] for x in rows}),
           "seeds_scored": len(gains), "mean_auc_gain_over_random": mean, "ci95": ci,
           "arch": arch, "caveat": "x86_64 SPECTRE_V1 Spectector signal; surrogate, not ground truth"}
    if out:
        Path(out).write_text(
            "# Leak-signal ranker — efficiency vs random\n\n"
            + "\n".join(f"- {k}: {v}" for k, v in res.items()) + "\n")
    print(json.dumps(res, indent=1))
    return res


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", nargs="+", default=["gen/rl_ms/*/samples_signal.jsonl"])
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--beta", type=float, default=1.0)
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--out", default="rank/ranker_eval.md")
    a = ap.parse_args(argv)
    run(a.samples, a.seeds, a.beta, a.out, a.arch)


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python3 -m pytest tests/rank/test_train_ranker_smoke.py -v -p no:cacheprovider`
Expected: PASS

- [ ] **Step 5: Full-suite regression check**

Run: `python3 -m pytest tests/rank tests/gen/test_rl_signal_logged.py -p no:cacheprovider`
Expected: all PASS. Then the repo suite is unaffected: `python3 -m pytest tests -q -p no:cacheprovider` (the pre-existing `test_idiomatic_riscv_independence` failure is the only known red; nothing new).

- [ ] **Step 6: Commit**

```bash
git add rank/train_ranker.py tests/rank/test_train_ranker_smoke.py
git commit -m "rank: training CLI + end-to-end efficiency eval (multi-seed, group-holdout)"
```

---

## Real-data run (after the plan's code is merged)

The code above is fully tested on synthetic/stub labels. The real result needs real labels, which are cluster-only:

1. Push; on the cluster `git pull`.
2. `sbatch gen/relabel_signal.sbatch` → `gen/rl_ms/*/samples_signal.jsonl` (real Spectector signal on the 1,987 existing x86 SPECTRE_V1 gadgets).
3. `python3 rank/train_ranker.py --samples 'gen/rl_ms/*/samples_signal.jsonl' --out rank/ranker_eval.md`.
4. Bar to clear (from the spec): `mean_auc_gain_over_random` strictly > 0 on the group-holdout split, multi-seed CI not crossing 0. If it clears, the ranker is ready to drop into the generation loop as the filter stage (`gen/rl_from_oracle.py`: score `k_gen` candidates, send only top-K to the oracle); if it does not, report it honestly — the generator's own conditioning already orders candidates and a failed ranker is a real negative.

## Follow-on (separate plan, not this one)

The original description's final clause — "discover the **smallest** instruction sequences that trigger leaks" — is a distinct subsystem (delta-debloat a confirmed gadget, re-verify the leak survives each removal). It depends on this ranker + oracle being cheap to call and deserves its own plan: `docs/superpowers/plans/<date>-gadget-minimisation.md`.
