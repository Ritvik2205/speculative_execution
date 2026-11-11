.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
cbw
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
xchg dil, sil
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -33
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
add bl, 10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -7
movzx ecx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
