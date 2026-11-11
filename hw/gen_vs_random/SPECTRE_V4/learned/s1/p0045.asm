.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
xor sil, dil
add al, dl
cmp al, -116
cmp al, -78
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
cmp cl, bl
cmp cl, 49
sub dil, al
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
adc sil, dil
test dl, -81
mov al, al
and al, 85
mov cl, al
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
adc bl, -58
xor ax, -17712
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
