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
