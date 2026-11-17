import sys; sys.path.insert(0, __file__.rsplit("/",1)[0])
from common import *
ps = pairs()
by = defaultdict(list)
for p in ps: by[p["sk"]].append(p)
S = {k: sides(q) for k, q in by.items()}
ext = {}
for name, path in (("v57_train", "v57/data/v57_leak_train.jsonl"), ("v57_test", "v57/data/v57_leak_test.jsonl"),
                   ("debian_benign(host source)", "eval/data/realworld_benign_x86_64.jsonl")):
    ext[name] = [{"arch": r["arch"], "sequence": r["sequence"], "label": r["label"], "group": r.get("group")} for r in load(path)]
allsets = {**S, **ext}
names = list(allsets)
print("distinct sides per set:", {k: len(v) for k, v in allsets.items()})
E1 = {k: {e1(r["sequence"]) for r in v} for k, v in allsets.items()}
E2 = {k: {e2(r["sequence"]) for r in v} for k, v in allsets.items()}
OP = {k: {ops(r["sequence"]) for r in v} for k, v in allsets.items()}
print("\n# exact overlap of whole sequences between sets: e1 (repo canonical spelling) / e2 (+whitespace, case) / identical ordered mnemonics")
for i, a in enumerate(names):
    for b in names[i+1:]:
        x = (len(E1[a] & E1[b]), len(E2[a] & E2[b]), len(OP[a] & OP[b]))
        if any(x): print(f"  {a} ~ {b}: {x[0]} / {x[1]} / {x[2]}")
print("  (pairs of sets not listed: 0 / 0 / 0)")
# same sequence labelled leak in one place and safe in another
lab = defaultdict(set)
for k, v in S.items():
    for r in v: lab[e2(r["sequence"])].add((r["label"], k))
conf = [v for v in lab.values() if len({l for l, _ in v}) > 1]
print("\nsequences that are a leaking side somewhere and a safe side elsewhere:", len(conf), Counter(tuple(sorted(v)) for v in conf).most_common(8))
print("\n# near-duplicate rate (v57/neardup.leak_rate, opcode-multiset Jaccard >= 0.8, same ISA): share of COLUMN-set sides with a near-duplicate in ROW set")
cols = list(S)
print("| row \\ col | " + " | ".join(cols) + " |"); print("|---|" + "---|" * len(cols))
for a in names:
    print(f"| {a} | " + " | ".join("-" if a == b else f"{neardup.leak_rate(allsets[a], S[b], 0.8):.3f}" for b in cols) + " |")
for thr in (0.9, 0.95):
    print(f"\nthreshold {thr}: v57_train -> each set:", {b: round(neardup.leak_rate(ext['v57_train'], S[b], thr), 3) for b in cols})
    print(f"threshold {thr}: all injected -> hardware sets:", {b: round(neardup.leak_rate(S['injected:inject']+S['injected:fence']+S['injected:reorder'], S[b], thr), 3) for b in ("variants","counterfactual","nofence","linux")})
# base-level near-dup inside hardware: do different programs resemble each other?
hw = [dict(r, group=r["base"]) for k in ("variants", "counterfactual", "nofence") for r in S[k]]
cl = neardup.clusters(hw, 0.8)
print("\nhardware sides", len(hw), "bases", len({r['base'] for r in hw}), "-> clusters (near-dup OR same base):", len(set(cl)), "largest", Counter(cl).most_common(3))
nog = neardup.clusters([dict(r, group=None) for r in hw], 0.8)
b2c = defaultdict(set)
for r, c in zip(hw, nog): b2c[r["base"]].add(c)
print("without the base link: clusters", len(set(nog)), "; bases whose sides fall in >1 cluster:", sum(1 for v in b2c.values() if len(v) > 1), "of", len(b2c))
# injected: clusters with group = host
inj = [dict(r, group=r["base"]) for k in S if k.startswith("injected") for r in S[k]]
cl = neardup.clusters(inj, 0.8)
print("injected sides", len(inj), "hosts", len({r['base'] for r in inj}), "-> clusters (near-dup OR same host):", len(set(cl)), "largest", Counter(cl).most_common(3))
hostseq = {}
for p in by["injected:inject"]: hostseq[p["base"]] = p["safe"]
for p in ps:
    if p["set"] == "injected" and p["base"] not in hostseq:
        c = len(p["core"]); L = p["leak"]
        for i in range(len(L) - c + 1):
            if L[i:i+c] == p["core"]: hostseq[p["base"]] = L[:i] + L[i+c:]; break
H = [{"arch": "x86_64", "sequence": s, "group": None, "base": b} for b, s in hostseq.items()]
for thr in (0.8, 0.9, 1.0):
    cl = neardup.clusters(H, thr)
    print(f"hosts alone ({len(H)}): near-dup clusters at {thr}: {len(set(cl))}, largest {Counter(cl).most_common(1)[0][1]}")
print("host e2-distinct:", len({e2(r['sequence']) for r in H}), "ordered-mnemonic-distinct:", len({ops(r['sequence']) for r in H}))
print("hosts with a near-duplicate (0.8) in v57_train:", round(neardup.leak_rate(ext["v57_train"], H, 0.8), 3), "; in v57 train SAFE only:", round(neardup.leak_rate([r for r in ext["v57_train"] if r["label"]=="SAFE"], H, 0.8), 3))
# linux commit-level
lx = [dict(r, group=r["base"].split("::")[0]) for r in S["linux"]]
cl = neardup.clusters(lx, 0.8); print("linux sides", len(lx), "commits", len({r['group'] for r in lx}), "clusters", len(set(cl)))
# cores
cores = {tuple(p["core"]) for p in ps if p["set"] == "injected"}
def contig(core, seq):
    n = len(core)
    return any(seq[i:i+n] == core for i in range(len(seq) - n + 1))
tgt = {k: [e2(r["sequence"]) for r in v] for k, v in allsets.items() if not k.startswith("injected")}
tgo = {k: [ops(r["sequence"]) for r in v] for k, v in allsets.items() if not k.startswith("injected")}
print("\n# cores (", len(cores), ") found as a contiguous run inside a sequence of another set: exact text (e2) / same ordered mnemonics")
for k in tgt:
    ce = sum(any(contig(e2(c), s) for s in tgt[k]) for c in cores)
    co = sum(any(contig(ops(c), s) for s in tgo[k]) for c in cores)
    sh = sum(any(contig(ops(c), s) for c in cores) for s in tgo[k])
    print(f"  {k}: cores with exact hit {ce}; cores with mnemonic-run hit {co}; share of that set's sequences containing some core's mnemonic run {sh/len(tgo[k]):.3f}")
sys.path[:0] = [str(ROOT / "gen"), str(ROOT / "spec"), str(ROOT / "v54")]
try:
    import minimality_gate as mg
    import random
    rng = random.Random(0)
    for k in ("variants", "counterfactual", "nofence", "linux", "v57_train"):
        seqs = [r for r in allsets[k]]
        if len(seqs) > 300: seqs = rng.sample(seqs, 300)
        hit = Counter(); nc = 0
        for r in seqs:
            s = [l.strip() for l in r["sequence"]]
            if any(mg.embeds_in(list(c), s) for c in cores): hit[r["label"] if r["label"] in ("LEAK","SAFE") else "x"] += 1
        tot = Counter(r["label"] if r["label"] in ("LEAK","SAFE") else "x" for r in seqs)
        print(f"  gen/minimality_gate.embeds_in (in order, gaps allowed, consistent renaming) on {len(seqs)} sequences of {k}: contain some core: {dict(hit)} of {dict(tot)}")
except Exception as e:
    print("embeds_in unavailable:", repr(e)[:300])
