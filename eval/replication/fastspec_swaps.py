#!/usr/bin/env python3
"""FastSpec dataset: does a detector trained on it respond to the gadget or to
the file it came in? Three interventions on held-out data, scored by models
trained on windows of the shipped train folders (bag of tokens; and canonical
mnemonic counts, i.e. with format differences removed).

  swap     the SAME test gadgets, assembled and disassembled with objdump, so
           they arrive in the format of the benign class (instructions
           unchanged)
  fence    the same test gadgets with `lfence` inserted after the first
           conditional branch (the standard Spectre-V1 mitigation), original
           format: a minimal pair, mitigated vs not
  benign-s real benign functions in compiler-output format, the format of the
           spectre class (Debian packages, gcc; not from the FastSpec data)

Reported: share of windows each model calls "spectre".
"""
from __future__ import annotations

import argparse
import json
import os
import random
import re
import sys
from collections import Counter
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import fastspec_shortcuts as fs  # noqa: E402
import fastspec_tokens as ft  # noqa: E402

_JCC = re.compile(r"^\s*j(?!mp)[a-z]+\s")


def fence(text: str) -> str:
    out, done = [], False
    for line in text.splitlines():
        out.append(line)
        if not done and _JCC.match(line):
            out.append("\tlfence")
            done = True
    return "\n".join(out) + "\n"


def win(texts, vocab, window, cap, rng):
    out = []
    for t in texts:
        ws = fs.windows(ft.tokens(t, vocab), window)
        out += rng.sample(ws, cap) if len(ws) > cap else ws
    return out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--tokens", required=True)
    ap.add_argument("--clone", required=True)
    ap.add_argument("--sample", required=True, help="dir with spectre_test/ raw files")
    ap.add_argument("--objdump", required=True, help="dir with the same gadgets as objdump listings")
    ap.add_argument("--benign-s", required=True, help="jsonl of benign compiler-output functions")
    ap.add_argument("--window", type=int, default=80)
    ap.add_argument("--seed", type=int, default=0)
    a = ap.parse_args(argv)
    rng = random.Random(a.seed)
    vocab = {l.rstrip("\n") for l in open(os.path.join(a.clone, "FastSpec", "word_dict.txt"))}
    data = fs.load(a.tokens, a.window, 6, rng)
    tr = fs.balance(data["train"], rng)
    ytr = [r[0] for r in tr]
    names = {t for *_, w in tr for t in w if fs.MNEM.match(t)}
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.feature_extraction import DictVectorizer
    models = {}
    for name, bag in (("bag of tokens", Counter), ("canonical mnemonics", lambda w: fs.canon_bag(w, names))):
        vec = DictVectorizer()
        clf = RandomForestClassifier(n_estimators=200, random_state=a.seed, n_jobs=-1).fit(
            vec.fit_transform([bag(w) for *_, w in tr]), ytr)
        models[name] = (vec, clf, bag)

    swapped_names = sorted(os.listdir(a.objdump))
    orig = [open(os.path.join(a.sample, "spectre_test", n), errors="replace").read() for n in swapped_names]
    swapped = ["\n".join(l for l in open(os.path.join(a.objdump, n), errors="replace").read().splitlines()
                         if "file format" not in l) for n in swapped_names]
    ben = []
    for line in open(a.benign_s):
        r = json.loads(line)
        ben.append("\n".join(s.replace("<fn>", "fn_target") for s in r["sequence"]))
    rng.shuffle(ben)
    sets = {
        "test gadgets, original format": win(orig, vocab, a.window, 6, rng),
        "same gadgets, objdump format (swap)": win(swapped, vocab, a.window, 6, rng),
        "same gadgets + lfence after the branch, original format (fence)": win([fence(t) for t in orig], vocab, a.window, 6, rng),
        "shipped benign test windows": [w for lab, *_, w in data["test"] if lab == 0],
        "benign compiler-output functions (benign-s)": win(ben[:1500], vocab, a.window, 6, rng),
    }
    print(f"{len(swapped_names)} gadgets from the shipped test folder; window {a.window}.\n")
    print("| input | windows | called spectre: bag of tokens | called spectre: canonical mnemonics |\n|---|---|---|---|")
    for name, ws in sets.items():
        row = []
        for m in ("bag of tokens", "canonical mnemonics"):
            vec, clf, bag = models[m]
            p = clf.predict(vec.transform([bag(w) for w in ws]))
            row.append(sum(p) / len(ws))
        print(f"| {name} | {len(ws)} | {row[0]:.3f} | {row[1]:.3f} |")
    return 0


if __name__ == "__main__":
    sys.exit(main())
