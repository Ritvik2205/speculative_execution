.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -119
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdi
sbb al, -14
cmp eax, 89
and al, dl
cmp edi, 3
cmovl eax, edx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
add cl, dl
xchg rax, rsi
test cl, -31
add al, bl
and dx, -107
sbb al, -52
sub dl, al
or al, cl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sub al, 55
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 14
sub bl, 56
mov al, dil
sub al, 11
xor ax, -29507
mov cl, -38
sub bl, dl
add dil, bl
cmp dil, al
xor cl, bl
adc al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
