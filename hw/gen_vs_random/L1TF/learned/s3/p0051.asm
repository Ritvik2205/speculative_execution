.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor dl, bl
add bl, cl
add bl, cl
and bl, 89
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
