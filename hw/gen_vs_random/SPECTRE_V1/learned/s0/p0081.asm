.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 28
test dl, -36
add al, -109
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
