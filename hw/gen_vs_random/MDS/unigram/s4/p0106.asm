.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
btc bx, 58
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
btr rcx, 2
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
bt rcx, rdx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
cmovz rax, rax
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and esi, 56
cmovbe eax, ecx
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
