.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
cmovnbe eax, edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
dec dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
sbb ebx, 57
xchg dl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
cmovno rdi, rdi
sbb al, bl
inc si
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
