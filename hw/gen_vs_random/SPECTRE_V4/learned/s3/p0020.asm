.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, dx
sbb cl, 45
sub al, 55
adc bl, al
or rax, -897763206
sbb bl, dil
cmp bl, 12
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and dl, al
and dl, bl
sbb sil, bl
sub dl, -16
sub al, 96
cmp sil, al
movzx cx, dl
and al, -118
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
xor ax, 15671
xor al, -113
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 97
cmp al, 98
or dl, -26
or bl, cl
sbb al, 54
test dil, -83
and dil, -61
mov dil, cl
add dil, 105
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xchg edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
