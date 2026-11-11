.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 65
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
btc cx, di
sbb rcx, 8
bt edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
