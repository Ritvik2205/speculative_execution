# Real-world eval, benign x86, RISC-V data — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build three provenance-tracked datasets (real-world held-out eval, benign x86_64 + riscv64 training code, RISC-V gadgets) and a scorer, all compiled with one Linux toolchain so no format shortcut appears.

**Architecture:** A new top-level package `realworld/` holds shared record/provenance/window/dedupe helpers, a Docker toolchain wrapper, and one collector per source type (patch pairs, pinned repos, Debian packages). Collectors write JSONL in the existing record format plus `provenance`. `eval/score_realworld.py` reuses the hwlabel scorer's model loading and reproduce gate.

**Tech Stack:** Python 3, Docker (`debian:trixie` + gcc, clang, `crossbuild-essential-riscv64`, `clang` riscv64 target), git, existing `v54/build_dataset.py` neutralisation, `eval/score_hwlabel_variants.py` loaders.

**Spec:** `docs/superpowers/specs/2026-11-05-real-world-data-design.md`

## Global Constraints

- Every record: `sequence`, `label`, `arch`, `group`, `source`, `provenance = {url, commit_or_version, cve, paper, licence, retrieved}`; 100% of rows complete (`cve`/`paper` may be `null`, the other four may not).
- `group` = one source item (one commit, one PoC repo, one Debian package) so CIs cluster by it.
- Windows are 25–45 instructions (`WIN_LO = 25`, `WIN_HI = 45`); function score = max over windows.
- Benign and attack code are both produced by `gcc -S` / `clang -S` inside the Docker toolchain, then `v54/build_dataset._neutralize` + `clean_seq`. No objdump-vs-`-S` mixing.
- Benign excludes any function with `lfence`, `mfence`, `verw`, `array_index_nospec`, `array_index_mask_nospec`, `barrier_nospec`, or a retpoline / return thunk (`__x86_indirect_thunk`, `__x86_return_thunk`).
- One C source compiled for any ISA/compiler/opt is ONE item for dedupe; it may never be on both the train and eval sides.
- The real-world eval set is never trained on. `v54_train.jsonl` already contains 101 Spectector, 200 SafeSide and 300 FastSpec records: overlapping eval items are flagged `train_overlap: true` and scored only by models retrained without those sources.
- Use every source (user); record every source used in `docs/data_sources/CHECKLIST.md` via `realworld/usage.json`.
- No change to `spec/*.json`, `v54/pdg_builder.py`, `v54/inline_features.py`. New retrain arms pass `--x86-mem-reads`.
- Dev set stays pinned at 806 rows; `emit` always gets an explicit `--jsonl`; commit only data files a task names.

## Review Focus

1. A patched file is not built under the chosen kernel/Xen config, or its build fails → the item is skipped and logged with a reason in `skipped.jsonl`; the run continues.
2. The function named in the diff hunk is absent from the `.s` (inlined, or renamed `foo.isra.0` / `foo.constprop.0` / `foo.part.0`) → match by `name` or `name.<suffix>`; otherwise log `missing_symbol`.
3. Pre and post functions are identical after normalisation (comment/macro-only patch, or the fix is in a header) → pair dropped, logged `no_asm_change`.
4. A source compiled for two ISAs or compilers lands on both sides of the split → caught by `source_key` dedupe, not sequence hash alone.
5. A Debian package whose build fails under clang or under `-a riscv64` → that (package, compiler, arch) cell is skipped and logged; the other cells still count.

---

### Task 1: Shared record, window and dedupe helpers

**Files:**
- Create: `realworld/__init__.py`, `realworld/records.py`
- Test: `tests/realworld/test_records.py`

**Interfaces:**
- Produces:
  - `make_record(sequence: list[str], label: str, arch: str, group: str, source: str, provenance: dict, **extra) -> dict` — raises `ValueError` if a required provenance key is missing or empty.
  - `windows(seq: list[str], lo: int = 25, hi: int = 45, stride: int = 10) -> list[list[str]]` — a sequence shorter than `lo` yields itself once; longer ones yield `hi`-length windows every `stride`, plus a final tail window.
  - `normalise(asm_lines: list[str]) -> list[str]` — `clean_seq(_neutralize(...))` from `v54/build_dataset.py`.
  - `source_key(rec: dict) -> str` — `provenance.url + "@" + provenance.commit_or_version + "#" + rec.get("function", "")`, compiler/arch/opt excluded.
  - `split_leaks(train: list[dict], evals: list[dict]) -> list[str]` — source keys present on both sides, or normalised-sequence SHA256 collisions.
  - `has_mitigation(seq: list[str]) -> bool` — the Global Constraints exclusion list.

- [ ] **Step 1: Write failing tests**: `test_make_record_rejects_missing_url`, `test_windows_short_seq_once` (len 10 → 1 window), `test_windows_long_seq` (len 100 → windows of length 45, last window ends at index 100), `test_source_key_ignores_compiler` (same url/commit/function, different `compiler` → equal keys), `test_split_leaks_finds_cross_isa_source`, `test_has_mitigation` (`lfence`, `call __x86_indirect_thunk_rax` → True; `movq (%rax), %rbx` → False).
- [ ] **Step 2:** `python3 -m pytest -q tests/realworld/test_records.py` → FAIL (import error).
- [ ] **Step 3:** Implement `realworld/records.py`.
- [ ] **Step 4:** Same command → PASS.
- [ ] **Step 5:** `git add realworld/ tests/realworld/ && git commit -m "realworld: record/window/dedupe helpers"`

### Task 2: Docker toolchain and named-function extraction

**Files:**
- Create: `realworld/toolchain/Dockerfile`, `realworld/toolchain.py`, `realworld/asm.py`
- Test: `tests/realworld/test_asm.py`, `tests/realworld/test_toolchain.py` (skipped when `docker` is unavailable)

**Interfaces:**
- Produces:
  - `extract_named_functions(asm_text: str) -> dict[str, list[str]]` — split on `name:` … `.cfi_endproc` (ELF gcc/clang `-S`); keys are the symbol names, suffixes kept (`foo.isra.0`).
  - `find_function(funcs: dict[str, list[str]], name: str) -> list[str] | None` — exact name, else the first `name.<suffix>`.
  - `compile_to_asm(src: Path, arch: str, cc: str, opt: str, extra_flags: list[str] = (), include_dirs: list[Path] = ()) -> str` — runs `docker run specexec-toolchain` with `{gcc|clang} -S -o -`; `arch` in `{"x86_64","riscv64"}` (gcc → `riscv64-linux-gnu-gcc`, clang → `--target=riscv64-linux-gnu`). Raises `CompileError(stderr)`.
  - Image tag `specexec-toolchain`; `realworld/toolchain.py build` builds it.

- [ ] **Step 1: Failing tests:** `test_extract_named_functions` on a 2-function gcc ELF `.s` fixture string (keys `f`, `g.isra.0`); `test_find_function_suffix` (`find_function(d, "g")` returns `g.isra.0`'s body); `test_compile_x86_and_riscv` (docker-only: compiles `int f(int*a,int i){return a[i];}` for both arches at `-O2`, `f` found in each, riscv body contains `lw` or `ld`).
- [ ] **Step 2:** `python3 -m pytest -q tests/realworld/test_asm.py tests/realworld/test_toolchain.py` → FAIL.
- [ ] **Step 3:** Write the Dockerfile and both modules.
- [ ] **Step 4:** `python3 realworld/toolchain.py build && python3 -m pytest -q tests/realworld/` → PASS.
- [ ] **Step 5:** Commit.

### Task 3: CVE/patch pairs (Linux, Xen)

**Files:**
- Create: `realworld/patch_pairs.py`, `realworld/patch_repos.yaml`
- Test: `tests/realworld/test_patch_pairs.py`

**Interfaces:**
- Consumes: Task 1 `make_record`, `normalise`; Task 2 `find_function`, `extract_named_functions`.
- Produces: CLI `python3 -m realworld.patch_pairs --repo {linux,xen} --clone DIR --out eval/data/realworld_patch_<repo>.jsonl [--limit N]`; writes `skipped.jsonl` beside `--out`.
  - `find_fix_commits(clone: Path, terms: list[str]) -> list[str]` — `git log -S<term> --format=%H` over `terms`, deduped, keeping only commits whose diff ADDS a term.
  - `changed_functions(clone: Path, commit: str) -> list[tuple[str, str]]` — `(file.c, function)` from `@@ … @@ <func>` hunk headers where the hunk adds a term.
  - `build_asm(clone: Path, rev: str, cfile: str, repo_cfg: dict) -> str` — worktree at `rev`, `repo_cfg["config_cmd"]` (Linux: `make x86_64_defconfig`; Xen: `make -C xen defconfig`), then `make <cfile without .c>.s`, inside the toolchain container.
  - Records: pre = `label` from the commit's CVE→class map in `patch_repos.yaml`, default `SPECTRE_V1` for nospec terms; post = `label: "BENIGN"`, `mitigated: true`; `group = "<repo>:<commit[:12]>"`; `provenance.cve` from `CVE-\d{4}-\d+` in the commit message, else `null`; `subset` ∈ `{"cve","patch_only"}`.
- Terms: Linux `array_index_nospec`, `barrier_nospec`, `array_index_mask_nospec`; Xen the same plus `block_speculation`, `evaluate_nospec`.

- [ ] **Step 1: Failing tests** on a tiny local git repo fixture made in `tmp_path` (two commits, the second adds `array_index_nospec(i, n)` inside `int get(int *a, int i, int n)`): `test_find_fix_commits_returns_second_commit`, `test_changed_functions_names_get`, `test_pair_dropped_when_asm_identical` (a fixture commit that only edits a comment → no record, `no_asm_change` in skipped), `test_cve_parsed_from_message`.
- [ ] **Step 2:** Run → FAIL.
- [ ] **Step 3:** Implement. Fixture tests stub `build_asm` with a local `compile_to_asm` call on the fixture file.
- [ ] **Step 4:** Run → PASS. Then smoke: `python3 -m realworld.patch_pairs --repo linux --clone ~/src/linux --out eval/data/realworld_patch_linux.jsonl --limit 5`, expect ≥ 3 pairs and every skip with a reason.
- [ ] **Step 5:** Commit code; full runs (Linux, Xen) commit their JSONL + `skipped.jsonl` separately.

### Task 4: Pinned-repo collector (benchmarks, PoCs, RISC-V artifacts, vendor snippets)

**Files:**
- Create: `realworld/repos.py`, `realworld/manifest.yaml`
- Test: `tests/realworld/test_repos.py`

**Interfaces:**
- Consumes: Tasks 1–2.
- Produces: CLI `python3 -m realworld.repos --manifest realworld/manifest.yaml --only <name>... --out-dir eval/data/`. Each manifest entry: `name, url, commit, licence, paper, cve, split ("eval"|"train"), arches, compilers, opts, items: [{file, function, label, safe: bool}]`, optional `raw_asm: true` for repos shipping `.s`/`.muasm` (Spectector) read directly.
  - Output `eval/data/realworld_<name>.jsonl` (`split: eval`) or `v54/data/realworld_<name>_train.jsonl` (`split: train`). Records carry `subset` = `benchmark` | `poc` | `vendor` | `riscv_artifact`.
  - Marks `train_overlap: true` when `split_leaks` against `v54/data/v54_train.jsonl` hits.
- Manifest seeds (from `docs/data_sources/`): spectector-benchmarks, pitchfork-angr, haunted_bench, google/safeside, IAIK/ZombieLoad, vusec/ridl, vusec/bhi-spectre-bhb, comsec-group/inception, comsec-group/retbleed, google/security-research `pocs/cpus`, IAIK/meltdown, cispa/Security-RISC, riscv-boom/boom-attacks, vusec/phantom-trails (`Samples/`), Microsoft and Google retpoline guidance snippets (vendored as files under `realworld/vendor_snippets/` with source URL). Pin `commit` to the HEAD at collection time.
- `c_vulns` cross-compiled to riscv64 is a manifest entry with `split: train` and `url` = this repo.

- [ ] **Step 1: Failing tests:** `test_manifest_schema` (every entry has the required keys), `test_eval_item_written_with_provenance` (local fixture repo, one item → one record per (arch, compiler, opt)), `test_train_overlap_flagged` (fixture item whose normalised sequence equals a train row), `test_raw_asm_entry` (a `.s` fixture read without compiling).
- [ ] **Step 2:** Run → FAIL. **Step 3:** Implement. **Step 4:** Run → PASS; then `--only spectector-benchmarks pitchfork-angr` live, expect 15 Kocher cases each and `train_overlap` set on the Spectector ones.
- [ ] **Step 5:** Commit code; each collected JSONL committed with its manifest entry.

### Task 5: Debian benign (amd64 + riscv64)

**Files:**
- Create: `realworld/benign_debian.py`, `realworld/benign_packages.txt`
- Test: `tests/realworld/test_benign_debian.py`

**Interfaces:**
- Consumes: Tasks 1–2.
- Produces: CLI `python3 -m realworld.benign_debian --packages realworld/benign_packages.txt --arch {amd64,riscv64} --cc {gcc,clang} --snapshot 20261101T000000Z --out-dir v54/data/`, writing `benign_<arch>_<cc>.jsonl` + `skipped.jsonl`.
  - Build: `apt-get source <pkg>` from the snapshot, `apt-get build-dep`, `dpkg-buildpackage -b -uc -us` (riscv64: `-a riscv64` with `crossbuild-essential-riscv64`; clang: `CC=clang`, `--target=riscv64-linux-gnu` for riscv64) with `DEB_CFLAGS_APPEND="-save-temps=obj"`; collect every `*.s`.
  - Per function: drop if `has_mitigation`; `windows(...)`; dedupe by normalised hash; cap 200 windows per package; `label: "BENIGN"`, `group = "debian:<pkg>"`, `provenance.commit_or_version` = `<pkg>_<version>@<snapshot>`.
  - `split_packages(pkgs: list[str], test_frac: float = 0.2, seed: int = 0) -> tuple[list[str], list[str]]` — whole packages held out; held-out windows go to `eval/data/realworld_benign_<arch>.jsonl` with `subset: "benign"`.
- `benign_packages.txt`: ~40 C packages with no hand-written asm (coreutils, zlib, bzip2, xz-utils, sqlite3, libpng1.6, jq, lua5.4, expat, libyaml, pcre2, gzip, sed, grep, tar, findutils, diffutils, make-dfsg, bash, dash, less, nano, file, libxml2, json-c, libuv1, zstd, lz4, iproute2, util-linux, procps, openssh, curl, nginx, redis, libevent, cjson, tinyxml2, libsodium, gawk).

- [ ] **Step 1: Failing tests:** `test_split_packages_disjoint_and_deterministic`, `test_mitigated_function_dropped` (fixture `.s` with an `lfence` function and a plain one → only the plain one kept), `test_cap_per_package` (300 fixture windows → 200), `test_length_bounds` (every window 25–45 or a whole short function ≥ 25).
- [ ] **Step 2–4:** FAIL → implement → PASS; live smoke on `zlib` for amd64/gcc and riscv64/gcc, expect > 100 windows each.
- [ ] **Step 5:** Commit code; full runs commit their JSONL.

### Task 6: Real-world scorer

**Files:**
- Create: `eval/score_realworld.py`
- Test: `tests/eval/test_score_realworld.py`

**Interfaces:**
- Consumes: `eval/score_hwlabel_variants.load_run_config`, `build_model`, `predict`, `reproduce_gate`; Task 1 `windows`.
- Produces: CLI `python3 -m eval.score_realworld --run-dir <ckpt dir> --data eval/data/realworld_*.jsonl --out-dir eval/realworld_score/<tag>`, writing `rows.jsonl`, `score.json`, `score.md`.
  - Function leak score = max over windows of `1 - p_benign`; prediction = leak if any window's argmax ≠ BENIGN.
  - Bars, scored alongside each model on the same rows: `always_attack`, `fence_count` (leak iff no fence), opcode LR (fit on the model's own training pool, as in `eval/shared_config.py`), mechanism rule v2 (`eval/mechanism/hybrid.py`).
  - Metrics: leak/safe balanced accuracy; per `subset` and per mechanism family (V1 branch / V4 store-bypass / MDS+L1TF fault-assist / other); paired difference vs each bar with a 95% CI bootstrapped by `group`; `train_overlap` rows reported separately and excluded from the headline.

- [ ] **Step 1: Failing tests:** `test_max_over_windows` (stub predictor: one leaking window in a 100-instr function → leak), `test_fence_bar` (`lfence` row → safe), `test_overlap_rows_excluded_from_headline`, `test_ci_clusters_by_group` (two rows of one group move together in bootstrap).
- [ ] **Step 2–4:** FAIL → implement → PASS; then score one B1 checkpoint on whatever Task 3–5 data exists, reproduce gate passing.
- [ ] **Step 5:** Commit.

### Task 7: Pools, retrain arms, checklist wiring

**Files:**
- Create: `realworld/build_pools.py`, `eval/cluster/submit_realworld.sh`, `eval/cluster/score_realworld.sbatch`
- Modify: `docs/data_sources/build_checklist.py` (read `USAGE` from `realworld/usage.json`)
- Test: `tests/realworld/test_build_pools.py`

**Interfaces:**
- Consumes: all collector outputs, Task 1 `split_leaks`.
- Produces:
  - `python3 -m realworld.build_pools --base <pool.jsonl> --out v54/data/<name>_train.jsonl` — base pool (the allhw3 pool from `eval/cluster/submit_allhw3.sh`) + `benign_amd64_*` + `benign_riscv64_*` + `realworld_*_train.jsonl`; drops base rows whose `source_key` or normalised hash collides with any eval file (this removes overlapping Spectector/SafeSide/FastSpec rows); exits non-zero if `split_leaks` is non-empty after that.
  - Writes `realworld/usage.json`: `{catalogue name: [records, note]}` from each record's `source`; `build_checklist.py` fills `used`/`records` from it.
  - `submit_realworld.sh`: arms `rw` and `rw_memreads` (`--x86-mem-reads`), 5 seeds (1, 7, 13, 21, 42), the allhw3 recipe otherwise, then `score_realworld.sbatch` over the new arms plus every existing checkpoint (H0 baseline).
- [ ] **Step 1: Failing tests:** `test_overlap_rows_removed_from_base`, `test_exits_on_remaining_leak`, `test_usage_json_counts_by_source`.
- [ ] **Step 2–4:** FAIL → implement → PASS; dry-run `bash -n eval/cluster/submit_realworld.sh`.
- [ ] **Step 5:** Commit; regenerate `docs/data_sources/CHECKLIST.md`; run `./scripts/run_feature_gate.sh` (data-only change → oracle unchanged).

### Task 8: RISC-V check and paper hooks

**Files:**
- Create: `eval/realworld_riscv_report.md` (generated)
- Test: none new (runs existing tools)

- [ ] **Step 1:** `python3 eval/isa_fingerprint.py` on `v54/data/realworld_c_vulns_riscv_train.jsonl` + `benign_riscv64_*.jsonl` vs the old ARM-transliterated corpus; record per-class bigram p-values.
- [ ] **Step 2:** Score the `rw*` arms on `realworld_cispa-security-risc`, `realworld_boom-attacks`, `realworld_phantom-trails` and the riscv64 benign holdout with `eval.score_realworld`; write the table and n into the report.
- [ ] **Step 3:** Draft the main-text paragraph and the appendix caveat (provenance: compiled from published C, not hardware-confirmed except Security-RISC on C910), into the report.
- [ ] **Step 4:** Commit.

## Order

Tasks 1 → 2 first. Then 3, 4, 5 are independent and can run in parallel. Task 6 needs 1 only and can run beside 3–5. Task 7 needs 3–6. Task 8 needs 7's cluster results.
