.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
cmovnp dx, ax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 45
bswap eax
lea rsi, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
test rdi, -1846965753
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
