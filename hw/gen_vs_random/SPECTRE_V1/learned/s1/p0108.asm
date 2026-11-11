.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
lea ebx, qword ptr [rdx]
xor bl, al
test dil, -116
sub bl, al
mov cl, al
sub rdx, 72
sub cl, -47
sub dl, 71
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
