.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
mov al, dil
imul rbx, rax, 70
and rdi, rax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
sbb al, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 1
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 59
imul rax, rsi, 31
lea rcx, qword ptr [rcx + rdx]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
cmp rbx, rcx
cmovnbe eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
