.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
cmp dil, sil
cmp al, cl
test cl, -31
sbb al, -14
sbb bl, -75
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
sbb al, -43
dec bl
cmp dl, sil
sub dl, 107
sub dil, cl
test al, -38
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
test al, -85
and dil, -61
and cl, -128
add al, bl
adc cl, al
sub bl, dl
cmp al, cl
and sil, -84
test cl, -119
and al, 49
sbb dl, dil
sub dx, -12
sub al, 11
xchg esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
