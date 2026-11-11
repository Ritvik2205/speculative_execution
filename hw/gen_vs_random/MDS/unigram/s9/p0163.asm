.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
btr rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], esi
cmovnbe bx, cx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
or sil, dil
or dx, 125
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
btr rcx, 53
btr dx, ax
and sil, 89
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
test bl, 65
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
