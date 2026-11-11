.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdi
sub cl, -32
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
xor al, 55
cmp al, 105
test dil, -26
and al, 41
sub cl, sil
adc dl, dil
test al, -38
test al, 72
test dl, -125
sub dil, dl
sbb sil, al
cmp sil, 113
sub al, dil
test dil, 64
sub cl, al
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and al, -118
sub cl, 92
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmp rax, 1682181214
sbb al, 54
sbb ecx, 94
cmp dil, cl
adc bl, dil
cmp al, 98
xor al, -31
test al, 72
adc dl, 95
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
