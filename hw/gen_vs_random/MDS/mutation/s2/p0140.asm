.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, al
or rdi, -11
or esi, ebx
btc eax, eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
cmovns bx, di
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
cmovno rdi, rbx
btr rcx, rdi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
xor eax, 2063216578
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and cl, 123 # instrumentation
cmovo ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
