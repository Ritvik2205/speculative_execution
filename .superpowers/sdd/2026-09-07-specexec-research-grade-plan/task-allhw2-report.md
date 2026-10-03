# task-allhw2 report

Local end-to-end run in a temp dir (committed data untouched). Entry misfenced regeneration is byte-identical to the committed files.

Pool: base 6615 -> allhw2 7360. Positives/twins/misfenced: mds 50/50/50, l1tf 91/91/91, spectre_v1 76/76/71 (5 positives have k=0, no variant), spectre_v4 33/33/33.

Tests: 339 passed, 1 skipped, 1 known failure (test_idiomatic_riscv_independence).

## Verdict: NO LEAK (PASS)


## 1. Group disjointness

held-out base groups=173, train-add base groups=250, intersection=0

| class | real records | in train-add | in held-out | in both |
|---|---|---|---|---|
| mds | 83 | 50 | 33 | 0 |
| l1tf | 155 | 91 | 64 | 0 |
| spectre_v1 | 130 | 76 | 54 | 0 |
| spectre_v4 | 55 | 33 | 22 | 0 |

## 2. Exact sequence overlap

held-out records with an identical training sequence: 0

## 3. Generator-seed overlap

| class | held-out seeds | train seeds | shared | held-out w/o seed | train w/o seed |
|---|---|---|---|---|---|
| L1TF | 8 | 12 | 0 | 6 | 1 |
| MDS | 7 | 12 | 0 | 0 | 3 |
| SPECTRE_V1 | 10 | 10 | 0 | 0 | 3 |
| SPECTRE_V4 | 4 | 8 | 0 | 7 | 9 |

seed-disjoint classes (FAIL on overlap): ['L1TF', 'MDS', 'SPECTRE_V1', 'SPECTRE_V4']

## 4. Near-duplicates (opcode-multiset Ruzicka)

held-out positive -> max sim to any train-add positive (any class): median 0.426, max 0.759, count >= 0.95: 0

max sim to ANY training record (incl. base): 0.759; count >= 0.98 (FAIL): 0

## 5. Length / lfence-count matching (twin vs misfenced sibling)

| set | pairs | mismatches |
|---|---|---|
| train-add | 245 | 0 |
| held-out entry | 169 | 0 |
| held-out tail | 169 | 0 |

## 6. SHORTCUT bars: 4-class real-class task (held-out positives)

| cue | accuracy | recall L1TF | recall MDS | recall SPECTRE_V1 | recall SPECTRE_V4 |
|---|---|---|---|---|---|
| length | 0.607 | 0.81 | 0.67 | 0.17 | 1.00 |
| opcode presence bag | 0.954 **SHORTCUT AVAILABLE** | 0.97 | 1.00 | 0.89 | 1.00 |
| opcode count bag | 0.965 **SHORTCUT AVAILABLE** | 0.98 | 1.00 | 0.91 | 1.00 |

## 7. SHORTCUT bars: attack-vs-BENIGN (train-add positives+twins+misfenced -> held-out slices)

accuracy over all held-out slices; per-subset column = fraction predicted BENIGN (want ~0 for positives/misfenced, ~1 for twins).

| cue | accuracy | BENIGN rate: positives | BENIGN rate: twins | BENIGN rate: misfenced entry | BENIGN rate: misfenced tail |
|---|---|---|---|---|---|
| (a) length | 0.747 | 0.00 | 0.00 | 0.00 | 0.00 |
| (b) lfence count | 0.500 | 0.00 | 0.98 | 1.00 | 1.00 |
| (c) lfence present | 0.500 | 0.00 | 0.98 | 1.00 | 1.00 |
| (d) first-lfence position | 0.838 | 0.00 | 0.98 | 0.00 | 0.63 |
| (e) opcode bag incl. lfence | 0.642 | 0.01 | 0.42 | 0.43 | 0.43 |

## Flagged shortcuts

- **SHORTCUT AVAILABLE**: 4-class / opcode presence bag: 0.954
- **SHORTCUT AVAILABLE**: 4-class / opcode count bag: 0.965

# Follow-up: shifted placement (V1/V4)

Tests: 346 passed, 1 skipped, 1 known failure. No LEAK before or after. Pool 7360 -> 7464 (+104 shifted V1/V4 variants).
Twins+shifted subset is 173 twins vs 72 shifted, so the majority-class rate is 0.706; a bar near 0.69 means the cue carries no signal.

## BEFORE (no shifted in train; shifted held-out present)
## 7. SHORTCUT bars: attack-vs-BENIGN (train-add positives+twins+misfenced -> held-out slices)

accuracy over all held-out slices; per-subset column = fraction predicted BENIGN (want ~0 for positives/misfenced, ~1 for twins).

| cue | accuracy | BENIGN rate: positives | BENIGN rate: twins | BENIGN rate: misfenced entry | BENIGN rate: misfenced tail | BENIGN rate: misfenced shift |
|---|---|---|---|---|---|---|
| (a) length | 0.771 | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 |
| (b) lfence count | 0.452 | 0.00 | 0.98 | 1.00 | 1.00 | 1.00 |
| (c) lfence present | 0.452 | 0.00 | 0.98 | 1.00 | 1.00 | 1.00 |
| (d) first-lfence position | 0.758 | 0.00 | 0.98 | 0.00 | 0.63 | 1.00 |
| (e) opcode bag incl. lfence | 0.644 | 0.01 | 0.42 | 0.43 | 0.43 | 0.33 |

### 7b. Fence-position cue on twins + shifted siblings only

Twins fence mid-sequence at the boundary; shifted siblings (V1/V4) also fence mid-sequence but BEFORE the boundary, so position/count/presence cues should fall to ~0.5 here.

| cue | accuracy (twins + shifted only) |
|---|---|
| (a) length | 0.294 |
| (b) lfence count | 0.690 |
| (c) lfence present | 0.690 |
| (d) first-lfence position | 0.690 |
| (e) opcode bag incl. lfence | 0.494 |

## Flagged shortcuts
## AFTER
## 7. SHORTCUT bars: attack-vs-BENIGN (train-add positives+twins+misfenced -> held-out slices)

accuracy over all held-out slices; per-subset column = fraction predicted BENIGN (want ~0 for positives/misfenced, ~1 for twins).

| cue | accuracy | BENIGN rate: positives | BENIGN rate: twins | BENIGN rate: misfenced entry | BENIGN rate: misfenced tail | BENIGN rate: misfenced shift |
|---|---|---|---|---|---|---|
| (a) length | 0.771 | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 |
| (b) lfence count | 0.771 | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 |
| (c) lfence present | 0.771 | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 |
| (d) first-lfence position | 0.758 | 0.00 | 0.98 | 0.00 | 0.63 | 1.00 |
| (e) opcode bag incl. lfence | 0.700 | 0.00 | 0.29 | 0.30 | 0.30 | 0.06 |

### 7b. Fence-position cue on twins + shifted siblings only

Twins fence mid-sequence at the boundary; shifted siblings (V1/V4) also fence mid-sequence but BEFORE the boundary, so position/count/presence cues should fall to ~0.5 here.

| cue | accuracy (twins + shifted only) |
|---|---|
| (a) length | 0.294 |
| (b) lfence count | 0.294 |
| (c) lfence present | 0.294 |
| (d) first-lfence position | 0.690 |
| (e) opcode bag incl. lfence | 0.482 |

## Flagged shortcuts
