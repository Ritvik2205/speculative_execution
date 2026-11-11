.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or dil, 5
xor al, -113
sbb al, 57
test cl, dl
xchg bl, dil
add al, dil
or bl, cl
and dil, bl
and cl, bl
adc al, -70
cmp al, -78
cmp rax, 40
xor dl, dil
cmp bl, -16
or dl, -26
sbb ax, 75
cmovno bx, cx
xor al, bl
adc bl, 0
or eax, 185586366
cmp al, -53
mov cl, bl
cmp dl, sil
add al, -82
and cl, -128
xor ax, 13332
sub dil, -40
xchg ebx, edi
and al, -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
