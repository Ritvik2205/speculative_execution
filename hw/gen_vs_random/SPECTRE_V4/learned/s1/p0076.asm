.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
add al, -44
add sil, cl
jmp .bb_0.1
.bb_0.1:
xor dil, sil
cmp cl, al
cmp rax, -1247892360
cmp ecx, 98
cmp al, 115
adc al, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
