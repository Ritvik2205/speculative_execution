.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
cmp cl, sil
adc bl, 88
cmp cl, dil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
lea dx, qword ptr [rsi + rbx]
sub ax, 124
mov bl, cl
lea bx, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
