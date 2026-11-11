.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
cmovno bx, cx
bts ebx, 97
xor ax, 30996
and sil, -90
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
