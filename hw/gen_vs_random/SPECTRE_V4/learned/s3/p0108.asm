.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
xor si, dx
or bl, -99
add al, dil
sub al, dil
xor cx, di
xchg bl, sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
