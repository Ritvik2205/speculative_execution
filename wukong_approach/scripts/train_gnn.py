#!/usr/bin/env python3
"""Train a graph neural network on Assembly Dependence Graphs."""
import argparse
import json
import random
from pathlib import Path
from typing import Dict, List, Tuple

import networkx as nx
import numpy as np
import torch
from gensim.models.doc2vec import Doc2Vec
from sklearn.metrics import classification_report

LABEL_KEY = "vuln_label"


def load_graphs(path: Path) -> List[Dict]:
    records: List[Dict] = []
    with path.open() as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            records.append(json.loads(line))
    return records


class SimpleGCN(torch.nn.Module):
    def __init__(self, in_dim: int, hidden_dim: int, num_classes: int):
        super().__init__()
        self.layer1 = torch.nn.Linear(in_dim, hidden_dim)
        self.layer2 = torch.nn.Linear(hidden_dim, hidden_dim)
        self.out = torch.nn.Linear(hidden_dim, num_classes)
        self.dropout = torch.nn.Dropout(0.2)

    def forward(self, x: torch.Tensor, adj: torch.Tensor) -> torch.Tensor:
        h = torch.relu(adj @ self.layer1(x))
        h = self.dropout(h)
        h = torch.relu(adj @ self.layer2(h))
        g = h.mean(dim=0, keepdim=True)  # simple mean pooling
        return self.out(g)


def normalized_adj(g: nx.DiGraph) -> np.ndarray:
    adj = nx.to_numpy_array(g, dtype=np.float32)
    adj = adj + np.eye(adj.shape[0], dtype=np.float32)
    deg = np.sum(adj, axis=1)
    deg_inv_sqrt = np.power(deg, -0.5)
    deg_inv_sqrt[np.isinf(deg_inv_sqrt)] = 0.0
    d_mat = np.diag(deg_inv_sqrt)
    return d_mat @ adj @ d_mat


def node_features(g: nx.DiGraph, model: Doc2Vec) -> np.ndarray:
    feats: List[np.ndarray] = []
    for _, data in g.nodes(data=True):
        tokens = [data.get("opcode", "").lower()] + [op.lower() for op in data.get("operands", [])]
        vec = model.infer_vector(tokens)
        feats.append(vec)
    return np.vstack(feats)


def build_dataset(records: List[Dict], model: Doc2Vec) -> Tuple[List[Dict], Dict[str, int]]:
    data = []
    label_to_idx: Dict[str, int] = {}
    for record in records:
        graph = nx.node_link_graph(record["graph"], directed=True)
        meta = record.get("meta", {})
        label = meta.get(LABEL_KEY, "UNKNOWN")
        if label == "UNKNOWN":
            continue
        if label not in label_to_idx:
            label_to_idx[label] = len(label_to_idx)
        features = node_features(graph, model)
        adj = normalized_adj(graph)
        confidence = float(meta.get("confidence", 1.0))
        group = meta.get("group") or Path(meta.get("source_file", "unknown")).stem
        data.append({
            "features": torch.tensor(features, dtype=torch.float32),
            "adj": torch.tensor(adj, dtype=torch.float32),
            "label": label_to_idx[label],
            "confidence": confidence,
            "group": group,
        })
    return data, label_to_idx


def group_split(data: List[Dict], test_ratio: float, seed: int = 42):
    groups = {}
    for idx, item in enumerate(data):
        groups.setdefault(item["group"], []).append(idx)
    keys = list(groups.keys())
    random.Random(seed).shuffle(keys)
    test_size = max(1, int(len(keys) * test_ratio))
    test_keys = set(keys[:test_size])
    train_idx, test_idx = [], []
    for key, indices in groups.items():
        if key in test_keys:
            test_idx.extend(indices)
        else:
            train_idx.extend(indices)
    return train_idx, test_idx


def train(model: SimpleGCN, optimizer, data: List[Dict], indices: List[int]):
    model.train()
    total_loss = 0.0
    criterion = torch.nn.CrossEntropyLoss(reduction="none")
    for idx in indices:
        sample = data[idx]
        logits = model(sample["features"], sample["adj"])
        target = torch.tensor([sample["label"]])
        loss = criterion(logits, target)
        weight = torch.tensor(sample["confidence"], dtype=torch.float32)
        total = (loss * weight).mean()
        optimizer.zero_grad()
        total.backward()
        optimizer.step()
        total_loss += total.item()
    return total_loss / max(1, len(indices))


def evaluate(model: SimpleGCN, data: List[Dict], indices: List[int], label_to_idx: Dict[str, int]):
    model.eval()
    preds, targets = [], []
    with torch.no_grad():
        for idx in indices:
            sample = data[idx]
            logits = model(sample["features"], sample["adj"])
            pred = logits.argmax(dim=1).item()
            preds.append(pred)
            targets.append(sample["label"])
    idx_to_label = {v: k for k, v in label_to_idx.items()}
    target_labels = [idx_to_label[t] for t in targets]
    pred_labels = [idx_to_label[p] for p in preds]
    report = classification_report(target_labels, pred_labels, zero_division=0, output_dict=True)
    return report


def main():
    ap = argparse.ArgumentParser(description="Train a GNN on ADGs")
    ap.add_argument("--graphs", type=Path, required=True)
    ap.add_argument("--doc2vec", type=Path, required=True)
    ap.add_argument("--epochs", type=int, default=30)
    ap.add_argument("--hidden-dim", type=int, default=128)
    ap.add_argument("--test-ratio", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=42)
    ap.add_argument("--out", type=Path, default=Path("checkpoints/gnn.pt"))
    args = ap.parse_args()

    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)

    records = load_graphs(args.graphs)
    model_doc = Doc2Vec.load(str(args.doc2vec))
    dataset, label_to_idx = build_dataset(records, model_doc)
    if not dataset:
        print("No graphs available for training")
        return

    feature_dim = dataset[0]["features"].shape[1]
    num_classes = len(label_to_idx)
    gnn = SimpleGCN(feature_dim, args.hidden_dim, num_classes)
    optimizer = torch.optim.Adam(gnn.parameters(), lr=1e-3, weight_decay=1e-4)

    train_idx, test_idx = group_split(dataset, test_ratio=args.test_ratio, seed=args.seed)
    if not train_idx or not test_idx:
        print("Insufficient groups for the requested split; adjust test-ratio")
        return

    for epoch in range(1, args.epochs + 1):
        avg_loss = train(gnn, optimizer, dataset, train_idx)
        if epoch % 5 == 0 or epoch == args.epochs:
            report = evaluate(gnn, dataset, test_idx, label_to_idx)
            print(f"Epoch {epoch}: loss={avg_loss:.4f}, accuracy={report['accuracy']:.3f}")

    args.out.parent.mkdir(parents=True, exist_ok=True)
    torch.save({
        "model_state": gnn.state_dict(),
        "label_to_idx": label_to_idx,
        "feature_dim": feature_dim,
        "hidden_dim": args.hidden_dim,
    }, args.out)
    print(f"Saved model to {args.out}")

    final_report = evaluate(gnn, dataset, test_idx, label_to_idx)
    print(json.dumps(final_report, indent=2))


if __name__ == "__main__":
    main()
