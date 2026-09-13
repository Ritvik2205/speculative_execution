#!/usr/bin/env python3
"""Turn the oracle-labelled V4 family into GINE training records.

For each gadget x {x86_64, arm64}: extract the victim_function_v4 body from the
compiled .s, normalise + neutralise it (reusing the repo's own functions so the
format is byte-identical to v54 records), and emit a record whose LABEL COMES
FROM THE ORACLE VERDICT — leak -> SPECTRE_V4, safe -> BENIGN. This is the wiring:
a mitigated (fenced) store-bypass the oracle proves safe is labelled BENIGN, not
guessed as V4; the statically-visible fence becomes the discriminator.

Records also carry oracle_leak / oracle_signal / gadget_id (for the Phase-3
ranker) and provenance. Until the oracle batch finishes, unlabelled gadgets fall
back to expected_leak and are flagged oracle_pending=true (excluded by default).

Output: gen/v4_family/out/v4_family_records.jsonl
"""
import json, os, sys, re
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, "scripts"))
sys.path.insert(0, os.path.join(ROOT, "v54"))
from augment_asm_windows import normalize_line          # drops labels/dirs, tidies
from build_dataset import _neutralize, clean_seq, is_instruction_line

OUT = os.path.join(ROOT, "gen", "v4_family", "out")
ASM = os.path.join(OUT, "asm")
MANIFEST = os.path.join(OUT, "v4_family_manifest.jsonl")
LABELS = os.path.join(ROOT, "oracle", "results", "v4_family_labels.jsonl")
RECORDS = os.path.join(OUT, "v4_family_records.jsonl")
FUNC = "victim_function_v4"

def extract_victim(spath):
    """Return the cleaned+neutralised instruction list of victim_function_v4."""
    with open(spath) as f:
        lines = f.readlines()
    body, inside = [], False
    for ln in lines:
        s = ln.rstrip("\n")
        if re.match(r"^\s*" + re.escape(FUNC) + r":", s):
            inside = True
            continue
        if inside:
            # end of function: a ret, or the next symbol/size directive
            if re.search(r"\bret\b", s):
                body.append(s)
                break
            body.append(s)
    norm = [normalize_line(l) for l in body]
    norm = [l for l in norm if l and is_instruction_line(l)]
    return _neutralize(norm)

def load_labels():
    m = {}
    if os.path.exists(LABELS):
        with open(LABELS) as f:
            for line in f:
                line = line.strip()
                if line:
                    r = json.loads(line)
                    m[r["gadget_id"]] = r
    return m

def main():
    with open(MANIFEST) as f:
        manifest = [json.loads(l) for l in f if l.strip()]
    labels = load_labels()
    recs, pending, nleak, nsafe = [], 0, 0, 0
    for m in manifest:
        gid = m["gadget_id"]
        lab = labels.get(gid)
        if lab is not None:
            oracle_leak = bool(lab["leak"])
            oracle_signal = float(lab.get("signal") or 0.0)
            oracle_pending = False
        else:
            oracle_leak = bool(m["expected_leak"])   # fallback until oracle runs
            oracle_signal = 0.0
            oracle_pending = True
            pending += 1
        label = "SPECTRE_V4" if oracle_leak else "BENIGN"
        if oracle_leak: nleak += 1
        else: nsafe += 1
        for arch in ("x86_64", "arm64"):
            spath = os.path.join(ASM, f"{gid}_{arch}.s")
            if not os.path.exists(spath):
                continue
            body = extract_victim(spath)
            if len(body) < 3:
                print(f"WARN short victim {gid} {arch}: {len(body)}", file=sys.stderr)
                continue
            seq = [FUNC] + body
            recs.append({
                "label": label,
                "sequence": seq,
                "source_file": os.path.relpath(spath, ROOT),
                "group": f"v4fam_struct{m['structure_id']}_{m['variant']}",
                "arch": arch,
                "augmentation": "none",
                "gadget_id": gid,
                "oracle_leak": oracle_leak,
                "oracle_signal": oracle_signal,
                "oracle_pending": oracle_pending,
                "variant": m["variant"],
                "expected_leak": m["expected_leak"],
            })
    with open(RECORDS, "w") as f:
        for r in recs:
            f.write(json.dumps(r) + "\n")
    print(f"wrote {len(recs)} records -> {RECORDS}")
    print(f"gadgets: leak(SPECTRE_V4)={nleak} safe(BENIGN)={nsafe} oracle_pending={pending}/{len(manifest)}")
    # oracle vs fence-heuristic disagreements (the payoff of real labels)
    if labels:
        dis = [g for g in manifest
               if g["gadget_id"] in labels
               and bool(labels[g["gadget_id"]]["leak"]) != bool(g["expected_leak"])]
        print(f"oracle-vs-expected disagreements: {len(dis)}"
              + ("" if not dis else " -> " + ", ".join(d["gadget_id"] for d in dis)))

if __name__ == "__main__":
    main()
