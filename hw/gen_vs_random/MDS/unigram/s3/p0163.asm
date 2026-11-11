.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 27
and dl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
bts rbx, 25
and bl, 120 # instrumentation
cmovnp di, ax
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
or edx, -1
and bl, -5 # instrumentation
cmovnl cx, bx
or eax, eax
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and bl, -28 # instrumentation
cmovl rdi, rax
or bx, 39
xor cl, 24
xor dl, 40
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
