.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
xor al, cl
sub dl, -16
and ebx, -122
add dil, cl
cmp eax, -1538116527
test al, -26
xchg si, cx
or bl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
