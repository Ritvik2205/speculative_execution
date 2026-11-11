.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and al, 82
and sil, -84
or al, dl
adc bl, -58
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
test bl, -91
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
sbb al, -3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmp cl, al
adc bl, dil
xor rax, -1522567562
sub sil, cl
and al, 85
test edi, -2098143765
sbb al, 57
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
cmp al, -44
cmp bx, 113
adc al, -86
and dl, -11
and al, bl
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
