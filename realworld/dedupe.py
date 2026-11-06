"""Cross-file duplicate marking for real-world data.

Rows whose (arch, normalised sequence) equals an earlier row get `dup_of` = that row's
source_key. Rows are kept. Order is deterministic: reference files (read-only, e.g. the v54
train set) first, then the given files sorted by path, rows in file order. Idempotent.
"""
import argparse
import hashlib
import json
from pathlib import Path

from realworld.records import normalise, source_key

ROOT = Path(__file__).resolve().parent.parent


def _h(row):
    return hashlib.sha256("\n".join(normalise(row["sequence"])).encode()).hexdigest()


def _key(row, path, i):
    try:
        return source_key(row)
    except KeyError:  # reference rows (v54 train) carry no provenance
        return f"{Path(path).name}#{i}"


def run(paths, reference=()):
    seen = {}
    for rp in sorted(map(str, reference)):
        for i, line in enumerate(open(rp)):
            r = json.loads(line)
            seen.setdefault((r["arch"], _h(r)), _key(r, rp, i))
    n = 0
    for p in sorted(map(str, paths)):
        rows = [json.loads(l) for l in open(p)]
        for i, r in enumerate(rows):
            k = (r["arch"], _h(r))
            if k in seen:
                r["dup_of"] = seen[k]
                n += 1
            else:
                r["dup_of"] = None
                seen[k] = _key(r, p, i)
        with open(p, "w") as f:
            for r in rows:
                f.write(json.dumps(r) + "\n")
    return n


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--eval-glob", default=str(ROOT / "eval/data/realworld_*.jsonl"))
    ap.add_argument("--train-glob", default=str(ROOT / "v54/data/realworld_*_train.jsonl"))
    ap.add_argument("--reference", nargs="*", default=[str(ROOT / "v54/data/v54_train.jsonl")])
    a = ap.parse_args(argv)
    import glob
    paths = glob.glob(a.eval_glob) + glob.glob(a.train_glob)
    print(f"{run(paths, [r for r in a.reference if Path(r).exists()])} rows marked dup_of")


if __name__ == "__main__":
    main()
