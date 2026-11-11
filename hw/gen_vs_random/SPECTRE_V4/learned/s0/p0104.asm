.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 79
sbb al, -52
test al, 57
and dil, -120
xchg rsi, rcx
sub al, 96
xor rax, 944027678
xor ax, -29507
adc sil, bl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xchg esi, ebx
cmp rax, -2096157586
test cl, -119
imul rdx, rax
or dl, bl
and al, cl
adc al, -59
and al, -124
sub dl, -16
add al, -6
and dil, 8
adc bl, 79
add al, -82
xor dil, sil
and al, -87
sbb dil, 22
cmp al, 98
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
test al, -26
xor cl, -15
sbb ax, 10407
not cl
sub sil, -35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
