.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe esi, eax
not eax
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
bts rax, rcx
or bx, 0b1000000000000000 # instrumentation
bsr si, bx
cmovle rax, rax
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
bt rdx, 40
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
xor esi, 33
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and cl, -24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
cmovz esi, ecx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
