.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor eax, -127
btc eax, eax
or rdi, -11
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
cmovno rdi, rbx
xor dl, al
cmovns bx, di
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
btr rcx, rdi
or esi, ebx
and cl, 123 # instrumentation
cmovo ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
