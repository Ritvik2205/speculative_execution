import sys; sys.path.insert(0, __file__.rsplit("/",1)[0])
from common import *
import difflib
ps = pairs()
by = defaultdict(list)
for p in ps: by[p["sk"]].append(p)
def sig(p):
    a, b = ops(p["leak"]), ops(p["safe"])
    rem, add = Counter(), Counter()
    for tag, i1, i2, j1, j2 in difflib.SequenceMatcher(None, a, b, autojunk=False).get_opcodes():
        if tag != "equal":
            rem.update(a[i1:i2]); add.update(b[j1:j2])
    f = lambda c: ",".join(f"{k}x{v}" if v > 1 else k for k, v in sorted(c.items())) or "nothing"
    return rem, add, f"leak-only[{f(rem)}] safe-only[{f(add)}]"
def coarse(rem, add):
    r, a = sum(rem.values()), sum(add.values())
    fr, fa = rem.get("lfence", 0), add.get("lfence", 0)
    if r == 0 and a == 0: return "same mnemonics in same order (operands differ)"
    if r == fr and a == fa:
        if fa and not fr: return "safe side = leak side + lfence only"
        if fr and not fa: return "leak side = safe side + lfence only"
        return "only lfence moved (both sides have fences, different places)"
    if a == 0: return "leak side has extra non-fence instructions, safe side has none extra" if not fr else "leak side has extra instructions incl. lfence"
    if r == 0: return "safe side has extra non-fence instructions" if not fa else "safe side has extra instructions incl. lfence"
    if rem == add: return "same mnemonic multiset, reordered"
    return "both sides have instructions the other lacks"
for k, q in sorted(by.items()):
    S = [sig(p) for p in q]
    c = Counter(s[2] for s in S); cc = Counter(coarse(s[0], s[1]) for s in S)
    nd = [sum(s[0].values()) + sum(s[1].values()) for s in S]
    print(f"\n## {k}: {len(q)} pairs, {len(c)} distinct mnemonic-level diffs; diff size median {sorted(nd)[len(nd)//2]} instructions (max {max(nd)})")
    for name, n in cc.most_common(): print(f"   {n:4d} ({n/len(q):.2f})  {name}")
    for name, n in c.most_common(4): print(f"      top exact: {n:4d} ({n/len(q):.2f})  {name[:230]}")
    # line-level: text differences other than mnemonics (operands), e.g. jump targets
    t = Counter()
    for p in q:
        a, b = e2(p["leak"]), e2(p["safe"])
        for tag, i1, i2, j1, j2 in difflib.SequenceMatcher(None, a, b, autojunk=False).get_opcodes():
            if tag == "replace" and (i2 - i1) == (j2 - j1):
                for x, y in zip(a[i1:i2], b[j1:j2]):
                    if x.split()[0] == y.split()[0]: t[x.split()[0]] += 1
    if t: print("      same-mnemonic lines whose operand text differs between sides:", t.most_common(6))
    lf = Counter((sum(o == "lfence" for o in ops(p["leak"])) > 0, sum(o == "lfence" for o in ops(p["safe"])) > 0) for p in q)
    print("      (leak side has a barrier, safe side has a barrier):", dict(lf))
