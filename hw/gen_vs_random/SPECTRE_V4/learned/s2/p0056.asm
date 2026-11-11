.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
sbb al, 54
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 80
sub al, cl
sub al, sil
and al, 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
xchg bl, al
and al, 59
or edi, -78
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and dl, -11
and di, -65
cmp al, 114
adc dil, cl
or cl, -104
and bl, cl
sub dil, -28
test cl, -52
sbb si, 86
sbb dil, 96
and bx, 22
imul ax, di, 101
xor al, dil
add edi, 11
mov bl, dil
cmp eax, 64
and rax, -779592432
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
