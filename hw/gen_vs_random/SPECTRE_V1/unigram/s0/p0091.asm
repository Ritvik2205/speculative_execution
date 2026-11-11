.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, 88
add rcx, 23
sub dx, -23
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add ebx, -47
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, al
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmovnp rbx, rsi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
mov dil, sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
cbw
and bx, -118
adc bx, 18
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
