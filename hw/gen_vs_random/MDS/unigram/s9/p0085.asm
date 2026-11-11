.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dil
xor sil, 27
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
btc rcx, rsi
xor edi, 52
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 31
or sil, cl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and ecx, -104
and dl, 21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
bts dx, ax
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor sil, -46
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and bl, -56 # instrumentation
cmovnle esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
