.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
test cx, 29
and rax, -109
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
inc al
jmp .bb_0.1
.bb_0.1:
xor bx, 88
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
