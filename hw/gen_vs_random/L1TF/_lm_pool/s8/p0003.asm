.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
test sil, bl
add al, cl
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and cl, 70
and cl, cl
or rax, 1808026647
cmovl ax, dx
and bl, 89
lea si, qword ptr [rcx + rsi + 51]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
