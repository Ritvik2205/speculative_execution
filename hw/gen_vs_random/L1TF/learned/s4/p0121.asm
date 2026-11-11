.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rdi
and cx, -79
xor al, dil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
or ax, -10161
test edx, -541774418
or bl, dl
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
