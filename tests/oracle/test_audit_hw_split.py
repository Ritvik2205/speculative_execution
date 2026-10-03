"""audit_hw_split on tiny synthetic fixtures (no torch/model)."""
import importlib.util, json, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("audit_hw_split_t", ROOT / "oracle/revizor/audit_hw_split.py")
audit = importlib.util.module_from_spec(spec); sys.modules[spec.name] = audit
spec.loader.exec_module(audit)

CLS = "MDS"
import random
OPS = [f"op{k}" for k in range(60)]

def seq(i, n=14, fence=None):
    rr = random.Random(i)
    s = [f"{rr.choice(OPS)} %rax, %rbx" for _ in range(n)]
    if fence == "twin":
        s.insert(n // 2, "lfence")
    elif fence == "mis":
        s.insert(0, "lfence")
    return s

def rec(label, grp, s, **kw):
    return {"label": label, "arch": "x86_64", "sequence": s, "group": grp, **kw}

def triple(i, with_mis=True, seed=None, tail_seed=None):
    sp = f"x/{seed}/violation-{i}/p.asm" if seed else None
    kw = {"src_path": sp} if sp else {}
    out = [rec(CLS, f"g{i}", seq(i), source="revizor_hw_i5_8300h", **kw),
           rec("BENIGN", f"g{i}_fenced", seq(i, fence="twin"), source="synth_mitigated_twin")]
    if with_mis:
        out.append(rec(CLS, f"g{i}_misfenced", seq(i, fence="mis"), source="synth_misplaced_fence_control"))
    return out

def write(p, recs):
    Path(p).write_text("".join(json.dumps(r) + "\n" for r in recs))

def fixture(tmp_path, train_ids, held_ids, mutate_pool=None, with_mis=True):
    d = tmp_path / "d"; d.mkdir(exist_ok=True)
    base = [rec("BENIGN", "b0", ["nop", "ret"])]
    write(d / "v55h_train.jsonl", base)
    pool = list(base)
    for i in train_ids:
        pool += triple(i, with_mis, seed=100 + i)
    if mutate_pool:
        pool = mutate_pool(pool)
    write(d / "pool.jsonl", pool)
    held, me = [], []
    for i in held_ids:
        t = triple(i, True, seed=900 + i)
        held += t[:2]; me.append(t[2])
    write(d / "revizor_mds_heldout.jsonl", held)
    write(d / "revizor_mds_misfenced_heldout.jsonl", me)
    write(d / "revizor_mds_real.jsonl", [r for r in held if r["label"] == CLS])
    args = ["--pool", str(d / "pool.jsonl"), "--data-dir", str(d), "--heldout-dir", str(d),
            "--classes", "mds", "--seed-disjoint", "MDS", "--out", str(tmp_path / "audit.md")]
    return args

def test_clean_split_passes(tmp_path):
    assert audit.main(fixture(tmp_path, range(1, 9), range(20, 26))) == 0
    assert "NO LEAK" in (tmp_path / "audit.md").read_text()

def test_exact_dup_fails(tmp_path):
    heldseq = seq(20)
    def mut(pool):
        return pool + [rec(CLS, "other", heldseq, source="revizor_hw_i5_8300h")]
    assert audit.main(fixture(tmp_path, range(1, 9), range(20, 26), mutate_pool=mut)) == 1
    assert "identical to a training record" in (tmp_path / "audit.md").read_text()

def test_group_leak_fails(tmp_path):
    def mut(pool):
        return pool + [rec(CLS, "g21_misfenced", seq(300, fence="mis"), source="synth_misplaced_fence_control")]
    assert audit.main(fixture(tmp_path, range(1, 9), range(20, 26), mutate_pool=mut)) == 1

def test_near_dup_fails(tmp_path):
    base = seq(20)
    # same opcode multiset (permute operands/order), different sequence -> sim 1.0 >= 0.98
    nd = list(reversed(base))
    def mut(pool):
        return pool + [rec(CLS, "nd", nd, source="revizor_hw_i5_8300h")]
    assert audit.main(fixture(tmp_path, range(1, 9), range(20, 26), mutate_pool=mut)) == 1
    assert "near-copy" in (tmp_path / "audit.md").read_text()

def test_seed_overlap_fails(tmp_path):
    def mut(pool):
        return pool + [rec(CLS, "sd", seq(500), source="revizor_hw_i5_8300h", src_path="x/920/violation-9/p.asm")]
    assert audit.main(fixture(tmp_path, range(1, 9), range(20, 26), mutate_pool=mut)) == 1

def test_lfence_shortcut_flagged(tmp_path):
    # no misfenced anywhere in train, and held-out has none that matter -> lfence presence separates
    args = fixture(tmp_path, range(1, 9), range(20, 26), with_mis=False)
    d = Path(args[3])
    write(d / "revizor_mds_misfenced_heldout.jsonl", [])
    assert audit.main(args) == 0
    txt = (tmp_path / "audit.md").read_text()
    assert "SHORTCUT AVAILABLE" in txt
    row = [l for l in txt.splitlines() if l.startswith("| (c) lfence present")][0]
    assert "SHORTCUT AVAILABLE" in row
