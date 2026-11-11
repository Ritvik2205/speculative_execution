.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
cmovns bx, di
cmovno rdi, rbx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
btr rcx, rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
or esi, ebx
btc eax, eax
or rdi, -11
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and cl, 123 # instrumentation
cmovo ax, dx
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
xor eax, 984871847
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
