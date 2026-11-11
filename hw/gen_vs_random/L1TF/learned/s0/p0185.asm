.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
or al, sil
and dx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
