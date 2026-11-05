#!/usr/bin/env python3
"""stage45_attrib.py — what inputs drive the MDS-vs-L1TF decision on real gadgets.

Per arm (shared_gine, b1), per seed, on the real shared MDS/L1TF gadgets that
arm never trained on:
  * integrated gradients (32 steps, zero baseline) of the MDS-L1TF logit margin
    w.r.t. node features -> per-node attribution -> aggregated per opcode
    (share of |attr| relative to the opcode's share of nodes);
  * readout attention weights aggregated the same way;
  * IG of the margin w.r.t. the 58 handcrafted inputs (baseline = synthetic
    v54_test mean) -> top features;
  * gradient x (combined - synthetic mean) split over the graph / feat / glob /
    arch slices of `combined` (how much each branch moves the margin).
Called from stage45_analyze.py; also runnable alone.
"""
from __future__ import annotations
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT))

import numpy as np  # noqa: E402
import torch  # noqa: E402
from torch.utils.data import DataLoader  # noqa: E402

import score_hwlabel_variants as S  # noqa: E402,F401
from score_hwlabel_variants import load_run_config, load_jsonl, build_model, EXPECTED_CLASSES  # noqa: E402
from train_gine_v38 import GINEDatasetV47, collate_fn  # noqa: E402
from strip_boilerplate import strip_boilerplate  # noqa: E402
from inline_features import get_feature_names  # noqa: E402
from eval.shared_config import seed_group  # noqa: E402

DEV = torch.device("cpu")   # gradients on CPU: small models, deterministic
CO = ROOT / "eval" / "cluster_out"
SEEDS = (1, 7, 13, 21, 42)
RUNS = {"shared_gine": "shared_gine_s{}", "b1": "rv_embed_specfix_s{}"}
CID = {c: i for i, c in enumerate(EXPECTED_CLASSES)}


def opcode(ins):
    t = ins.strip().split()
    if t and t[0] in ("lock", "rep", "repe", "repne") and len(t) > 1:
        return t[0] + " " + t[1].lower()
    return t[0].lower() if t else ""


def margin(logits):
    return logits[:, CID["MDS"]] - logits[:, CID["L1TF"]]


def run(meta=None, n_steps=32):
    label_to_id = {c: i for i, c in enumerate(EXPECTED_CLASSES)}
    fn = get_feature_names()
    _, _, ds_kw, _, _ = load_run_config(CO / "shared_gine_s1/gine_metrics.json")
    sets = {}
    for name in ("real_train", "real_heldout"):
        p = ROOT / f"eval/data/revizor_shared_{'train' if name == 'real_train' else 'heldout_variants'}.jsonl"
        recs = [r for r in load_jsonl(p) if r["label"] in ("MDS", "L1TF")]
        for r in recs:
            r.setdefault("arch", "x86_64"); r["source_file"] = r.get("src_path")
        sets[name] = (recs, GINEDatasetV47(recs, label_to_id, fn, **ds_kw))
    syn = [r for r in load_jsonl(ROOT / "v54/data/v54_test.jsonl") if r["label"] in label_to_id]
    syn_ds = GINEDatasetV47(syn, label_to_id, fn, **ds_kw)
    hc_mean = torch.from_numpy(np.stack([d["handcrafted"] for d in syn_ds.data]).mean(0)).float()
    builder = sets["real_heldout"][1].spec_builders["x86_64"]
    node_ops = {}
    for name, (recs, ds) in sets.items():
        node_ops[name] = []
        for r, d in zip(recs, ds.data):
            pdg = builder.build(strip_boilerplate(r["sequence"]))
            ins = [n.raw_instruction for n in pdg.nodes][: int(d["node_mask"].sum())]
            assert len(ins) == int(d["node_mask"].sum())
            node_ops[name].append(ins)

    out = {}
    for arm, pat in RUNS.items():
        names = ("real_heldout",) if arm == "shared_gine" else ("real_train", "real_heldout")
        attr_op, attn_op, cnt_op = Counter(), Counter(), Counter()
        hc_ig = []; branch = defaultdict(list); top_nodes = []
        for s in SEEDS:
            run_dir = CO / pat.format(s)
            _, model_cfg, _, _, _ = load_run_config(run_dir / "gine_metrics.json")
            ck = torch.load(run_dir / "gine_best.pt", map_location=DEV, weights_only=False)
            model = build_model(len(EXPECTED_CLASSES), len(fn), syn_ds.node_feature_dim, model_cfg).to(DEV)
            model.load_state_dict(ck["model_state_dict"] if "model_state_dict" in ck else ck); model.eval()
            # synthetic mean of combined (for grad x delta on branches)
            from stage45_extract import anatomy_forward
            with torch.no_grad():
                cs = []
                for b in DataLoader(syn_ds, batch_size=128, collate_fn=collate_fn):
                    cs.append(anatomy_forward(model, b)["combined"])
                c_mean = torch.cat(cs).mean(0)
            for name in names:
                recs, ds = sets[name]
                for b_i, b in enumerate(DataLoader(ds, batch_size=len(ds), collate_fn=collate_fn)):
                    nf = b["node_features"]
                    def f(nfx, hcx):
                        return model(nfx, b["edge_index"], b["edge_type"], b["node_mask"], hcx,
                                     b["global_features"], b["arch_id"], edge_mask=b["edge_mask"],
                                     edge_weight=b["edge_weight"])
                    # IG over node features
                    tot = torch.zeros_like(nf)
                    for a in torch.linspace(1.0 / n_steps, 1, n_steps):
                        x = (nf * a).requires_grad_(True)
                        g, = torch.autograd.grad(margin(f(x, b["handcrafted"])).sum(), x)
                        tot += g
                    ig_nodes = (nf * tot / n_steps).sum(-1).detach().numpy()     # [B, N]
                    # IG over handcrafted
                    hc = b["handcrafted"]; tot = torch.zeros_like(hc)
                    for a in torch.linspace(1.0 / n_steps, 1, n_steps):
                        x = (hc_mean + a * (hc - hc_mean)).requires_grad_(True)
                        g, = torch.autograd.grad(margin(f(nf, x)).sum(), x)
                        tot += g
                    hc_ig.append(((hc - hc_mean) * tot / n_steps).detach().numpy())
                    # attention + combined
                    with torch.no_grad():
                        o = anatomy_forward(model, b)
                    # grad x delta on combined slices
                    cmb = o["combined"].clone().requires_grad_(True)
                    g, = torch.autograd.grad(margin(model.classifier(cmb)).sum(), cmb)
                    gd = (g * (cmb - c_mean)).detach().numpy()
                    for k, sl in (("graph", slice(0, 256)), ("feat", slice(256, 512)),
                                  ("glob", slice(512, 544)), ("arch", slice(544, 552))):
                        branch[k].append(gd[:, sl].sum(1))
                    # per-node readout attention (recompute from the layer stack)
                    attn = _attn(model, b)
                    for k, r in enumerate(recs):
                        ops = [opcode(x) for x in node_ops[name][k]]
                        n = len(ops); ia = np.abs(ig_nodes[k, :n]); ia = ia / max(ia.sum(), 1e-12)
                        at = attn[k, :n]
                        for j, op in enumerate(ops):
                            attr_op[op] += ia[j]; attn_op[op] += at[j]; cnt_op[op] += 1.0 / n
                        if s == 1 and len(top_nodes) < 6:
                            j = int(np.abs(ig_nodes[k, :n]).argmax()); ja = int(at.argmax())
                            top_nodes.append(dict(label=r["label"], group=seed_group(r), n_nodes=n,
                                                  margin=float(margin(o["logits"])[k]),
                                                  top_ig=node_ops[name][k][j], top_ig_share=float(ia[j]),
                                                  top_attn=node_ops[name][k][ja], top_attn_w=float(at[ja])))
        nrec = sum(cnt_op.values())
        ratio = {op: dict(ig_share=float(attr_op[op] / nrec), attn_share=float(attn_op[op] / nrec),
                          node_share=float(cnt_op[op] / nrec),
                          ig_lift=float(attr_op[op] / cnt_op[op]), attn_lift=float(attn_op[op] / cnt_op[op]))
                 for op in cnt_op if cnt_op[op] / nrec > 0.005}
        hc_all = np.concatenate(hc_ig)
        imp = np.abs(hc_all).mean(0); order = np.argsort(-imp)[:10]
        br = {k: dict(mean=float(np.concatenate(v).mean()), mean_abs=float(np.abs(np.concatenate(v)).mean()))
              for k, v in branch.items()}
        out[arm] = dict(
            top_ig_lift=sorted(((k, v) for k, v in ratio.items()), key=lambda kv: -kv[1]["ig_lift"])[:8],
            top_attn_lift=sorted(((k, v) for k, v in ratio.items()), key=lambda kv: -kv[1]["attn_lift"])[:8],
            hc_top=[(fn[i], float(imp[i]), float(hc_all[:, i].mean())) for i in order],
            branch_gradxdelta=br, examples=top_nodes)
        print("attrib", arm, out[arm]["top_ig_lift"][:4], br)
    return out


def _attn(model, b):
    with torch.no_grad():
        nf, nm = b["node_features"], b["node_mask"]
        B = nf.shape[0]
        h = model.node_encoder(nf.view(-1, nf.shape[-1])).view(B, -1, model.hidden_dim)
        ea = model.edge_encoder(b["edge_type"]) * model.edge_type_scale[b["edge_type"]].unsqueeze(-1)
        ea = ea * b["edge_mask"].unsqueeze(-1).float()
        vn = model.vn_init.expand(B, -1); L = [h]
        for i in range(model.num_layers):
            h = model.layer_norms[i](h + model.gine_layers[i](h, b["edge_index"], ea, nm, b["edge_mask"], b["edge_weight"]))
            h, vn = model.vn_updates[i](h, vn, nm); L.append(h)
        al = model.attention_net(torch.cat(L, -1)).masked_fill(~nm.unsqueeze(-1), float("-inf"))
        return torch.softmax(al, 1).squeeze(-1).numpy()


if __name__ == "__main__":
    import json
    sys.path.insert(0, str(Path(__file__).resolve().parent))
    res = run()
    (ROOT / "eval/graph_anatomy/stage45_attrib.json").write_text(json.dumps(res, indent=1))
    print(json.dumps(res, indent=1)[:6000])
