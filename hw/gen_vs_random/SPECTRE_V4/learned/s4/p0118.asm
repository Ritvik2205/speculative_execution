.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 44
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and dl, -53
or al, bl
cmp sil, al
test ecx, -1293796332
adc eax, 1378432629
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
sbb al, 70
sbb cl, -69
mov sil, al
and bl, dl
xor rsi, -3
xor bl, -126
cmp sil, 113
mov bl, cl
sub dil, 65
sbb dil, dl
and bl, -119
sub dl, cl
mov cl, 14
add dil, 75
test sil, 68
sub al, 63
sub ecx, -107
sub al, -128
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
not dil
sbb dl, bl
cmp dil, cl
sub dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
