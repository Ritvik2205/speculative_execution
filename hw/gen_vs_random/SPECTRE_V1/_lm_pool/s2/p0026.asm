.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, bx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor al, sil
adc di, 84
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
