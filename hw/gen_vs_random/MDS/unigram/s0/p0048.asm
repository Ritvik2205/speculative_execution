.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and bx, 75
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
and bl, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
and bl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
or si, 94
or bl, -125
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
xor sil, bl
and cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
cmovnl rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
xor dil, -124
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
