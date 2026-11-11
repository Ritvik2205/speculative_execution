#!/usr/bin/env python3
"""Control table for the gate-only harness (step 1, 2026-11-11).

Every generator yield on the gate-only victim must be reported next to bodies
that carry no learned content. This script builds, for SPECTRE_V1 on x86_64:

  empty, nop<k>          -- must be SAFE (harness sanity)
  reference              -- hand-written load->scale->transmit, must LEAK
  benign_raw             -- straight-line windows of real compiled x86 code
  benign_realized        -- the same windows through the PLAIN token stream
                            (bar for a plain-stream generator)
  benign_slot            -- the same windows through the identity slot stream
                            (bar for a slot-stream generator)
  random_token           -- uniform draws from a checkpoint's x86 vocabulary
                            through the same masks and realiser (untrained)
  gen:<ckpt>             -- samples from each generator checkpoint

Non-learned bodies are length-matched to the realised length distribution of
the first generator checkpoint (leak probability rises with length). Every row
goes through the identical splice + victim + oracle path the loop uses
(gen.oracle_splice.splice_gate_only / gate_asm_block, render_spec_gate,
SpectectorValidator). Writes one jsonl row per body and a markdown table with
Wilson 95% intervals for leak/n and leak/adjudicable, plus distinct-body counts.

Benign source: eval/data/realworld_benign_x86_64.jsonl (Debian amd64). It is the
detector's held-out benign set; using it here trains nothing.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
import random
import re
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    sys.path.insert(0, str(p))

from oracle_splice import splice_gate_only, gate_asm_block, find_registers  # noqa: E402
from splice_safety import strip_ret  # noqa: E402
from gen.synth import spectector_gadgets as sg  # noqa: E402

CLS = "SPECTRE_V1"
REF = ["movzbl (%r15), %eax", "shlq $6, %rax", "movb $1, (%r14,%rax)"]  # leaks on both victims
_POOL = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11", "r12", "r13"]
_BRANCH = re.compile(r"^\s*(j[a-z]+|loop[a-z]*|ret[a-z]*|call[a-z]*|syscall|hlt|int3?|ud2)\b")


def wilson(k, n, z=1.96):
    if n == 0:
        return (float("nan"), float("nan"))
    p = k / n
    d = 1 + z * z / n
    c = (p + z * z / (2 * n)) / d
    h = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n)) / d
    return (max(0.0, c - h), min(1.0, c + h))


def _remap_reserved(window):
    """Map any use of the reserved r14/r15 in a raw window onto pool registers
    the window does not otherwise use, preserving dataflow."""
    from oracle_splice import remap_instrs
    used = set(find_registers(window, "x86_64"))
    free = [r for r in _POOL if r not in used]
    rm = {}
    for res in ("r14", "r15"):
        if res in used:
            if not free:
                return None
            rm[res] = free.pop(0)
    return remap_instrs(window, "x86_64", rm) if rm else window


def benign_windows(lengths, rng):
    recs = [json.loads(l) for l in open(ROOT / "eval/data/realworld_benign_x86_64.jsonl")]
    seqs = []
    for r in recs:
        s = [i.strip() for i in r["sequence"]
             if i.strip() and not i.strip().endswith(":") and not i.strip().startswith(".")
             and not i.strip().startswith("endbr")]
        s = [i for i in s if not _BRANCH.match(i)]
        if len(s) >= 4:
            seqs.append(s)
    out = []
    for L in lengths:
        for _ in range(50):
            s = rng.choice(seqs)
            if len(s) >= L:
                st = rng.randrange(0, len(s) - L + 1)
                w = _remap_reserved(s[st:st + L])
                if w is not None:
                    out.append(w)
                    break
    return out


def _load_gen(path):
    import gen.decode as gd
    from arch_purity import attach_arch_masks
    from splice_safety import attach_splice_masks
    m = gd.CondTransformerLM.load(str(path))
    attach_arch_masks(m, {"x86_64": "x86_64.json", "arm64": "arm64.json"}, assembler_check=True)
    attach_splice_masks(m)
    return m, gd


def build_jobs(args):
    rng = random.Random(args.seed)
    jobs = [("empty", []), ("nop8", ["nop"] * 8), ("nop32", ["nop"] * 32), ("reference", REF)]
    gen_lengths = []
    tok_cache = {}
    for ck in args.gen:
        m, gd = _load_gen(ck)
        realizer = gd.Realizer(gd.load_spec("x86_64.json"), seed=args.seed)
        tag = "gen:" + Path(ck).stem
        for _ in range(args.n):
            kw = {"target_len": args.target_len} if args.target_len else {}
            toks = m.sample(CLS, "x86_64", temperature=args.temperature, top_k=20, **kw)
            body = realizer.realize_sequence(toks)
            jobs.append((tag, body))
            gen_lengths.append(max(len(body), 2))
        tok_cache[ck] = (m, gd, realizer)
    if not gen_lengths:
        gen_lengths = [rng.randint(8, 60) for _ in range(args.n)]
    lengths = [rng.choice(gen_lengths) for _ in range(args.n)]
    raw = benign_windows(lengths, rng)
    jobs += [("benign_raw", w) for w in raw]
    # benign through the register/memory/immediate identity stream: the bar
    # for a slot-stream generator (the plain realiser re-draws registers and
    # manufactures dataflow, so benign_realized is the bar for a plain one).
    import gen.decode as _gd
    from isa_spec import load_engine as _le
    from asm_tokenizer import AsmTokenizer as _AT
    _stk = _AT(_le("x86_64.json"))
    _sr = _gd.Realizer(_gd.load_spec("x86_64.json"), seed=args.seed + 1)
    jobs += [("benign_slot", _sr.realize_sequence(_stk.tokenize_sequence_slots(w))) for w in raw]
    if args.gen:
        m, gd, realizer = tok_cache[args.gen[0]]
        from isa_spec import load_engine
        from asm_tokenizer import AsmTokenizer
        tk = AsmTokenizer(load_engine("x86_64.json"))
        vocab = set(m.vocab.itos)
        for w in raw:
            toks = [t for t in (tk.normalize(i) for i in w) if t]
            toks = [t for t in toks if t in vocab]
            jobs.append(("benign_realized", realizer.realize_sequence(toks)))
        dis = set(int(i) for i in m._arch_disallow["x86_64"].tolist())
        sdis = set(int(i) for i in getattr(m, "_splice_disallow", {}).get(CLS, []).tolist()) \
            if getattr(m, "_splice_disallow", None) else set()
        cands = [t for i, t in enumerate(m.vocab.itos)
                 if not t.startswith("<") and i not in dis and i not in sdis]
        for L in lengths:
            jobs.append(("random_token", realizer.realize_sequence([rng.choice(cands) for _ in range(L)])))
    return jobs


def run(args):
    from oracle.validators.spectector_validator import SpectectorValidator
    work = ROOT / "oracle" / "build" / "gate_controls"   # under $HOME: Colima mounts it
    (work / "oracle" / "build").mkdir(parents=True, exist_ok=True)
    from gen.decode import gate_source, GATE_ORACLE_VERSIONS
    val = SpectectorValidator(repo_root=str(work), versions_by_class=GATE_ORACLE_VERSIONS)
    jobs = build_jobs(args)
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)

    def go(ij):
        i, (cond, body) = ij
        body = strip_ret(list(body), CLS)
        h = hashlib.sha1("\n".join(body).encode()).hexdigest()[:12]
        rec = {"cond": cond, "idx": i, "body": body, "n_body": len(body), "hash": h}
        try:
            src = gate_source(body, CLS)
        except ValueError as e:
            rec.update(verdict="dropped", err=str(e))
            return rec
        gid = f"gc{CLS[-2:]}_{i}_{h}"
        p = work / "oracle" / "build" / f"gen_spec_{gid}.c"
        p.write_text(src)
        r = val.validate({"gadget_id": gid, "vuln_class": CLS,
                          "spectector_source": str(p.relative_to(work)), "adjudicable": "yes"})
        rec.update(verdict=r.verdict)
        return rec

    with ThreadPoolExecutor(args.workers) as ex:
        rows = list(ex.map(go, enumerate(jobs)))
    with out.open("w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")
    return rows


def table(rows):
    t = defaultdict(Counter)
    uniq = defaultdict(set)
    for r in rows:
        t[r["cond"]][r["verdict"]] += 1
        if r["verdict"] == "leak":
            uniq[r["cond"]].add(r["hash"])
    lines = ["| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |",
             "|---|---|---|---|---|---|---|---|---|"]
    order = sorted(t, key=lambda c: (not c in ("empty", "nop8", "nop32", "reference"), c))
    for c in order:
        n = sum(t[c].values())
        L, S = t[c]["leak"], t[c]["safe"]
        adj = L + S
        a, b = wilson(L, n)
        a2, b2 = wilson(L, adj)
        lines.append(f"| {c} | {n} | {adj} | {L} | {L/n:.2f} [{a:.2f}, {b:.2f}] | "
                     + (f"{L/adj:.2f} [{a2:.2f}, {b2:.2f}]" if adj else "—")
                     + f" | {len(uniq[c])} | {t[c]['unrunnable']} | {t[c]['dropped']} |")
    return "\n".join(lines)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--gen", nargs="*", default=[], help="generator checkpoints to sample")
    ap.add_argument("--n", type=int, default=100, help="samples per stochastic condition")
    ap.add_argument("--target-len", default=None, help="length token, e.g. long")
    ap.add_argument("--temperature", type=float, default=1.0)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--workers", type=int, default=7)
    ap.add_argument("--out", default=str(ROOT / "gen" / "gate_controls.jsonl"))
    ap.add_argument("--md", default=str(ROOT / "gen" / "gate_controls.md"))
    ap.add_argument("--class", dest="cls", default="SPECTRE_V1",
                    choices=["SPECTRE_V1", "SPECTRE_V4"])
    args = ap.parse_args(argv)
    global CLS
    CLS = args.cls
    rows = run(args)
    md = table(rows)
    hdr = (f"# Gate-only harness control table\n\nclass {CLS}, x86_64, seed {args.seed}, "
           f"n={args.n}/condition, gens={[Path(g).name for g in args.gen]}, "
           f"target_len={args.target_len}, T={args.temperature}. Source rows: `{Path(args.out).name}`.\n\n")
    Path(args.md).write_text(hdr + md + "\n")
    print(md)
    bad = [r for r in rows if r["cond"] in ("empty", "nop8", "nop32") and r["verdict"] != "safe"] \
        + [r for r in rows if r["cond"] == "reference" and r["verdict"] != "leak"]
    if bad:
        print("HARNESS SANITY FAILED:", [(r["cond"], r["verdict"]) for r in bad], file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    sys.exit(main())
