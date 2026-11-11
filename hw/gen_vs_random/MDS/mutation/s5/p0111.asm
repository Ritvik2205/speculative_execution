.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
xor dl, al
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
cmovns bx, di
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
cmovno rdi, rbx
xor eax, -127
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
btr rcx, rdi
btc eax, eax
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
or esi, ebx
or rdi, -11
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and cl, 123 # instrumentation
cmovo ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
