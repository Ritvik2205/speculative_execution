#!/usr/bin/env python3
"""Print a table from viz_ablation/*/gine_metrics.json (ablation runs)."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
ABL = ROOT / "viz_ablation"


def main():
    rows = []
    if not ABL.is_dir():
        print(f"No {ABL}")
        return
    for d in sorted(ABL.iterdir()):
        if not d.is_dir() or d.name.startswith("_"):
            continue
        p = d / "gine_metrics.json"
        if not p.exists():
            continue
        m = json.load(open(p))
        args = m.get("args") or {}
        summ = m.get("acc_curve_summary") or {}
        rows.append({
            "run": d.name,
            "dropout": args.get("dropout"),
            "val_split_seed": args.get("val_split_seed"),
            "log_train_eval": args.get("log_train_eval_acc"),
            "e1_train_tm": summ.get("epoch1_train_acc_train_mode"),
            "e1_train_ev": summ.get("epoch1_train_acc_eval_mode"),
            "e1_val": summ.get("epoch1_val_acc"),
            "best_val": m.get("best_val_acc"),
            "test_acc": m.get("test_accuracy"),
        })

    if not rows:
        print(f"No gine_metrics.json under {ABL}/")
        return

    print(f"\n{'run':<28} {'drop':>5} {'seed':>5} {'evl':>4} {'e1_trn':>7} {'e1_trnev':>8} {'e1_val':>7} {'best_val':>8} {'test':>7}")
    print("-" * 92)
    for r in rows:
        print(
            f"{r['run']:<28} "
            f"{r['dropout'] if r['dropout'] is not None else '?' :>5} "
            f"{r['val_split_seed'] if r['val_split_seed'] is not None else '?':>5} "
            f"{'Y' if r['log_train_eval'] else 'N':>4} "
            f"{r['e1_train_tm']*100 if r['e1_train_tm'] else float('nan'):>6.1f}% "
            f"{r['e1_train_ev']*100 if r['e1_train_ev'] else float('nan'):>7.1f}% "
            f"{r['e1_val']*100 if r['e1_val'] else float('nan'):>6.1f}% "
            f"{r['best_val']*100 if r['best_val'] else float('nan'):>7.2f}% "
            f"{r['test_acc']*100 if r['test_acc'] else float('nan'):>6.2f}%"
        )
    print()


if __name__ == "__main__":
    main()
