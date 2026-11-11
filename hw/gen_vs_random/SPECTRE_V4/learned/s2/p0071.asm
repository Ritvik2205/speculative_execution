.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -55
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovno dx, si
cmp sil, cl
and bl, al
sbb dil, 69
cmp dil, al
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
sbb bl, -75
sub dil, -28
sub dl, 107
and al, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 76
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
test edx, -38580719
cmp al, 105
sbb bx, 87
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
cmp rax, 1097504565
sub sil, bl
sub al, cl
sbb al, 66
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
xor ax, -17712
xor bl, al
add dl, cl
bts ebx, 197
sub al, 54
xor dil, sil
and dil, al
adc cl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
