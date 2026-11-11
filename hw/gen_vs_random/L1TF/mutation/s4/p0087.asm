.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -7
xchg dil, sil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and cx, 127
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
btc ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
cmovb ax, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
