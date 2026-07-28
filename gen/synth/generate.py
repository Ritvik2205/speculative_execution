from __future__ import annotations
import os, json, random, hashlib
from gen.synth.params import GadgetParams, CLASSES, ARCHES, ADJUDICABLE
from gen.synth.templates import render

# Knob space: 254 secrets × 4 train_iters × 9 pad_nops × 2 reorder = 18288 max
MAX_KNOB_SPACE = 254 * 4 * 9 * 2

def sample_params(vuln_class, arch, n, seed=0):
    if n > MAX_KNOB_SPACE:
        raise ValueError(f"n={n} exceeds knob space ({MAX_KNOB_SPACE})")
    # Use hashlib for stable seed across interpreter sessions
    seed_bytes = hashlib.sha256(f"{vuln_class}|{arch}|{seed}".encode()).digest()
    seed_int = int.from_bytes(seed_bytes[:4], "big")
    rng = random.Random(seed_int)
    seen = set()
    out = []
    # deterministic distinct knob-tuples
    while len(out) < n:
        secret = rng.randint(1, 254)
        train_iters = rng.choice([200, 500, 1000, 2000])
        pad_nops = rng.randint(0, 8)
        reorder = rng.random() < 0.5
        key = (secret, train_iters, pad_nops, reorder)
        if key in seen:
            continue
        seen.add(key)
        out.append(GadgetParams(vuln_class, arch, secret, train_iters,
                                pad_nops, reorder, variant_idx=len(out)))
    return out

def generate(out_dir, n_per_class=25, seed=0):
    os.makedirs(out_dir, exist_ok=True)
    rows = []
    for cls in CLASSES:
        for arch in ARCHES:
            for p in sample_params(cls, arch, n_per_class, seed):
                gid = f"{cls}_{arch}_{p.variant_idx}"
                path = os.path.join(out_dir, gid + ".c")
                with open(path, "w") as f:
                    f.write(render(p))
                rows.append({"gadget_id": gid, "path": path,
                             "vuln_class": cls, "arch": arch,
                             "secret": p.secret,
                             "adjudicable": ADJUDICABLE.get(cls, "no")})
    with open(os.path.join(out_dir, "gadgets.jsonl"), "w") as f:
        for r in rows:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    return rows
