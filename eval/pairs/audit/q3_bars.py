"""Shortcut bars for each candidate split: fitted on the train part, scored on each test part."""
import sys; sys.path.insert(0, __file__.rsplit("/",1)[0])
from common import *
from groups import injected_units, components, group_of
import random, statistics as st
from eval.pairs import score as SC
from sklearn.metrics import roc_auc_score

ps = pairs()
inj = [p for p in ps if p["set"] == "injected"]
U = injected_units(inj, 0.8)
_opc = {}
def O(seq):
    k = tuple(seq)
    if k not in _opc: _opc[k] = ops(seq)
    return _opc[k]
FEATS = {"length": lambda s: len(O(s)),
         "barriers": lambda s: SC._fences(s),
         "memory operands": lambda s: sum("(" in l or "[" in l for l in s)}

def auc(pairs_, f):
    w = sum(1.0 if f(p["leak"]) > f(p["safe"]) else 0.5 if f(p["leak"]) == f(p["safe"]) else 0.0 for p in pairs_)
    return w / len(pairs_) if pairs_ else float("nan")

def fit_dir(train, f):
    return 1 if auc(train, f) >= 0.5 else -1

def best_token(train):
    toks = Counter(t for p in train for t in set(O(p["leak"])) ^ set(O(p["safe"])))
    best = ("-", 1, 0.5)
    for t in toks:
        a = auc(train, lambda s: t in O(s))
        for sgn, v in ((1, a), (-1, 1 - a)):
            if v > best[2]: best = (t, sgn, v)
    return best

def side_recs(pairs_):
    return [dict(r, label="SPECTRE_V1" if r["label"] == "LEAK" else "BENIGN") for r in sides(pairs_)]

def bars(train, tests, tag):
    out = []
    dirs = {n: fit_dir(train, f) for n, f in FEATS.items()}
    tok = best_token(train)
    tr_sides = sides(train)
    gb = {b: SC.train_gbm(tr_sides, 0, b) for b in (False, True)}
    trs = side_recs(train)
    for name, te in tests.items():
        if not te: continue
        row = {"split": tag, "test": name, "n": len(te), "bases": len({p["base"] for p in te})}
        for n, f in FEATS.items():
            row[n] = auc(te, lambda s, f=f, d=dirs[n]: d * f(s))
            row[n + " (best direction on test)"] = max(auc(te, f), 1 - auc(te, f))
        row["token"] = f"{tok[0]}{'=>leak' if tok[1] > 0 else '=>safe'}"
        row["token auc"] = auc(te, lambda s: tok[1] * (tok[0] in O(s)))
        for b in (False, True):
            gb[b].prime([p[k] for p in te for k in ("leak", "safe")])
            row["gbm+bi" if b else "gbm"] = auc(te, gb[b])
        tes = side_recs(te)
        row["side length-bin"] = checks.shortcut_accuracy(trs, tes, checks.length_bin)
        bo = checks.best_single_opcode(trs, tes)
        row["side opcode"] = f"{bo[0]}=>{bo[1]} {bo[2]:.3f}" if bo else "-"
        y = [r["label"] != "BENIGN" for r in tes]
        for b in (False, True):
            gb[b].prime([r["sequence"] for r in tes])
            sc = [gb[b](r["sequence"]) for r in tes]
            row[("side gbm+bi" if b else "side gbm") + " auroc"] = roc_auc_score(y, sc) if len(set(y)) > 1 else float("nan")
            row[("side gbm+bi" if b else "side gbm") + " balacc"] = checks._bal_acc([s > 0.5 for s in sc], y)
        out.append(row)
    return out

COLS = ["n", "bases", "length", "barriers", "memory operands", "token", "token auc", "gbm", "gbm+bi",
        "side length-bin", "side opcode", "side gbm auroc", "side gbm+bi auroc", "side gbm+bi balacc"]
def show(rows, title):
    print(f"\n### {title}")
    print("| train -> test | " + " | ".join(COLS) + " |"); print("|---|" + "---|" * len(COLS))
    for r in rows:
        print(f"| {r['split']} -> {r['test']} | " + " | ".join(f"{r[c]:.3f}" if isinstance(r[c], float) else str(r[c]) for c in COLS) + " |")

S = defaultdict(list)
for p in ps: S[p["sk"]].append(p)
HW = {k: S[k] for k in ("variants", "counterfactual", "nofence")}
INJ = {k: S["injected:" + k] for k in ("inject", "fence", "reorder")}

# test-only context: best achievable by a one-feature rule if direction were known
print("### in-set one-feature ceilings (direction chosen on the same set)")
for k, q in sorted(S.items()):
    print(f"  {k}: " + ", ".join(f"{n} {max(auc(q, f), 1-auc(q, f)):.3f} ({'more=>leak' if auc(q,f)>=0.5 else 'fewer=>leak'}, ties {sum(f(p['leak'])==f(p['safe']) for p in q)/len(q):.2f})" for n, f in FEATS.items())
          + f"; multiset identical {sum(Counter(O(p['leak']))==Counter(O(p['safe'])) for p in q)/len(q):.2f}")

def cross(seed, hosts_frac=(0.6, 0.2)):
    rng = random.Random(seed)
    H = sorted({h for h, _ in U.values()}); T = sorted({t for _, t in U.values()})
    rng.shuffle(H); rng.shuffle(T)
    part = lambda xs: {x: ("train" if i < hosts_frac[0]*len(xs) else "val" if i < sum(hosts_frac)*len(xs) else "test") for i, x in enumerate(xs)}
    ph, pt = part(H), part(T)
    return {p["pair_id"]: (ph[U[p["pair_id"]][0]] if ph[U[p["pair_id"]][0]] == pt[U[p["pair_id"]][1]] else "dropped") for p in inj}

# ---- A: train on injected (two kinds, or all), test on hardware + held-out kind (as the data stands)
rows = bars(inj, HW, "A0 all injected")
for K in INJ:
    tr = [p for p in inj if p["kind"] != K]
    rows += bars(tr, {**HW, f"injected:{K} (held-out kind, as is)": INJ[K]}, f"A minus {K}")
show(rows, "A: train on injected kinds, test on hardware sets and the held-out kind (existing pairs, no grouping)")

# ---- B: A with held-out kind restricted to host clusters and core templates never seen in training
rows = []
for K in INJ:
    for seed in range(3):
        side = cross(seed, (0.7, 0.0))        # 70/30 hosts and templates; mixed pairs dropped
        tr = [p for p in inj if p["kind"] != K and side[p["pair_id"]] == "train"]
        te = [p for p in inj if p["kind"] == K and side[p["pair_id"]] == "test"]
        rows += bars(tr, {f"injected:{K} (unseen hosts+cores, seed {seed})": te} if seed else {**HW, f"injected:{K} (unseen hosts+cores, seed {seed})": te}, f"B minus {K} [train {len(tr)}]")
show(rows, "B: as A, held-out kind limited to unseen host clusters and core templates; training limited to the other side")

# ---- C: group-by-base in every set (60/20/20), hardware bases joint across the three hardware sets
def csplit(seed):
    rng = random.Random(seed)
    side = {}
    g = defaultdict(list)
    for p in ps:
        if p["set"] != "injected":
            g[("hw", p["cls"]) if p["set"] in HW else ("lx",), group_of(p)].append(p)
    strata = defaultdict(list)
    for (s, grp) in g: strata[s].append(grp)
    for s, grps in strata.items():
        grps = sorted(grps); rng.shuffle(grps)
        for i, grp in enumerate(grps):
            sd = "train" if i < 0.6 * len(grps) else "val" if i < 0.8 * len(grps) else "test"
            for p in g[(s, grp)]: side[p["pair_id"]] = sd
    side.update(cross(seed))
    return side
rows = []; sizes = []
for seed in range(3):
    side = csplit(seed)
    tr = [p for p in ps if side[p["pair_id"]] == "train"]
    te = {k: [p for p in q if side[p["pair_id"]] == "test"] for k, q in sorted(S.items())}
    sizes.append({k: (sum(side[p["pair_id"]] == s for p in q) for s in ("train", "val", "test", "dropped")) for k, q in sorted(S.items())})
    rows += bars(tr, te, f"C seed {seed} [train {len(tr)}]")
    rows += bars([p for p in tr if p["set"] in HW], {k: te[k] for k in HW}, f"C-hw-only seed {seed}")
show(rows, "C: group-by-base 60/20/20 inside every set; train = union of train parts (and hardware-only variant)")
print("C sizes train/val/test/dropped per set:", [{k: tuple(v) for k, v in s.items()} for s in sizes][:1])

# ---- D: leave one set out (injected counted as one set); D' removes training pairs sharing a group with the test set
comp = components(inj, U)
SETS = {"variants": S["variants"], "counterfactual": S["counterfactual"], "nofence": S["nofence"], "injected": inj,
        "linux": S["linux"], "linux_arm64": S["linux_arm64"]}
rows = []
for k, te in SETS.items():
    tr = [p for p in ps if p["set"] != k]
    rows += bars(tr, {k: te}, "D naive")
    tg = {group_of(p, comp) for p in te}
    tr2 = [p for p in tr if group_of(p, comp) not in tg]
    if len(tr2) != len(tr):
        rows += bars(tr2, {k: te}, f"D' (shared bases removed from train, train {len(tr)}->{len(tr2)})")
show(rows, "D: leave one set out")
# hardware held out as a block
rows = bars([p for p in ps if p["set"] not in HW], HW, "D-block: injected+linux")
show(rows, "D-block: train on injected + both Linux sets, test on the three hardware sets")
