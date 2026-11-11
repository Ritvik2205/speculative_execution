.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, sil
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, rdi
sub al, sil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 70
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
