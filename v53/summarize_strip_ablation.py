#!/usr/bin/env python3
"""Compare gine_metrics.json from viz_v53_ablation/strip_on vs strip_off."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
A = ROOT / "viz_v53_ablation"


def load_metrics(sub: str):
    p = A / sub / "gine_metrics.json"
    if not p.exists():
        return None
    return json.load(open(p))


def main():
    m_on = load_metrics("strip_on")
    m_off = load_metrics("strip_off")
    if not m_on or not m_off:
        print(f"Need both {A}/strip_on/gine_metrics.json and strip_off/gine_metrics.json")
        return

    def row(name, m):
        cr = m.get("classification_report", {})
        macro = cr.get("macro avg", {})
        return {
            "name": name,
            "test_acc": m.get("test_accuracy"),
            "best_val": m.get("best_val_acc"),
            "macro_f1": macro.get("f1-score"),
            "macro_prec": macro.get("precision"),
            "macro_rec": macro.get("recall"),
        }

    r_on = row("strip_on", m_on)
    r_off = row("strip_off", m_off)

    print()
    print(f"{'setting':<14} {'test_acc':>10} {'best_val':>10} {'macro_f1':>10} {'macro_P':>10} {'macro_R':>10}")
    print("-" * 76)
    for r in (r_on, r_off):
        print(
            f"{r['name']:<14} {r['test_acc']*100:9.2f}% {r['best_val']*100:9.2f}% "
            f"{r['macro_f1']*100:9.2f}% {r['macro_prec']*100:9.2f}% {r['macro_rec']*100:9.2f}%"
        )

    d = (r_off["test_acc"] - r_on["test_acc"]) * 100
    print()
    print(f"Δ test accuracy (strip_off − strip_on): {d:+.2f} pp")
    print()

    # Per-class F1 delta (only classes present in both)
    cr_on = m_on["classification_report"]
    cr_off = m_off["classification_report"]
    keys = sorted(k for k in cr_on if isinstance(cr_on[k], dict) and "f1-score" in cr_on[k] and k not in ("macro avg", "weighted avg"))
    print(f"{'class':<36} {'f1 strip_on':>12} {'f1 strip_off':>13} {'Δ f1':>8}")
    print("-" * 72)
    for k in keys:
        if k not in cr_off:
            continue
        f1a = cr_on[k]["f1-score"]
        f1b = cr_off[k]["f1-score"]
        print(f"{k:<36} {f1a:12.4f} {f1b:13.4f} {f1b-f1a:+8.4f}")
    print()


if __name__ == "__main__":
    main()
