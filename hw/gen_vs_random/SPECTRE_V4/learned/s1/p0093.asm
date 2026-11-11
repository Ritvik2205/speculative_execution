.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -52
cmp rbx, -91
test al, 27
neg bl
or di, 29
or ax, 11396
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp eax, 1521417271
sub dl, bl
bts di, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
