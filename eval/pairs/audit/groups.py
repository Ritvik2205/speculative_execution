"""Grouping units used by the candidate splits."""
import sys; sys.path.insert(0, __file__.rsplit("/",1)[0])
from common import *
import random

def host_seq(p):
    if p["kind"] == "inject": return p["safe"]
    c, L = len(p["core"]), p["leak"]
    for i in range(len(L) - c + 1):
        if L[i:i+c] == p["core"]: return L[:i] + L[i+c:]

def injected_units(inj, thr=0.8):
    """host cluster id (v57/neardup.clusters at thr over distinct hosts) and core template id per pair."""
    hs = {}
    for p in inj: hs.setdefault(p["base"], host_seq(p))
    keys = sorted(hs)
    cl = neardup.clusters([{"arch": "x86_64", "sequence": hs[k], "group": None} for k in keys], thr)
    hc = dict(zip(keys, cl))
    t1 = load("gen/step2_runs/t1_cores.jsonl")
    tmpl = {tuple(r["core"]): r["template"] for r in t1}
    return {p["pair_id"]: (f"H{hc[p['base']]}", "T:" + tmpl.get(tuple(p["core"]), "|".join(ops(p["core"])))) for p in inj}

def components(inj, units):
    par = {}
    def f(x):
        while par.setdefault(x, x) != x:
            par[x] = par[par[x]]; x = par[x]
        return x
    for p in inj:
        h, t = units[p["pair_id"]]
        par[f(h)] = f(t)
    return {p["pair_id"]: f(units[p["pair_id"]][0]) for p in inj}

def group_of(p, inj_comp=None):
    if p["set"] in ("variants", "counterfactual", "nofence"): return "hw::" + p["base"]
    if p["set"].startswith("linux"): return "lx::" + p["base"].split("::")[0].split(":")[1]   # commit, both ISAs
    return "inj::" + str(inj_comp[p["pair_id"]])

if __name__ == "__main__":
    ps = pairs(); inj = [p for p in ps if p["set"] == "injected"]
    for thr in (0.8, 1.0):
        u = injected_units(inj, thr)
        print(f"host clusters at {thr}:", len({h for h, _ in u.values()}), "core templates:", len({t for _, t in u.values()}), "distinct cores:", len({tuple(p['core']) for p in inj}))
        comp = components(inj, u); c = Counter(comp.values())
        print("  components over (host cluster, core template):", len(c), "largest", c.most_common(4), "of", len(inj))
    u = injected_units(inj, 0.8)
    # cross split: partition host clusters and templates independently; keep pairs with both on one side
    for seed in range(3):
        rng = random.Random(seed)
        H = sorted({h for h, _ in u.values()}); T = sorted({t for _, t in u.values()})
        rng.shuffle(H); rng.shuffle(T)
        def part(xs): 
            n = len(xs); return {x: ("train" if i < 0.6*n else "val" if i < 0.8*n else "test") for i, x in enumerate(xs)}
        ph, pt = part(H), part(T)
        c = Counter((ph[u[p["pair_id"]][0]] if ph[u[p["pair_id"]][0]] == pt[u[p["pair_id"]][1]] else "dropped", p["kind"]) for p in inj)
        tot = Counter(ph[u[p["pair_id"]][0]] if ph[u[p["pair_id"]][0]] == pt[u[p["pair_id"]][1]] else "dropped" for p in inj)
        print(f"  cross split 60/20/20 seed {seed}: pairs", dict(tot), dict(sorted(c.items())))
    tc = Counter(t for _, t in u.values()); print("pairs per template: top", tc.most_common(5), "templates", len(tc))
