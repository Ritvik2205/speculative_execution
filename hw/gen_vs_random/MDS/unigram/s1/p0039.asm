.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
cmovno rsi, rdx
btr rdx, 35
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 12
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
cmovz edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
cmovnz ebx, esi
xor rdx, -59
xor edi, 82
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
btr cx, si
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
or bl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
