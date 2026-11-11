.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
or rax, -1523798580
and dx, 60
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
xor ax, -23364
or dil, -76
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
