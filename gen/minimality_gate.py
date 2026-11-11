#!/usr/bin/env python3
"""Step 2: minimal leaking cores on the gate-only harness, and their novelty.

For each source of bodies (generator before / after the loop, real benign
code, training windows) this
  1. keeps bodies the gate-harness oracle calls a leak,
  2. reduces each to a 1-minimal body with ddmin (gen/minimize_leaks.ddmin),
     a removal being kept only if Spectector still reports a leak,
  3. names the result by its canonical core: the identity slot stream, so two
     cores are the same iff they agree up to register renaming / which
     displacement is which, with structural immediates kept,
  4. asks of each generator core whether it embeds in a reference window
     (training corpus, benign corpus): an ordered subsequence of the window's
     instructions under one consistent register and memory-cell renaming --
     i.e. whether ddmin could have produced the core from that window. A core
     that embeds in no training window is NOVEL: the generator composed a
     dataflow chain that is not a sub-body of anything it was trained on.

Run (local, Docker Spectector):
    venv/bin/python gen/minimality_gate.py --per-source 60 \\
        --out gen/step2_minimality.jsonl --md gen/step2_minimality.md
"""
from __future__ import annotations

import argparse
import hashlib
import json
import random
import statistics
import sys
import threading
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from typing import Callable, List, Optional

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

CLS = "SPECTRE_V1"
_FIXED = ("rsp", "rbp", "rip")
_tok = None


def _tokenizer():
    global _tok
    if _tok is None:
        from isa_spec import load_engine
        from asm_tokenizer import AsmTokenizer
        _tok = AsmTokenizer(load_engine("x86_64.json"))
    return _tok


def canonical_core(body: List[str]) -> str:
    """Identity of a body up to register / memory-cell renaming."""
    return " ".join(_tokenizer().tokenize_sequence_slots(list(body), k=99, k_disp=99))


def template_core(body: List[str]) -> str:
    """Coarser identity: opcode + operand kinds only (the plain stream)."""
    return " | ".join(_tokenizer().tokenize_sequence(list(body)))


def _disp_head(opnd: str) -> str:
    h = opnd.split("(", 1)[0].strip()
    return "0" if h in ("", "0", "0x0", "-0") else h


def _sigs(body):
    out = []
    for ins in body:
        s = _tokenizer().slot_signature(ins)
        if s is not None:
            out.append((s[0], [(k, _disp_head(v) if k == "D" else v) for k, v in s[1]]))
    return out


def embeds_in(core: List[str], window: List[str]) -> bool:
    """True iff `core` is an ordered subsequence of `window` under one
    injective renaming of registers and of memory displacements (stack / frame
    / pc registers and the zero displacement map only to themselves;
    immediates must agree as slot tokens)."""
    c, w = _sigs(core), _sigs(window)
    if len(c) > len(w):
        return False

    def bind(ci, wi, reg, disp):
        (ct, citems), (wt, witems) = c[ci], w[wi]
        if ct != wt or len(citems) != len(witems):
            return None
        reg, disp = dict(reg), dict(disp)
        for (ck, cv), (wk, wv) in zip(citems, witems):
            if ck != wk:
                return None
            if ck == "I":
                if cv != wv:
                    return None
                continue
            m = reg if ck == "R" else disp
            fixed = _FIXED if ck == "R" else ("0",)
            if (cv in fixed or wv in fixed or cv is None or wv is None) and cv != wv:
                return None
            if cv in m:
                if m[cv] != wv:
                    return None
            elif wv in m.values():
                return None
            else:
                m[cv] = wv
        return reg, disp

    def rec(ci, start, reg, disp):
        if ci == len(c):
            return True
        for wi in range(start, len(w) - (len(c) - ci) + 1):
            b = bind(ci, wi, reg, disp)
            if b is not None and rec(ci + 1, wi + 1, *b):
                return True
        return False

    return rec(0, 0, {}, {})


# ---------------------------------------------------------------------------
# oracle predicate
# ---------------------------------------------------------------------------
_WORK = ROOT / "oracle" / "build" / "gate_min"      # under $HOME: Colima mounts it
_tls = threading.local()


def gate_verdict(body: List[str], cls: str = CLS, tag: str = "m") -> str:
    """Spectector verdict of `body` in the gate-only victim: leak / safe /
    unrunnable / dropped (the splice refused the body)."""
    from gen.decode import gate_source, GATE_ORACLE_VERSIONS
    from oracle.validators.spectector_validator import SpectectorValidator
    if not hasattr(_tls, "val"):
        (_WORK / "oracle" / "build").mkdir(parents=True, exist_ok=True)
        _tls.val = SpectectorValidator(repo_root=str(_WORK),
                                       versions_by_class=GATE_ORACLE_VERSIONS)
    body = list(body)
    try:
        src = gate_source(body, cls)
    except ValueError:
        return "dropped"
    h = hashlib.sha1("\n".join(body).encode()).hexdigest()[:16]
    gid = f"{tag}_{cls[-2:]}_{h}"
    p = _WORK / "oracle" / "build" / f"gen_spec_{gid}.c"
    p.write_text(src)
    return _tls.val.validate({"gadget_id": gid, "vuln_class": cls,
                              "spectector_source": str(p.relative_to(_WORK)),
                              "adjudicable": "yes"}).verdict


def make_gate_test(cls: str = CLS, tag: str = "m") -> Callable[[List[str]], bool]:
    """ddmin predicate: True iff the body still leaks. Memoised per body."""
    seen = {}

    def test(body: List[str]) -> bool:
        key = tuple(body)
        if key not in seen:
            seen[key] = bool(body) and gate_verdict(body, cls, tag) == "leak"
        return seen[key]

    test.calls = seen
    return test


# ---------------------------------------------------------------------------
# sources
# ---------------------------------------------------------------------------
def _x86_windows(path: Path, label: Optional[str] = None) -> List[List[str]]:
    out = []
    for line in open(path):
        r = json.loads(line)
        if r.get("arch", "x86_64") != "x86_64":
            continue
        if label and r.get("label") != label:
            continue
        s = [i.strip() for i in r["sequence"] if i.strip()
             and not i.strip().endswith(":") and not i.strip().startswith(".")]
        if len(s) >= 2:
            out.append(s)
    return out


def _slot_roundtrip(window, seed):
    """A real window as a slot-stream generator sees it (tokenise + realise)."""
    import gen.decode as gd
    r = gd.Realizer(gd.load_spec("x86_64.json"), seed=seed)
    return r.realize_sequence(_tokenizer().tokenize_sequence_slots(window))


def _loop_bodies(run_dir: Path, rounds):
    out = []
    for f in sorted(run_dir.glob("samples_s*.jsonl")):
        for line in open(f):
            r = json.loads(line)
            if r["class"] == CLS and r["round"] in rounds and r["verdict"] == "leak":
                out.append(r["realized_asm"])
    return out


def build_sources(args, rng):
    """name -> list of candidate bodies (not yet oracle-checked on this path)."""
    runs = ROOT / "gen" / "step1_runs"
    last = args.rounds - 1
    src = {
        "gen_slot_r0": _loop_bodies(runs / "slot", {0}),
        f"gen_slot_r{last}": _loop_bodies(runs / "slot", {last}),
        "gen_plain_r0": _loop_bodies(runs / "plainx86", {0}),
        f"gen_plain_r{last}": _loop_bodies(runs / "plainx86", {last}),
    }
    ben = _x86_windows(ROOT / "eval" / "data" / "realworld_benign_x86_64.jsonl")
    lens = [len(b) for b in src["gen_slot_r0"]] or [28]
    bw = []
    for _ in range(args.per_source * 12):
        s = rng.choice(ben)
        L = min(len(s), rng.choice(lens))
        st = rng.randrange(0, len(s) - L + 1)
        bw.append(_slot_roundtrip(s[st:st + L], rng.randrange(1 << 30)))
    src["benign_slot"] = bw
    tr = _x86_windows(ROOT / "v54" / "data" / "v54_train.jsonl", CLS)
    rng.shuffle(tr)
    src["train_v1_slot"] = [_slot_roundtrip(w, rng.randrange(1 << 30)) for w in tr]
    for k in src:
        seen, u = set(), []
        for b in src[k]:
            t = tuple(b)
            if t not in seen and len(b) >= 1:
                seen.add(t)
                u.append(b)
        rng.shuffle(u)
        src[k] = u
    return src


def minimise_one(job):
    from minimize_leaks import ddmin
    name, i, body = job
    test = make_gate_test(CLS, tag=f"{name}_{i}")
    if not test(body):
        return None
    core = ddmin(body, test)
    return {"source": name, "idx": i, "orig_len": len(body), "body": body,
            "core": core, "core_len": len(core), "oracle_calls": len(test.calls),
            "canonical": canonical_core(core), "template": template_core(core)}


def run(args):
    rng = random.Random(args.seed)
    src = build_sources(args, rng)
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    done = defaultdict(list)
    if out.exists() and args.resume:
        for line in open(out):
            r = json.loads(line)
            done[r["source"]].append(r)
    lock = threading.Lock()
    with ThreadPoolExecutor(args.workers) as ex:
        for name, bodies in src.items():
            have = {r["idx"] for r in done[name]}
            pos = max(have, default=-1) + 1
            while len(done[name]) < args.per_source and pos < len(bodies):
                need = args.per_source - len(done[name])
                batch = [(name, i, bodies[i]) for i in range(pos, min(len(bodies), pos + max(need, args.workers)))]
                pos += len(batch)
                for r in ex.map(minimise_one, batch):
                    if r is not None and len(done[name]) < args.per_source:
                        done[name].append(r)
                        with lock, out.open("a") as f:
                            f.write(json.dumps(r) + "\n")
                print(f"[min] {name}: {len(done[name])}/{args.per_source} "
                      f"(scanned {pos}/{len(bodies)})", flush=True)
    return [r for rs in done.values() for r in rs]


def report(rows, args):
    train_all = _x86_windows(ROOT / "v54" / "data" / "v54_train.jsonl")
    benign_all = _x86_windows(ROOT / "eval" / "data" / "realworld_benign_x86_64.jsonl")
    by = defaultdict(list)
    for r in rows:
        by[r["source"]].append(r)
    cores = {}
    for r in rows:
        cores.setdefault(r["canonical"], r["core"])
    in_train = {c: any(embeds_in(b, w) for w in train_all) for c, b in cores.items()}
    in_benign = {c: any(embeds_in(b, w) for w in benign_all) for c, b in cores.items()}
    L = ["| source | leaks minimised | body median | core median | core min-max | "
         "core size 1/2/3/4/5+ | distinct cores | distinct templates | "
         "cores not in any training window | cores not in benign corpus |",
         "|---|---|---|---|---|---|---|---|---|---|"]
    for name, rs in by.items():
        cl = [r["core_len"] for r in rs]
        hist = Counter(min(c, 5) for c in cl)
        dc = {r["canonical"] for r in rs}
        nt = [c for c in dc if not in_train[c]]
        nb = [c for c in dc if not in_benign[c]]
        L.append(f"| {name} | {len(rs)} | {statistics.median(r['orig_len'] for r in rs):.0f} | "
                 f"{statistics.median(cl):.0f} | {min(cl)}-{max(cl)} | "
                 + "/".join(str(hist[k]) for k in (1, 2, 3, 4, 5))
                 + f" | {len(dc)} | {len({r['template'] for r in rs})} | "
                 f"{len(nt)} ({len(nt)/len(dc):.2f}) | {len(nb)} ({len(nb)/len(dc):.2f}) |")
    md = [f"# Step 2 — minimal leaking cores, gate harness ({CLS}, x86_64)", "",
          f"per-source cap {args.per_source}, seed {args.seed}; 1-minimal ddmin with "
          "Spectector as the test. Core identity = slot stream (register / memory-cell "
          "renaming ignored). \"Not in\" = embeds in no window of the corpus as an ordered "
          f"subsequence under one consistent renaming ({len(train_all)} x86 training windows, "
          f"all classes; {len(benign_all)} benign functions).", ""] + L + [""]
    top = Counter(r["canonical"] for r in rows)
    md += ["## Most frequent cores", "", "| count | sources | in training | in benign | core |", "|---|---|---|---|---|"]
    for c, n in top.most_common(15):
        s = Counter(r["source"] for r in rows if r["canonical"] == c)
        md.append(f"| {n} | {dict(s)} | {in_train[c]} | {in_benign[c]} | `{'; '.join(cores[c])}` |")
    md += ["", "## Novel generator cores (not in any training window)", ""]
    for c, b in cores.items():
        srcs = {r["source"] for r in rows if r["canonical"] == c}
        if not in_train[c] and any(s.startswith("gen_") for s in srcs):
            md.append(f"- {sorted(srcs)} benign={in_benign[c]}: `{'; '.join(b)}`")
    Path(args.md).write_text("\n".join(md) + "\n")
    print("\n".join(md[:4 + len(L) + 1]))


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--per-source", type=int, default=60)
    ap.add_argument("--rounds", type=int, default=6, help="rounds in the logged loop runs")
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--workers", type=int, default=7)
    ap.add_argument("--resume", action="store_true")
    ap.add_argument("--report-only", action="store_true")
    ap.add_argument("--out", default=str(ROOT / "gen" / "step2_minimality.jsonl"))
    ap.add_argument("--md", default=str(ROOT / "gen" / "step2_minimality.md"))
    args = ap.parse_args(argv)
    if args.report_only:
        rows = [json.loads(l) for l in open(args.out)]
    else:
        if not args.resume and Path(args.out).exists():
            Path(args.out).unlink()
        rows = run(args)
    report(rows, args)
    return 0


if __name__ == "__main__":
    sys.exit(main())
