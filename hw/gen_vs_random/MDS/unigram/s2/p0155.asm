.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdx
bt dx, ax
xor eax, 1170472196
cmovnz esi, ecx
cmovle ecx, eax
cmovb dx, cx
xor dl, -68
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and ax, si
btc rsi, rbx
cmovb eax, edx
and cl, 40
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and dil, 75
or bl, bl
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
cmovnp rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and dl, -73 # instrumentation
cmovns rdx, rbx
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
