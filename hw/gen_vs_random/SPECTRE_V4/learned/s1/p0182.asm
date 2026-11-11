.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 84
and bl, -60
test dl, -102
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
sbb al, 43
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
cmp al, 105
sub al, bl
test al, 72
xor dil, 117
xor dl, cl
xor al, -31
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
adc dil, 124
adc bl, -20
and dil, -61
and bx, 57
cmp dl, al
and al, -28
xor cl, -15
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
adc bl, dl
adc bl, al
and sil, dil
mov dil, dl
cmp rax, -2096157586
xor ax, -29507
xor al, -31
sbb sil, -11
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
adc al, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sub dl, -16
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
