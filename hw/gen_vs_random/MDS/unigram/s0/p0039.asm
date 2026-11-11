.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 38
cmovp edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and sil, -115 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 24
and cx, ax
jmp .bb_0.1
.bb_0.1:
and cx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and dl, -33 # instrumentation
cmovns rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
xor sil, 71
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 95
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
