## Key Semantic Patterns per Attack

### 1. SPECTRE V1 (Bounds Check Bypass)
**Fundamental Pattern:**
```
COMPARE(value, bound) → BRANCH → MEMORY_LOAD(array[value]) → MEMORY_LOAD(cache_probe[secret])
```

**Key Differentiators:**
- Conditional branch that guards a memory access
- Memory access uses a value that should have been validated
- Double-dereference pattern (index → secret → cache probe)
- **No fence between branch and speculative load**

**Graph Signature:**
```
[COMPARE] → [BRANCH] → [LOAD idx] → [LOAD array[idx]] → [LOAD probe]
                ↓
            [fallthrough]
```

---

### 2. SPECTRE V2 (Branch Target Injection)
**Fundamental Pattern:**
```
INDIRECT_BRANCH(target_in_register) → ... → gadget code
```

**Key Differentiators:**
- Indirect control flow: `call *reg`, `jmp *reg`, `br x`, `blr x`
- The target can be trained/poisoned by attacker
- Often involves BTB (Branch Target Buffer) pollution

**Graph Signature:**
```
[INDIRECT_BRANCH] → [???] (target resolved speculatively)
```

**Semantic Features:**
- `has_indirect_branch` = 1
- `indirect_call_count > 0`
- No direct target resolution

---

### 3. SPECTRE V4 (Speculative Store Bypass)
**Fundamental Pattern:**
```
STORE(addr, value) → ... → LOAD(addr') where addr == addr' (or may alias)
```

**Key Differentiators:**
- Store followed by load to same/aliased address
- CPU may speculate that store hasn't completed yet
- The load reads stale data speculatively

**Graph Signature:**
```
[STORE addr] → [LOAD addr'] where addr may == addr'
```

**Semantic Features:**
- `store_load_pair` in close proximity
- Memory dependency potential
- Stack-based patterns common (store to stack, load from stack)

---

### 4. L1TF (L1 Terminal Fault)
**Fundamental Pattern:**
```
CACHE_MANIPULATE(addr) → ACCESS_UNMAPPED/PRIVILEGED_MEMORY → TIMING_MEASURE
```

**Key Differentiators:**
- Cache line manipulation: `clflush`, `clflushopt`, `invlpg`, `dc civac`
- Access to memory with terminal fault (not-present, reserved bits)
- CPU transiently uses L1D cache value instead of faulting immediately

**Graph Signature:**
```
[CACHE_FLUSH] → [PAGE_FAULT_ACCESS] → [TIMING]
        or
[TLB_INVALIDATE] → [MEMORY_ACCESS] → [TIMING]
```

**Semantic Features:**
- `has_cache_flush_op = 1`
- `has_tlb_op = 1`
- May have `clflush` before memory access
- Often near page table manipulation code

---

### 5. MDS (Microarchitectural Data Sampling)
**Fundamental Pattern:**
```
VICTIM_OPERATION → BUFFER_LEAK → TIMING_MEASURE
```

**Key Differentiators:**
- Samples data from microarchitectural buffers (fill buffers, load ports, store buffers)
- Uses `VERW` instruction for clearing buffers as mitigation
- `mfence; lfence` pattern for serialization

**Graph Signature:**
```
[VICTIM_ACCESS] → [BUFFER_PROBE] → [TIMING]
```

**Semantic Features:**
- `has_verw = 1` (mitigation indicator)
- `has_mfence_lfence = 1`
- Memory access patterns that hit internal buffers

---

### 6. RETBLEED (Return Speculation)
**Fundamental Pattern:**
```
CALL → ... → RET (where return address is mispredicted)
```

**Key Differentiators:**
- `ret` instruction that can be speculated
- Return Stack Buffer (RSB) can be poisoned
- Unbalanced call/ret sequences
- `ret` near function entry or after shallow call

**Graph Signature:**
```
[CALL func] → ... → [RET] (mispredict to attacker gadget)
```

**Semantic Features:**
- `call_to_ret_distance` (short = suspicious)
- `unbalanced_call_ret = 1`
- `ret_near_function_entry = 1`
- No indirect branch, but return-based control flow

---

### 7. INCEPTION (Phantom Speculation)
**Fundamental Pattern:**
```
TRAINING_SEQUENCE → INDIRECT_CALL → PHANTOM_SPECULATION
```

**Key Differentiators:**
- BTB pollution through training
- Multiple indirect calls in sequence
- Speculation into "phantom" code that doesn't exist
- Creates transient execution at arbitrary addresses

**Graph Signature:**
```
[INDIRECT_CALL_1] → [INDIRECT_CALL_2] → ... → [TARGET_CONFUSION]
```

**Semantic Features:**
- `indirect_call_sequence > 2`
- `btb_training_pattern = 1`
- Multiple prediction-dependent branches

---

### 8. BHI (Branch History Injection)
**Fundamental Pattern:**
```
BRANCH_1 → BRANCH_2 → ... → BRANCH_N (history training) → VICTIM_BRANCH
```

**Key Differentiators:**
- Branch history buffer pollution
- Multiple branches to create specific history pattern
- Final branch mispredicts due to crafted history

**Graph Signature:**
```
[BRANCH] → [BRANCH] → [BRANCH] → ... → [VICTIM_BRANCH mispredicts]
```

**Semantic Features:**
- `branch_density` (many branches in small window)
- `mixed_branch_types = 1` (conditional + unconditional)
- `loop_with_branches = 1`
