.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25163
movzx ax, cl
cmp rbx, -91
or dil, -16
add al, -112
add bl, cl
xor rcx, -111
and al, -1
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
xor al, 48
adc bl, dil
mov sil, bl
or dl, 71
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 71
add dl, -82
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
cmp dl, 23
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
