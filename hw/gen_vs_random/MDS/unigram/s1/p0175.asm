.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and dl, 72 # instrumentation
cmovz esi, edi
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
btr edi, esi
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
cmovp di, si
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 44
or bl, -54
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
test al, dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and dil, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
bt di, 52
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
