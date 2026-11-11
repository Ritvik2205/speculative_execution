.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
xor cl, al
test eax, -31785616
cmp rax, -1247892360
add cl, sil
sbb cl, 40
or dil, -16
or bl, 111
or rax, 185991441
sbb al, -43
test cl, dil
test cl, -31
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov bl, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
