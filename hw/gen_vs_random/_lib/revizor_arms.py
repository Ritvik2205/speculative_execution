#!/usr/bin/env python3
"""Build the program arms for the hardware comparison (step 3, hypothesis H3):
does a generator trained on confirmed Revizor violations find more violations
per test case than Revizor's own random generator, at an equal budget?

Arms written here (Revizor's random arm is produced on the i5 by rvzr itself):
  learned   class-conditioned transformer over the factored stream
            (gen/revizor_native.py); copies of training programs are dropped
  unigram   unit shapes drawn independently at corpus frequency and corpus
            lengths -- does the ORDER the model learned matter
  mutation  a training program with units shuffled inside each block, or two
            programs' blocks spliced -- the cheap non-learned bar
  replay    the training programs themselves -- how often a known violator
            re-violates on fresh inputs (calibrates the budget)

Output: <out>/<CLASS>/config.yaml and <out>/<CLASS>/<arm>/s<seed>/p<k>.asm,
plus <out>/manifest.jsonl. Run it on the i5 with
oracle/revizor/scripts/run_gen_vs_random.sh.
"""
from __future__ import annotations

import argparse
import glob
import json
import random
import re
import sys
from collections import Counter
from pathlib import Path
from typing import Dict, List, Tuple

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

import revizor_native as rn  # noqa: E402

HW = ROOT / "oracle" / "revizor" / "results" / "hw_label_261007"
CLASS_DIRS = {"SPECTRE_V1": "spectre_v1", "SPECTRE_V4": "spectre_v4", "MDS": "mds", "L1TF": "l1tf"}
ARCH = "x86_64"


def load_corpus(cls: str, extra: List[str] = ()) -> Tuple[List[str], str]:
    """Native programs of a class and one original config (campaign settings)."""
    files = sorted(glob.glob(str(HW / CLASS_DIRS[cls] / "*" / "original" / "program.asm")))
    for d in extra:
        files += sorted(glob.glob(str(Path(d) / cls / "**" / "program.asm"), recursive=True))
    texts, seen = [], set()
    for f in files:
        t = open(f).read()
        key = tuple(rn.tokenize(rn.parse_program(t)))
        if key and key not in seen:
            seen.add(key)
            texts.append(t)
    cfg = open(Path(files[0]).with_name("config.yaml")).read()
    return texts, cfg


def load_pool_corpus(records_jsonl, root) -> Tuple[List[str], str, int]:
    """Native programs named by a train-pool record file (`src_path` such as
    ~/rvzr_runs/.../program.asm), read from an unpacked copy of the i5's
    ~/rvzr_runs under `root`. Only records in the file are used, so held-out
    programs that happen to be on disk stay out. Returns texts, one campaign
    config, and how many records had no file."""
    texts, seen, cfg, missing = [], set(), None, 0
    for line in open(records_jsonl):
        if not line.strip():
            continue
        src = json.loads(line).get("src_path", "")
        f = Path(root) / re.sub(r"^~/|^/home/[^/]+/", "", src)
        if not f.is_file():
            missing += 1
            continue
        t = f.read_text()
        key = tuple(rn.tokenize(rn.parse_program(t)))
        if key and key not in seen:
            seen.add(key)
            texts.append(t)
        if cfg is None:
            for name in ("org-config.yaml", "config.yaml"):
                if (f.parent / name).is_file():
                    cfg = (f.parent / name).read_text()
                    break
    return texts, cfg, missing


def campaign_config(cfg: str) -> str:
    """A violation's saved config as a fuzzing config: no pinned seeds, none of
    the reproduce-time overrides, filters on as in the original campaigns."""
    head = cfg.split("# Overwrite some of the configuration options")[0]
    out = []
    for line in head.splitlines():
        if re.match(r"^\s*(program_generator_seed|data_generator_seed)\s*:", line):
            continue
        line = re.sub(r"^(enable_(speculation|observation)_filter)\s*:.*", r"\1: true", line)
        out.append(line)
    return "\n".join(l for l in out if l.strip()) + "\n"


def with_contract(cfg: str, clauses: List[str]) -> str:
    """The config with its `contract_execution_clause` list replaced."""
    out, skipping = [], False
    for line in cfg.splitlines():
        if re.match(r"^contract_execution_clause\s*:", line):
            out.append("contract_execution_clause:")
            out += [f"  - {c}" for c in clauses]
            skipping = True
            continue
        if skipping and re.match(r"^\s+-\s", line):
            continue
        skipping = False
        out.append(line)
    return "\n".join(out) + "\n"


# Candidate settings for the base-rate pilot (plan 2026-11-11, A2). A setting is
# usable for the comparison only if Revizor's random generator violates in
# roughly 0.5%-10% of programs: `seq`/`no_speculation` with conditional branches
# is saturated on the i5 (9 violations per seed on all 10 seeds in 900 s).
PILOTS = {
    "v1_seq": ("SPECTRE_V1", None),                 # reference: the saturated setting
    "v1_cond": ("SPECTRE_V1", ["cond"]),            # branch misprediction permitted
    "v1_cond_bpas": ("SPECTRE_V1", ["cond", "bpas"]),
    "v4_seq": ("SPECTRE_V4", None),                 # straight-line; varied by seed (3-7)
    "v4_bpas": ("SPECTRE_V4", ["bpas"]),            # store bypass permitted
}


def write_pilots(out: Path, pool_root, extra=()) -> None:
    """<out>/<name>/<CLASS>/config.yaml + replay/s0 (the known violators): the
    runner then gives the random base rate and how many known violators still
    violate under that contract."""
    for name, (cls, clauses) in PILOTS.items():
        if pool_root:
            recs = ROOT / "eval" / "data" / f"revizor_{CLASS_DIRS[cls]}_trainpool.jsonl"
            corpus, cfg, _ = load_pool_corpus(recs, pool_root)
        else:
            corpus, cfg = load_corpus(cls, extra)
        cfg = campaign_config(cfg)
        if clauses:
            cfg = with_contract(cfg, clauses)
        d = out / name / cls
        (d / "replay" / "s0").mkdir(parents=True, exist_ok=True)
        (d / "config.yaml").write_text(cfg)
        imm = rn.imm_pool(corpus)
        for k, t in enumerate(corpus):
            (d / "replay" / "s0" / f"p{k:04d}.asm").write_text(
                rn.emit(rn.tokenize(rn.parse_program(t)), random.Random(k), imm))
        (out / name / "manifest.jsonl").write_text(
            "".join(json.dumps({"class": cls, "arm": "replay", "seed": 0, "k": k}) + "\n"
                    for k in range(len(corpus))))
        print(f"[pilot] {name}: {cls}, contract {clauses or 'as recorded'}, {len(corpus)} known violators")


def to_program(factored: List[str], rng: random.Random, imm) -> str:
    return rn.emit(rn.defactor(factored, rng), rng, imm_pool=imm)


def is_copy(text: str, corpus: List[str]) -> bool:
    """Same units in the same order as a training program (immediates aside)."""
    key = rn.tokenize(rn.parse_program(text))
    return any(key == rn.tokenize(rn.parse_program(c)) for c in corpus)


def mutate(corpus: List[str], rng: random.Random, mode: str = None) -> Tuple[str, List[int]]:
    mode = mode or rng.choice(["shuffle", "splice"])
    imm = rn.imm_pool(corpus)
    i = rng.randrange(len(corpus))
    blocks = rn.parse_program(corpus[i])
    parents = [i]
    if mode == "splice" and len(corpus) > 1:
        j = rng.choice([k for k in range(len(corpus)) if k != i])
        other = rn.parse_program(corpus[j])
        cut = rng.randint(1, len(blocks))
        blocks = blocks[:cut] + other[min(cut, len(other) - 1):] if len(blocks) > 1 or len(other) > 1 \
            else [rn.Block(blocks[0].units[: len(blocks[0].units) // 2]
                           + other[0].units[len(other[0].units) // 2:], blocks[0].jcc)]
        parents.append(j)
    else:
        for b in blocks:
            rng.shuffle(b.units)
    return rn.emit(rn.tokenize(blocks), rng, imm_pool=imm), parents


class UnigramModel:
    def __init__(self, corpus: List[str]):
        self.imm = rn.imm_pool(corpus)
        self.shapes, self.regs, self.lengths, self.ends = Counter(), Counter(), [], []
        for c in corpus:
            toks = rn.tokenize_factored(rn.parse_program(c))
            units = [t for t in toks if not t.startswith("<")]
            self.shapes.update(units)
            self.regs.update(t for t in toks if t.startswith("<R "))
            self.lengths.append(len(units))
            # where the block boundary sits, as a fraction, and what it is
            for k, t in enumerate(x for x in toks if not x.startswith("<R ")):
                if t.startswith("<JCC") or t == "<BB>":
                    self.ends.append((t, k / max(1, len(units))))
                    break
            else:
                self.ends.append((None, 1.0))

    def sample(self, rng: random.Random) -> List[str]:
        n = rng.choice(self.lengths)
        end, frac = rng.choice(self.ends)
        shapes, sw = zip(*self.shapes.items())
        regs, rw = zip(*self.regs.items())
        out = []
        for k in range(n):
            if end and k == max(1, round(frac * n)):
                out.append(end)
            s = rng.choices(shapes, sw)[0]
            out.append(s)
            n_slots = 1 + max((int(m.group(1)) for m in rn._SLOT.finditer(s)), default=-1)
            out += rng.choices(regs, rw, k=n_slots)
        return out


def train_lm(corpora: Dict[str, List[str]], epochs: int, seed: int):
    import torch
    from generator import GenVocab, CondTransformerLM, encode_record, train
    torch.manual_seed(seed)
    seqs = [(cls, rn.tokenize_factored(rn.parse_program(t)))
            for cls, texts in corpora.items() for t in texts]
    vocab = GenVocab.build([s for _, s in seqs], sorted(corpora), [ARCH], min_count=1)
    max_len = max(len(s) for _, s in seqs) + 8
    model = CondTransformerLM(len(vocab), dim=128, layers=3, heads=4, max_len=max_len)
    model.vocab = vocab
    enc = [encode_record(s, cls, ARCH, vocab, max_len) for cls, s in seqs]
    train(model, enc, epochs=epochs, pad_id=vocab.pad_id,
          bs=32, lr=1e-3)
    return model


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--classes", nargs="+", default=["SPECTRE_V1"])
    ap.add_argument("--n", type=int, default=100, help="programs per campaign (arm x seed)")
    ap.add_argument("--seeds", type=int, nargs="+", default=list(range(10)))
    ap.add_argument("--epochs", type=int, default=10,
                    help="10 minimises loss on the 173 held-out programs (4.12 nats/token; "
                         "20: 4.37, 40: 6.05, 80: 8.22 and 68%% of samples copy training)")
    ap.add_argument("--temperature", type=float, default=1.0)
    ap.add_argument("--extra", nargs="*", default=[],
                    help="more native programs: <dir>/<CLASS>/**/program.asm")
    ap.add_argument("--pool-root", default=None,
                    help="unpacked native_pool.tgz from the i5 (contains rvzr_runs/): "
                         "train on the train-pool records' programs instead of the "
                         "173 local hardware-label originals")
    ap.add_argument("--out", default=str(ROOT / "hw" / "gen_vs_random"))
    ap.add_argument("--save", default=str(ROOT / "gen" / "generator_revizor_native.pt"))
    ap.add_argument("--pilots", default=None, metavar="DIR",
                    help="only write the base-rate pilot settings there and exit")
    args = ap.parse_args(argv)
    if args.pilots:
        write_pilots(Path(args.pilots), args.pool_root, args.extra)
        return 0
    out = Path(args.out)
    corpora, cfgs = {}, {}
    for cls in args.classes:
        if args.pool_root:
            recs = ROOT / "eval" / "data" / f"revizor_{CLASS_DIRS[cls]}_trainpool.jsonl"
            corpora[cls], cfg, missing = load_pool_corpus(recs, args.pool_root)
            _, cfgs[cls] = load_corpus(cls)        # campaign config as used so far
            cfgs[cls] = cfg or cfgs[cls]
            print(f"[corpus] {cls}: {len(corpora[cls])} distinct train-pool programs "
                  f"({missing} records without a file)")
        else:
            corpora[cls], cfgs[cls] = load_corpus(cls, args.extra)
            print(f"[corpus] {cls}: {len(corpora[cls])} distinct programs")
    model = train_lm(corpora, args.epochs, seed=0)
    model.save(args.save)
    manifest, summary = [], []
    for cls in args.classes:
        corpus = corpora[cls]
        imm = rn.imm_pool(corpus)
        (out / cls).mkdir(parents=True, exist_ok=True)
        (out / cls / "config.yaml").write_text(campaign_config(cfgs[cls]))
        uni = UnigramModel(corpus)

        def write(arm, seed, k, text, **meta):
            p = out / cls / arm / f"s{seed}" / f"p{k:04d}.asm"
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text(text)
            manifest.append({"class": cls, "arm": arm, "seed": seed, "k": k,
                             "path": str(p.relative_to(out)), **meta})

        for k, t in enumerate(corpus):
            write("replay", 0, k, rn.emit(rn.tokenize(rn.parse_program(t)), random.Random(k), imm))
        for seed in args.seeds:
            import torch
            rng = random.Random(1000 + seed)
            torch.manual_seed(1000 + seed)
            kept = copies = invalid = dup = tries = 0
            seen = set()
            while kept < args.n and tries < args.n * 20:
                tries += 1
                toks = model.sample(cls, ARCH, temperature=args.temperature, top_k=40)
                text = to_program(toks, rng, imm)
                key = tuple(rn.tokenize(rn.parse_program(text)))
                if not key or rn.check_invariants(text):
                    invalid += 1
                elif is_copy(text, corpus):
                    copies += 1
                elif key in seen:
                    dup += 1
                else:
                    seen.add(key)
                    write("learned", seed, kept, text)
                    kept += 1
            summary.append({"class": cls, "seed": seed, "learned_kept": kept, "sampled": tries,
                            "copies_of_training": copies, "duplicates": dup, "invalid": invalid})
            # reserve of further model samples for the feedback arm's `lm` operator
            pool_dir = out / cls / "_lm_pool" / f"s{seed}"
            pool_dir.mkdir(parents=True, exist_ok=True)
            made = tries = 0
            while made < args.n and tries < args.n * 20:
                tries += 1
                text = to_program(model.sample(cls, ARCH, temperature=args.temperature, top_k=40), rng, imm)
                key = tuple(rn.tokenize(rn.parse_program(text)))
                if key and key not in seen and not rn.check_invariants(text) and not is_copy(text, corpus):
                    seen.add(key)
                    (pool_dir / f"p{made:04d}.asm").write_text(text)
                    made += 1
            for k in range(args.n):
                write("unigram", seed, k, to_program(uni.sample(rng), rng, imm))
                text, parents = mutate(corpus, rng)
                write("mutation", seed, k, text, parents=parents)
    # the i5 worktree is sparse (hw/ + oracle/): ship the stdlib-only modules
    # the feedback arm needs next to the programs
    lib = out / "_lib"
    lib.mkdir(parents=True, exist_ok=True)
    for name in ("revizor_native.py", "revizor_arms.py"):
        (lib / name).write_text((ROOT / "gen" / name).read_text())
    with open(out / "manifest.jsonl", "w") as f:
        for r in manifest:
            f.write(json.dumps(r) + "\n")
    (out / "build_summary.json").write_text(json.dumps(summary, indent=1))
    for s in summary:
        print(s)
    print(f"wrote {len(manifest)} programs under {out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
