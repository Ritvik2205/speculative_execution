# Fundamental Attack Differentiators

## The Problem with Current Encoding

The current approach has several issues:

1. **Sequence encoding only captures opcodes** - loses the data flow structure
2. **Graph building breaks at branches** - creates disconnected nodes because we can't resolve jump targets
3. **Register-level details are noise** - what matters is semantic patterns, not which register is used
4. **No capture of speculative execution patterns** - the key to all these attacks

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

---

## Better Graph Encoding Approach

Instead of tracking registers, we should build a **Semantic Flow Graph**:

### Node Types (Abstract Instructions)
1. `LOAD` - Memory read
2. `STORE` - Memory write  
3. `BRANCH` - Conditional control flow
4. `CALL` - Function call
5. `RET` - Return
6. `INDIRECT` - Indirect branch/call
7. `COMPARE` - Comparison for branch
8. `FENCE` - Memory barrier
9. `CACHE_OP` - Cache manipulation
10. `TIMING` - Timing measurement
11. `COMPUTE` - Other arithmetic

### Edge Types
1. `SEQUENTIAL` - Next instruction
2. `DATA_FLOW` - Output feeds input (not by register, by position)
3. `CONTROL_FLOW` - Branch target (conditional)
4. `CALL_RETURN` - Call to return edge

### Key Patterns to Detect

```python
ATTACK_PATTERNS = {
    'SPECTRE_V1': ['COMPARE', 'BRANCH', 'LOAD', 'LOAD'],  # Bounds check bypass
    'SPECTRE_V2': ['INDIRECT'],                           # Indirect branch
    'SPECTRE_V4': ['STORE', '...', 'LOAD'],              # Store bypass
    'L1TF': ['CACHE_OP', 'LOAD'],                         # Cache + access
    'MDS': ['FENCE', 'FENCE'],                           # mfence; lfence
    'RETBLEED': ['CALL', '...', 'RET'],                  # Call-ret pattern
    'INCEPTION': ['INDIRECT', 'INDIRECT'],               # Multiple indirect
    'BHI': ['BRANCH', 'BRANCH', 'BRANCH'],              # Branch history
}
```

## Proposed Encoding Changes

### 1. Semantic Tokenization
Instead of `ldr_REG-MEM_STACK`, use:
- `LOAD_STACK` - Load from stack
- `LOAD_HEAP` - Load from heap-like address
- `LOAD_INDEXED` - Load with index (arr[i])

### 2. Graph-based Features
Build actual connected graphs by:
- Using semantic types as nodes (not instructions)
- Connecting based on def-use chains at semantic level
- Adding pattern-matching for attack signatures

### 3. Attention on Attack Patterns
Train the model to attend to the key attack signatures rather than low-level details.
