.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
sub dl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
or si, 85
sub dil, 65
or sil, dil
add al, dl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb al, 57
dec dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sbb bl, -98
adc cl, -86
not bx
sbb sil, al
and al, -118
adc sil, 111
xchg ebx, ecx
cmp cl, dil
and dil, -23
test cl, -31
cmp dl, dil
and al, 82
xor dl, cl
add dil, -61
and bl, al
mov sil, 90
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
sbb dl, 75
test dil, 64
xor dl, -66
or dx, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
