.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
cmp rax, -2096157586
adc al, 43
and di, -34
or al, sil
mov dil, bl
jmp .bb_0.1
.bb_0.1:
add al, -99
sub al, cl
sub dil, -11
or cl, dil
xor dil, 117
sub cl, sil
and al, dil
sub dl, sil
adc cl, dil
sbb dil, 97
mov bx, 27738
cmp al, 115
sbb dil, 80
adc dil, -17
cmp rax, -1070057082
test dl, 114
cmp cl, 59
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
add al, -6
xor dl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
