.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
dec dil
add al, 19
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test esi, -2111618709
and dil, dl
sbb cl, 12
adc dil, -17
test sil, -119
dec sil
sbb ax, 75
or sil, cl
sub al, dl
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and dl, bl
xor rax, -1522567562
sub al, -128
dec sil
cmp eax, 89
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
