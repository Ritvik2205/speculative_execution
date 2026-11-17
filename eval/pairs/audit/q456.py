import sys; sys.path.insert(0, __file__.rsplit("/",1)[0])
from common import *
from groups import injected_units, group_of
import math, random, hashlib
ps = pairs()
S = defaultdict(list)
for p in ps: S[p["sk"]].append(p)
O = lambda s: ops(s)
def auc(q, f):
    return sum(1.0 if f(p["leak"]) > f(p["safe"]) else 0.5 if f(p["leak"]) == f(p["safe"]) else 0.0 for p in q) / len(q)
print("# in-set best single mnemonic (chosen on the same set): pair level auc; single-side balanced accuracy over distinct sides")
for k, q in sorted(S.items()):
    toks = Counter(t for p in q for t in set(O(p["leak"])) ^ set(O(p["safe"])))
    best = max(((max(a := auc(q, lambda s, t=t: t in O(s)), 1 - a), t, "leak" if a > .5 else "safe") for t in toks), default=(0.5, "-", "-"))
    sd = sides(q); y = [r["label"] for r in sd]; sets_ = [set(O(r["sequence"])) for r in sd]
    alltok = Counter(t for s in sets_ for t in s)
    bs = max(((max(b := checks._bal_acc(["LEAK" if t in s else "SAFE" for s in sets_], y), 1 - b), t) for t in alltok))
    print(f"  {k}: pair {best[0]:.3f} `{best[1]}` present => {best[2]}; side {bs[0]:.3f} `{bs[1]}`; distinct sides leak/safe {y.count('LEAK')}/{y.count('SAFE')}")
print("\n# vocabulary: share of mnemonic occurrences (and types) in the column set that occur anywhere in the row set")
V = {k: Counter(o for r in sides(q) for o in O(r["sequence"])) for k, q in S.items()}
V["injected(all)"] = sum((V[k] for k in V if k.startswith("injected")), Counter())
V["v57_train"] = Counter(o for r in load("v57/data/v57_leak_train.jsonl") for o in O(r["sequence"]))
for a in ("injected(all)", "v57_train", "variants"):
    print(f"  {a}: " + ", ".join(f"{b} {sum(n for t, n in V[b].items() if t in V[a]) / sum(V[b].values()):.2f} ({sum(t in V[a] for t in V[b])}/{len(V[b])} types)" for b in ("variants", "counterfactual", "nofence", "linux", "injected(all)") if b != a))
print("  most common hardware mnemonics absent from injected:", [t for t, _ in V["variants"].most_common(40) if t not in V["injected(all)"]][:15])
print("  line format: hardware lines starting with a tab:", sum(l.startswith("\t") for p in S["variants"] for l in p["leak"]), "; injected lines containing a tab:", round(sum("\t" in l for p in S["injected:fence"] for l in p["leak"]) / sum(len(p["leak"]) for p in S["injected:fence"]), 2), "; hardware lines containing a tab:", round(sum("\t" in l for p in S["variants"] for l in p["leak"]) / sum(len(p["leak"]) for p in S["variants"]), 3))
print("  hardware sides containing `(%r14`:", round(sum(any("(%r14" in l for l in r["sequence"]) for k in ("variants","counterfactual","nofence") for r in sides(S[k])) / sum(len(sides(S[k])) for k in ("variants","counterfactual","nofence")), 3),
      "; injected sides containing `(%r14`:", sum(any("(%r14" in l for l in r["sequence"]) for k in S if k.startswith("inj") for r in sides(S[k])))
print("\n# class by set: pairs; distinct leak sides / distinct safe sides")
for k, q in sorted(S.items()):
    c = defaultdict(lambda: [0, set(), set(), set()])
    for p in q:
        x = c[p["cls"]]; x[0] += 1; x[1].add(e1(p["leak"])); x[2].add(e1(p["safe"])); x[3].add(p["base"])
    print(f"  {k}: " + "; ".join(f"{cls} {x[0]} pairs, {len(x[3])} bases, {len(x[1])}/{len(x[2])}" for cls, x in sorted(c.items())))
hw = [r for k in ("variants", "counterfactual", "nofence") for r in sides(S[k])]
maj = {c: Counter(r["label"] for r in hw if r["cls"] == c).most_common(1)[0][0] for c in {r["cls"] for r in hw}}
print("  hardware single sides: class-majority rule balanced accuracy", round(checks._bal_acc([maj[r["cls"]] for r in hw], [r["label"] for r in hw]), 3), maj)
up = [r for f in ("variants", "cf_heldout", "nofence_heldout") for r in load(f"eval/data/revizor_hwlabel_{f}.jsonl")]
c = Counter((r["vuln_class"], r["label"] == "BENIGN") for r in up)
print("  upstream hardware records (incl. programs with no opposite-label partner): leak share per class", {k: round(c[(k, False)] / (c[(k, False)] + c[(k, True)]), 2) for k in sorted({a for a, _ in c})})
vk = Counter((p["kind"], p["cls"]) for p in S["variants"])
print("  variants kinds x class:", dict(sorted(vk.items())))
print("\n# fresh generation capacity")
ctl = load("gen/step2_runs/t1_controls.jsonl"); seen = {}; 
for r in ctl:
    if r["cond"].startswith("benign") and r["verdict"] == "safe" and len(r["body"]) >= 8: seen.setdefault(tuple(r["body"]), r["cond"].split("#")[0])
H = [{"arch": "x86_64", "sequence": list(b), "group": None} for b in seen]
for thr in (0.8, 0.9):
    cl = neardup.clusters(H, thr); print(f"  eligible hosts {len(H)} -> near-duplicate clusters at {thr}: {len(set(cl))} (largest {Counter(cl).most_common(1)[0][1]})")
t1 = load("gen/step2_runs/t1_cores.jsonl"); cs = {tuple(r["core"]): r for r in t1 if r["core_control"] == "safe"}
print("  eligible cores", len(cs), "templates", len({r["template"] for r in cs.values()}), "core lengths", dict(sorted(Counter(len(c) for c in cs).items())), "cores with length 1 (no reorder/fence side):", sum(len(c) == 1 for c in cs))
print("  cores containing a conditional branch or label:", sum(any(l.strip().startswith("j") or l.strip().endswith(":") for l in c) for c in cs))
print("  host lengths: min/median/max", min(len(b) for b in seen), sorted(len(b) for b in seen)[len(seen)//2], max(len(b) for b in seen))
print("  sources of unused Debian functions:", Counter(r["package"] for r in load("eval/data/realworld_benign_x86_64.jsonl")))
print("  (host, core, position) combinations available ~", sum(len(b) + 1 for b in seen) * len(cs))
print("\n# sizes and interval widths (95%, normal approximation at auc 0.5 and 0.8; n = pairs is optimistic, n = bases is conservative)")
hwid = lambda p: hashlib.sha1(viol(p["base"]).encode()).hexdigest()
def ci(n, p=0.5): return 1.96 * math.sqrt(p * (1 - p) / n) if n else float("nan")
def line(name, q):
    b = len({group_of(p, defaultdict(int)) if p["set"] != "injected" else p["base"] for p in q})
    print(f"  {name}: {len(q)} pairs, {b} bases; half-width at 0.5: ±{ci(len(q)):.3f} (pairs) ±{ci(b):.3f} (bases); at 0.8: ±{ci(len(q), .8):.3f} / ±{ci(b, .8):.3f}")
for k in ("variants", "counterfactual", "nofence"):
    line(k + " (whole)", S[k]); line(k + " SPECTRE_V1 only", [p for p in S[k] if p["cls"] == "SPECTRE_V1"])
    dev = [p for p in S[k] if int(hwid(p), 16) % 5 == 0]; line(k + " hardware-dev (sha1(violation id) mod 5 == 0)", dev); line(k + " hardware-test (rest)", [p for p in S[k] if int(hwid(p), 16) % 5 != 0])
allhw = [p for k in ("variants", "counterfactual", "nofence") for p in S[k]]
print("  hardware violation ids: dev", len({viol(p['base']) for p in allhw if int(hwid(p), 16) % 5 == 0}), "test", len({viol(p['base']) for p in allhw if int(hwid(p), 16) % 5 != 0}))
print("  dev/test class mix (bases):", Counter((p["cls"], int(hwid(p), 16) % 5 == 0) for p in {p["base"]: p for p in allhw}.values()))
for k in ("linux", "linux_arm64", "injected:reorder", "injected:fence", "injected:inject"): line(k, S[k])
# C sizes
inj = [p for p in ps if p["set"] == "injected"]; U = injected_units(inj, 0.8)
for seed in range(3):
    rng = random.Random(seed); side = {}
    g = defaultdict(list)
    for p in ps:
        if p["set"] != "injected": g[("hw", p["cls"]) if not p["set"].startswith("linux") else ("lx",), group_of(p)].append(p)
    st_ = defaultdict(list)
    for s, grp in g: st_[s].append(grp)
    for s, grps in st_.items():
        grps = sorted(grps); rng.shuffle(grps)
        for i, grp in enumerate(grps):
            for p in g[(s, grp)]: side[p["pair_id"]] = "train" if i < 0.6 * len(grps) else "val" if i < 0.8 * len(grps) else "test"
    Hs = sorted({h for h, _ in U.values()}); Ts = sorted({t for _, t in U.values()}); rng.shuffle(Hs); rng.shuffle(Ts)
    part = lambda xs: {x: ("train" if i < 0.6 * len(xs) else "val" if i < 0.8 * len(xs) else "test") for i, x in enumerate(xs)}
    ph, pt = part(Hs), part(Ts)
    for p in inj: side[p["pair_id"]] = ph[U[p["pair_id"]][0]] if ph[U[p["pair_id"]][0]] == pt[U[p["pair_id"]][1]] else "dropped"
    print(f"  C seed {seed}: " + "; ".join(f"{k} " + "/".join(str(sum(side[p['pair_id']] == s for p in q)) for s in ("train", "val", "test", "dropped")) for k, q in sorted(S.items())) + "  (train/val/test/dropped)")
    print("     bases in test:", {k: len({p["base"] for p in q if side[p["pair_id"]] == "test"}) for k, q in sorted(S.items())})
