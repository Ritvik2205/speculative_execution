import os, json
from gen.synth.generate import sample_params, generate
from gen.synth.params import CLASSES, ARCHES

def test_sample_params_distinct():
    ps = sample_params("SPECTRE_V1", "x86_64", 25, seed=0)
    assert len(ps) == 25
    keys = {(p.secret, p.train_iters, p.pad_nops, p.reorder) for p in ps}
    assert len(keys) == 25            # all distinct knob-tuples
    assert all(p.vuln_class == "SPECTRE_V1" for p in ps)
    assert all(0 <= p.secret <= 255 for p in ps)

def test_sample_params_deterministic_by_seed():
    a = sample_params("MDS", "arm64", 10, seed=7)
    b = sample_params("MDS", "arm64", 10, seed=7)
    assert [(p.secret, p.pad_nops) for p in a] == [(p.secret, p.pad_nops) for p in b]

def test_generate_writes_files_and_index(tmp_path):
    rows = generate(str(tmp_path), n_per_class=3, seed=0)
    assert len(rows) == len(CLASSES) * len(ARCHES) * 3
    idx = os.path.join(str(tmp_path), "gadgets.jsonl")
    assert os.path.exists(idx)
    with open(idx) as f:
        lines = [json.loads(l) for l in f if l.strip()]
    assert len(lines) == len(rows)
    # every referenced .c exists and carries an adjudicable tag
    for r in lines:
        assert os.path.exists(r["path"])
        assert r["adjudicable"] in ("yes", "partial", "no")
