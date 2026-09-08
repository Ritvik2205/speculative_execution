"""test_idiomatic_riscv_independence.py — Task 5.2 acceptance gate.

The transliterated `riscv_corpus/` (default corpus `eval/isa_independence_check.py`
uses when no override is passed) rejects ISA-independence: a one-sided sign test
over shared classes finds it systematically closer to arm64 than two genuinely
independent corpora (x86_64, arm64) are to each other (6/6 classes, p=0.0156 —
see the module docstring and MEMORY note "RISC-V independence gate").

`gen/harvest_idiomatic_riscv.py` produces a corpus from REAL riscv64-elf-gcc
compilation of the project's own portable C (attack) and real third-party C
(mbedTLS, benign) instead of transliterating another ISA's corpus. This test
is the acceptance gate from the plan (W5 Task 5.2, Step 1/4): the idiomatic
corpus must NOT reject independence as strongly as the transliterated one.

Skips (not silently passes) when:
  - riscv64-elf-gcc is not on PATH (nothing to compile with — CI/dev machines
    without the toolchain), or
  - the harvested corpus is too small to run the sign test with any power
    (fewer than 2 classes shared with both x86_64 and arm64 in the training
    corpus — a sign test over <2 items cannot reach p<0.05 no matter what the
    data says, so a "pass" there would be a free pass for a corpus, not
    evidence of independence).
"""
from __future__ import annotations

import shutil
import sys
import tempfile
from collections import Counter, defaultdict
from math import comb
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT / "v54"))

HAVE_RISCV_GCC = shutil.which("riscv64-elf-gcc") is not None

pytestmark = pytest.mark.skipif(
    not HAVE_RISCV_GCC,
    reason="riscv64-elf-gcc not on PATH — cannot compile real idiomatic RISC-V",
)


def _sign_test(riscv_records, x86_records, arm_records, engines):
    """Mirror eval/isa_independence_check.py's per-class + sign-test logic and
    return (p_value, closer, total, shared_classes, per_class_detail).

    Kept local (rather than importing main()'s inline logic) because
    isa_independence_check.py exposes its pieces as functions but the sign
    test itself lives inside main(); this recomputes it the same way from
    those exported functions so the two never drift silently.
    """
    from isa_independence_check import counts_by_family, pooled, js_divergence

    corpora = {"x86_64": x86_records, "arm64": arm_records, "riscv64": riscv_records}
    by_cls = {a: defaultdict(list) for a in corpora}
    for a, recs in corpora.items():
        for r in recs:
            by_cls[a][r["label"]].append(r)
    shared = sorted(set(by_cls["x86_64"]) & set(by_cls["arm64"]) & set(by_cls["riscv64"]))

    closer, total, detail = 0, 0, []
    for c in shared:
        fc = {a: counts_by_family(by_cls[a][c], engines[a]) for a in corpora}
        if any(len(v) == 0 for v in fc.values()):
            continue
        y = js_divergence(pooled(fc["x86_64"].values()), pooled(fc["arm64"].values()))
        ar = js_divergence(pooled(fc["arm64"].values()), pooled(fc["riscv64"].values()))
        total += 1
        if ar < y:
            closer += 1
        detail.append((c, ar, y))
    if total == 0:
        return float("nan"), 0, 0, shared, detail
    p_val = sum(comb(total, k) for k in range(closer, total + 1)) / (2 ** total)
    return p_val, closer, total, shared, detail


@pytest.fixture(scope="module")
def isa_corpora():
    """x86_64 / arm64 training corpora + per-ISA canonical-op engines, loaded
    once — these are the fixed reference corpora both RISC-V corpora are
    compared against."""
    from isa_spec import load_engine
    import train_mlm as T

    train = T.load(T.TRAIN)
    x86 = [r for r in train if r.get("arch") == "x86_64"]
    arm = [r for r in train if r.get("arch") == "arm64"]
    engines = {
        "x86_64": load_engine("x86_64.json"),
        "arm64": load_engine("arm64.json"),
        "riscv64": load_engine("riscv.json"),
    }
    return x86, arm, engines


@pytest.fixture(scope="module")
def idiomatic_corpus(tmp_path_factory):
    """Freshly compile the idiomatic RISC-V corpus (attack + benign) with the
    real toolchain — not a stale checked-in file — so this test exercises the
    actual compile path Task 5.2 requires."""
    from harvest_idiomatic_riscv import harvest
    import json as _json

    out = tmp_path_factory.mktemp("idiomatic_riscv") / "idiomatic_riscv.jsonl"
    summary = harvest(out, include_benign=True)
    records = [_json.loads(l) for l in out.open() if l.strip()]
    return records, summary


@pytest.fixture(scope="module")
def transliterated_corpus():
    """The default (known-transliterated) riscv64 corpus — the module's
    calibration baseline, p=0.0156 / 6-of-6 classes per the module docstring."""
    from eval_riscv_real import build_riscv_records

    return build_riscv_records()


def _stub_filtered(records, stub_max=10):
    def _is_instr(line):
        s = line.strip()
        return bool(s) and not s.startswith(".") and not s.endswith(":")
    return [r for r in records
            if len([l for l in r["sequence"] if _is_instr(l)]) > stub_max]


def test_harvest_produces_nonempty_idiomatic_corpus(idiomatic_corpus):
    records, summary = idiomatic_corpus
    assert summary["total"] > 0, "harvest() produced zero records — nothing compiled"
    assert summary["attack"] > 0, "no attack-class records compiled from c_vulns"


def test_idiomatic_corpus_less_transliteration_like_than_translated(
    idiomatic_corpus, transliterated_corpus, isa_corpora,
):
    """The Task 5.2 acceptance gate: the idiomatic corpus must not reject
    ISA-independence as strongly as the transliterated one did."""
    x86, arm, engines = isa_corpora
    idiomatic_records, summary = idiomatic_corpus
    idiomatic_records = _stub_filtered(idiomatic_records)
    transliterated_records = _stub_filtered(transliterated_corpus)

    p_idiom, closer_i, total_i, shared_i, detail_i = _sign_test(
        idiomatic_records, x86, arm, engines)
    p_translit, closer_t, total_t, shared_t, detail_t = _sign_test(
        transliterated_records, x86, arm, engines)

    floor_i = 0.5 ** total_i if total_i else 1.0
    if total_i < 2 or floor_i >= 0.05:
        pytest.skip(
            f"underpowered: idiomatic corpus shares only {total_i} class(es) "
            f"with both x86_64 and arm64 training data (shared={shared_i}); "
            f"a sign test over {total_i} item(s) cannot reach p<0.05 "
            f"(floor={floor_i:.3f}) regardless of the data, so this is not a "
            "meaningful independence claim — reporting honestly rather than "
            "asserting a pass the test had no power to fail."
        )

    print(f"\nidiomatic:      p={p_idiom:.4f}  {closer_i}/{total_i} classes "
          f"closer-to-arm  shared={shared_i}")
    print(f"transliterated: p={p_translit:.4f}  {closer_t}/{total_t} classes "
          f"closer-to-arm  shared={shared_t}")

    # Core claim: the idiomatic corpus must show a weaker (higher p-value /
    # less unanimous) transliteration signature than the known-transliterated
    # corpus. This is the plan's explicit, data-dependent, comparative
    # assertion — not a fixed p<0.05 threshold on the idiomatic corpus alone
    # (which a small corpus could pass "by being small", the exact trap the
    # module's own docstring warns about).
    assert p_idiom >= p_translit, (
        f"idiomatic corpus (p={p_idiom:.4f}) rejects ISA-independence AT LEAST "
        f"as strongly as the transliterated corpus (p={p_translit:.4f}) — it "
        "is not measurably more ISA-native and should not back a transfer claim"
    )

    # Sanity/calibration: the transliterated corpus should reproduce the
    # documented finding (systematic, significant closeness to arm64). If this
    # regresses, the comparison above is meaningless (both sides would be
    # noise) — surface that explicitly rather than let the comparative assert
    # pass vacuously.
    assert p_translit < 0.05, (
        f"calibration check failed: the known-transliterated corpus no longer "
        f"shows its documented signature (p={p_translit:.4f}, expected <0.05 "
        "per module docstring / MEMORY 'ISA-independence gate') — the "
        "comparison this test makes is not trustworthy until this is understood"
    )
