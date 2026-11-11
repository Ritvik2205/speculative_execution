.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
inc rdi
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
adc bl, dil
xor bl, bl
sbb al, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
lea rbx, qword ptr [rcx + rdi + 45]
add cl, cl
lea ax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
