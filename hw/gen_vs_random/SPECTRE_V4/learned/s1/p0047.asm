.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25163
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
cmp al, cl
adc sil, al
sub al, dl
or cl, bl
cmp al, 75
and al, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
or eax, 143573881
adc bl, sil
add cl, dl
cmp rsi, 22
add rbx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
