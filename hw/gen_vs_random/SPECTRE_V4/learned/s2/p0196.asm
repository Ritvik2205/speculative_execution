.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -6
adc al, -59
sbb dl, al
sub dl, bl
jmp .bb_0.1
.bb_0.1:
adc bl, 127
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
add bl, cl
sub dil, 35
xor dil, 37
and dl, dil
adc dl, al
or al, 27
xor al, 55
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and di, -65
adc cl, -66
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and sil, dl
and dl, bl
and sil, dil
cmp al, 109
sub cl, bl
xor cl, dl
cmp al, 105
sub rdx, 21
and ax, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
