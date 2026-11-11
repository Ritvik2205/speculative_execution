.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 73
cmovo bx, ax
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 10
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
cmovns ax, dx
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
cmovbe ax, ax
jmp .bb_0.1
.bb_0.1:
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
test dl, 25
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 37
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
or dil, sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
xor al, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
