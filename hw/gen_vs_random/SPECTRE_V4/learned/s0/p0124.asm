.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 72
and eax, -1237519395
add al, -112
sub dl, 107
or bl, al
mov cl, sil
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
cmp bl, dl
or al, al
cmovbe si, dx
and cx, -117
add cl, dil
and bx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
