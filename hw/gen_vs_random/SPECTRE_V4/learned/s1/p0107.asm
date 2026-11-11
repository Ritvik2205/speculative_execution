.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
test al, bl
test eax, 1600638830
sub cl, -32
test al, 18
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
or dil, -104
cmovno di, bx
or bl, al
test bl, sil
cmp rax, -2096157586
mov cl, -38
sbb bl, al
sbb sil, -124
adc cl, 6
or al, 27
xor rdi, -72
adc al, 43
test sil, 16
or dil, bl
test dil, -58
and bl, 76
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and eax, -2001076187
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
adc bl, al
and al, 41
add al, -32
adc cl, -86
test dil, al
jmp .bb_0.1
.bb_0.1:
xor dl, -66
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
