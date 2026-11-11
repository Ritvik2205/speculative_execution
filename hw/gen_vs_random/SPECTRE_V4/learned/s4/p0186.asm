.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 107
xor cl, 88
not dil
adc sil, -2
adc eax, 1307735127
sbb dl, 53
sub cl, al
cmp al, -106
xor ax, -17712
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sub al, 0
cmp rdi, 28
sbb sil, -124
sub dl, dil
cmp rcx, -121
btc rsi, rbx
add sil, cl
xor dil, cl
and bl, -119
add di, 40
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
adc al, -86
or dil, 5
and dl, -11
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
