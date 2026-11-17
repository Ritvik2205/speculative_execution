import sys; sys.path.insert(0, __file__.rsplit("/",1)[0])
from common import *
import statistics as st
ps = pairs()
by = defaultdict(list)
for p in ps: by[p["sk"]].append(p)
print("| set | pairs | bases | pairs/base med (min-max) | distinct leak sides | distinct safe sides | med len leak | med len safe | cls |")
for k, q in sorted(by.items()):
    c = Counter(p["base"] for p in q)
    v = sorted(c.values())
    print(f"| {k} | {len(q)} | {len(c)} | {st.median(v)} ({v[0]}-{v[-1]}) | {len({e1(p['leak']) for p in q})} | "
          f"{len({e1(p['safe']) for p in q})} | {st.median(len(p['leak']) for p in q)} | {st.median(len(p['safe']) for p in q)} | "
          f"{dict(Counter(p['cls'] for p in q))} |")
# hardware: violation ids
print("\n# hardware violation ids per set, and shared between sets")
hv = {s: {viol(p["base"]) for p in by[s]} for s in ("variants", "counterfactual", "nofence")}
hb = {s: {p["base"] for p in by[s]} for s in hv}
for s in hv: print(s, "violations", len(hv[s]), "bases(cls::viol)", len(hb[s]))
import itertools
for a, b in itertools.combinations(hv, 2):
    print(a, "&", b, "violations", len(hv[a] & hv[b]), "bases", len(hb[a] & hb[b]))
print("all three:", len(hv["variants"] & hv["counterfactual"] & hv["nofence"]), "union", len(set.union(*hv.values())))
allb = set.union(*hb.values()); vc = Counter(viol(b) for b in allb)
print("violation ids filed under >1 class:", sum(1 for v in vc.values() if v > 1))
# upstream record counts
for name, path in (("variants","eval/data/revizor_hwlabel_variants.jsonl"),("counterfactual","eval/data/revizor_hwlabel_cf_heldout.jsonl"),("nofence","eval/data/revizor_hwlabel_nofence_heldout.jsonl")):
    rs = load(path)
    g = defaultdict(lambda: [0,0])
    for r in rs: g[r["vuln_class"]+"::"+viol(r["src_path"])][r["label"]=="BENIGN"] += 1
    both = sum(1 for a,b in g.values() if a and b)
    print(f"{name}: upstream records {len(rs)}, programs {len(g)}, programs with both a leaking and a mitigated variant {both}, "
          f"leak-only {sum(1 for a,b in g.values() if a and not b)}, safe-only {sum(1 for a,b in g.values() if b and not a)}; hw_runs {dict(Counter(r['hw_runs'] for r in rs))}; hits {dict(Counter((r['hw_hits'],r['hw_runs']) for r in rs))}")
    print("   variant x label:", dict(sorted(Counter((r["variant"], "safe" if r["label"]=="BENIGN" else "leak") for r in rs).items())))
# v57 train: violations shared
tr = load("v57/data/v57_leak_train.jsonl"); te = load("v57/data/v57_leak_test.jsonl")
tv = {viol(str(r.get("group"))+" "+str(r.get("src_path"))) for r in tr+te} - {None}
print("\nv57 train+test violation ids:", len(tv), "shared with pair hardware sets:", len(tv & set.union(*hv.values())))
# injected
inj = [p for p in ps if p["set"] == "injected"]
hosts = Counter(p["base"] for p in inj); cores = Counter(tuple(p["core"]) for p in inj)
print("\n# injected: hosts", len(hosts), "cores", len(cores), "distinct leak sides", len({e1(p['leak']) for p in inj}))
v = sorted(cores.values()); print("pairs per core: med", st.median(v), "min", v[0], "max", v[-1], "top5", v[-5:])
for k in ("inject","fence","reorder"):
    q = by["injected:"+k]
    print(k, "hosts", len({p['base'] for p in q}), "cores", len({tuple(p['core']) for p in q}), "core len", dict(sorted(Counter(len(p['core']) for p in q).items())))
lk = defaultdict(set)
for p in inj: lk[e1(p["leak"])].add(p["kind"])
print("leak sides by the kinds they appear in:", dict(Counter(tuple(sorted(v)) for v in lk.values())))
for k in ("inject","fence","reorder"):
    q = by["injected:"+k]
    others = {e1(p["leak"]) for p in inj if p["kind"] != k}
    print(f"  kind {k}: {sum(e1(p['leak']) in others for p in q)}/{len(q)} pairs have a leaking side that is also the leaking side of a pair of another kind")
safes = defaultdict(set)
for p in inj: safes[e1(p["safe"])].add(p["kind"])
print("safe sides: distinct", len(safes), "inject-kind safe sides distinct", len({e1(p['safe']) for p in by['injected:inject']}))
# host/core bipartite components
par = {}
def f(x):
    while par.setdefault(x, x) != x:
        par[x] = par[par[x]]; x = par[x]
    return x
for p in inj: par[f(("h", p["base"]))] = f(("c", tuple(p["core"])))
comp = Counter(f(("h", p["base"])) for p in inj)
print("host-core connected components:", len(comp), "largest holds", max(comp.values()), "of", len(inj), "pairs")
# cores vs t1_cores source
t1 = load("gen/step2_runs/t1_cores.jsonl")
src = defaultdict(set)
for r in t1: src[tuple(r["core"])].add(r["source"])
print("t1 cores rows", len(t1), "distinct", len(src), "; used in pairs", len(cores), "; pair cores by source:", dict(Counter(tuple(sorted(src.get(c, {'?'}))) for c in cores)))
ctl = load("gen/step2_runs/t1_controls.jsonl")
hostsrc = {}
for r in ctl:
    if r["cond"].startswith("benign") and r["verdict"] == "safe" and len(r["body"]) >= 8:
        hostsrc.setdefault(hashlib.sha1(json.dumps([r["body"]]).encode()).hexdigest()[:12], r["cond"].split("#")[0])
print("eligible hosts in controls:", len(hostsrc), dict(Counter(hostsrc.values())))
print("pair hosts by controls condition:", dict(Counter(hostsrc.get(b.split("::")[1], "?") for b in hosts)))
at = Counter()
for p in inj:
    if p["kind"] == "inject":
        L, S, c = p["leak"], p["safe"], len(p["core"])
        i = next(i for i in range(len(S)+1) if L[:i] == S[:i] and L[i+c:] == S[i:])
        at[round(10 * i / max(1, len(S)))] += 1
print("inject position decile (0=start,10=end):", dict(sorted(at.items())))
print("host length:", sorted(Counter(len(p['safe']) for p in by['injected:inject']).items()))
# linux
lx = [p for p in ps if p["set"].startswith("linux")]
for s in ("linux", "linux_arm64"):
    q = by[s]
    commits = Counter(p["base"].split("::")[0].split(":")[1] for p in q)
    fn = Counter(p["base"].split("::")[1] for p in q)
    v = sorted(commits.values())
    print(f"\n{s}: pairs {len(q)}, commits {len(commits)}, pairs/commit med {st.median(v)} max {v[-1]}, distinct function names {len(fn)}, names in >1 commit {sum(1 for x in fn.values() if x>1)}")
cx = {p["base"].split(":",1)[1] for p in by["linux"]}; ca = {p["base"].split(":",1)[1] for p in by["linux_arm64"]}
print("commit::function shared x86/arm64:", len(cx & ca), "x86 only", len(cx - ca), "arm only", len(ca - cx))
print("commits shared:", len({b.split('::')[0] for b in cx} & {b.split('::')[0] for b in ca}), "of", len({b.split('::')[0] for b in cx}), len({b.split('::')[0] for b in ca}))
