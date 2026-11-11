.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -863161215
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and al, 100
adc cl, -54
add al, sil
adc dil, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
sub sil, bl
or edi, -64
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or cl, al
add al, bl
add dil, dil
test dil, -58
test dl, cl
or sil, -47
and al, 92
and cl, -101
xor dl, bl
mov bl, sil
sbb eax, 40509622
sbb sil, -11
mov dl, bl
and dil, dl
cmp al, 105
adc al, dil
sbb dil, 38
and ax, -14374
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
