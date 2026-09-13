#!/usr/bin/env python3
"""Oracle-label the V4 family with InvisiSpec (gem5 store-forwarding execution),
4 sims in parallel. Resumable: skips gadgets already in the output. Each gadget
is its own docker container with a gadget_id-unique binary + outdir, so parallel
runs do not collide.

Output: oracle/results/v4_family_labels.jsonl — one line per gadget:
  {gadget_id, source_c, expected_leak, verdict, leak, signal, n_success, details}
"""
import json, os, sys, time
from concurrent.futures import ThreadPoolExecutor, as_completed
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
from oracle.validators.invisispec_validator import InvisiSpecValidator

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
MANIFEST = os.path.join(REPO, "gen", "v4_family", "out", "v4_family_manifest.jsonl")
OUTPATH = os.path.join(REPO, "oracle", "results", "v4_family_labels.jsonl")
MAX_WORKERS = int(os.environ.get("V4FAM_WORKERS", "4"))
TIMEOUT = int(os.environ.get("V4FAM_TIMEOUT", "5400"))  # 90 min/gadget

def load_done():
    done = {}
    if os.path.exists(OUTPATH):
        with open(OUTPATH) as f:
            for line in f:
                line = line.strip()
                if line:
                    r = json.loads(line)
                    done[r["gadget_id"]] = r
    return done

def run_one(rec, validator):
    gid = rec["gadget_id"]
    t = time.time()
    r = validator.validate({
        "gadget_id": gid,
        "vuln_class": "SPECTRE_V4",
        "execution_source": rec["source_c"],
    })
    return {
        "gadget_id": gid,
        "source_c": rec["source_c"],
        "expected_leak": rec["expected_leak"],
        "verdict": r.verdict,
        "leak": (r.verdict == "leak"),
        "signal": r.signal,
        "n_success": r.details.get("n_success"),
        "details": r.details,
        "secs": round(time.time() - t),
    }

def main():
    with open(MANIFEST) as f:
        manifest = [json.loads(l) for l in f if l.strip()]
    done = load_done()
    todo = [m for m in manifest if m["gadget_id"] not in done]
    print(f"family={len(manifest)} done={len(done)} todo={len(todo)} workers={MAX_WORKERS}", flush=True)
    if not todo:
        print("nothing to do", flush=True)
    validator = InvisiSpecValidator(REPO, timeout=TIMEOUT)
    os.makedirs(os.path.dirname(OUTPATH), exist_ok=True)
    with open(OUTPATH, "a") as out, ThreadPoolExecutor(max_workers=MAX_WORKERS) as ex:
        futs = {ex.submit(run_one, m, validator): m for m in todo}
        for fut in as_completed(futs):
            r = fut.result()
            out.write(json.dumps(r, sort_keys=True) + "\n"); out.flush()
            mark = "OK " if r["leak"] == r["expected_leak"] else "!! "
            print(f"{mark}{r['gadget_id']}: verdict={r['verdict']} "
                  f"n_success={r['n_success']} expected_leak={r['expected_leak']} "
                  f"({r['secs']}s)", flush=True)

    # summary
    allrecs = load_done()
    lk = [r for r in allrecs.values() if r["leak"]]
    sf = [r for r in allrecs.values() if not r["leak"] and r["verdict"] == "safe"]
    match = sum(1 for r in allrecs.values() if r["leak"] == r["expected_leak"])
    print(f"\nSUMMARY: leak={len(lk)} safe={len(sf)} "
          f"expected-match={match}/{len(allrecs)}", flush=True)
    print("V4FAM_ORACLE_DONE", flush=True)

if __name__ == "__main__":
    main()
