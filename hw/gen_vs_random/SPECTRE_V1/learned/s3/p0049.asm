.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
mov dl, al
add al, 10
sbb cl, al
test cl, -33
sbb al, bl
and cl, al
sbb bl, -41
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
