.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and dl, 32
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 92
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and ax, 26813
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
