.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
add cl, -9
add bl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
cmp sil, cl
cmp al, 115
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 27
or rbx, 69
cmp al, 114
adc cl, 31
test dil, 64
and bl, 76
or di, 2
and sil, -84
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
