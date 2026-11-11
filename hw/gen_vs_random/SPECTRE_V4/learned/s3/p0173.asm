.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and dx, -107
adc al, dl
test edi, 2142010790
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
sbb edi, 107
mov bl, cl
adc dl, 26
neg dl
cmp al, -122
test eax, 1340292467
sub dl, 107
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and dx, -107
and cl, bl
sbb dil, cl
xor al, 30
sbb al, 57
xor al, -60
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor cl, dil
sub al, 11
adc dil, 112
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 45
xor cl, -73
sbb ax, 10407
test edx, -38580719
not bl
adc cl, -86
sbb sil, -124
cmp dl, 83
mov sil, cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sub cl, -32
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
