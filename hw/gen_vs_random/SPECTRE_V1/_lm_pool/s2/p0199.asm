.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
sub cl, al
sub cl, dil
mov dl, sil
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 38
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 2
sbb esi, 36
add al, -44
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or eax, 1276549484
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
