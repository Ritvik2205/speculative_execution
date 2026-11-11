.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, 36
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
xor sil, al
xor dil, 81
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
xor al, cl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and dl, -41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
or rdi, 21
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
test si, 54
and cl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
