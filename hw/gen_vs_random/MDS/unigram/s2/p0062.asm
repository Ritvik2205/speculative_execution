.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmovle ax, dx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
cmovnle bx, ax
xor al, al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovnle ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
cmovp dx, cx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 89
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and dl, -40 # instrumentation
cmovle si, dx
cmovz di, di
cmovnz cx, dx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
