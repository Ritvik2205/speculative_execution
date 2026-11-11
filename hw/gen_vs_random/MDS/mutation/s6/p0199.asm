.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
or esi, ebx
and cl, 123 # instrumentation
cmovo ax, dx
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
or rdi, 21
cmovns bx, di
xor dl, al
btr rcx, rdi
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
btc eax, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor eax, 1640090871
cmovno rdi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
