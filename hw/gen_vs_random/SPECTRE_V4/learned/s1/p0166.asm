.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 7
sub dil, -28
and ax, 25163
sbb dil, cl
adc al, 43
xor dl, al
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp eax, 512128713
and al, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
adc al, -86
cmp sil, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
