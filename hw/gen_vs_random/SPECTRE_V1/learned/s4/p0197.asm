.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
cmp dil, sil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
sub dl, cl
jmp .bb_0.1
.bb_0.1:
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
