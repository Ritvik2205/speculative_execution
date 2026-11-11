.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
or al, 100
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 83 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
add eax, -55403434
sbb al, cl
cmovz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
add bl, -95
xor al, -119
sbb bl, al
cmovno dx, di
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movsx di, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
