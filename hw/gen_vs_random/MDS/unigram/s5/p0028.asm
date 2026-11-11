.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 70
or eax, ecx
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
test cl, al
and edi, edx
and ax, dx
and bl, 65 # instrumentation
cmovnbe bx, cx
cmovp dx, dx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
or al, 54
and dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
or dil, -76
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
or dl, 85
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
