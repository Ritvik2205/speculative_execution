.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 96
mov al, sil
and al, -12
cmp sil, cl
and al, 41
sbb sil, 24
sub al, 0
sub ecx, -107
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
sub al, 54
sbb cl, 40
add eax, -1628652110
add al, -29
adc sil, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
dec dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
sbb al, 43
test edx, -38580719
sub dl, -16
cmp rbx, -3
sub bl, cl
xor cl, dl
xor ax, -17712
or dl, sil
xor ax, -17712
adc al, dil
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
