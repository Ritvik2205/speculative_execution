.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, -43
cmp rax, -1070057082
or eax, -1341747033
cmp al, 75
cmp rax, 40
adc cl, -66
sub dl, cl
sbb al, 57
or bl, cl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and al, dl
btc rdi, rbx
or dil, sil
add al, bl
or bl, 80
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
