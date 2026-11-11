.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 25
and edx, -44
cmovnb rbx, rax
cmovns bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
cmovp esi, eax
and cl, -44 # instrumentation
cmovno rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
bt rdx, 87
jmp .bb_0.1
.bb_0.1:
xor rsi, rax
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
and rdx, 83
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
