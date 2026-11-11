.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 461212071
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test bx, 25542
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
xor dl, -19
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 74
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 11
and sil, sil
bt dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and al, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
xor edi, 44
or cl, 6
and dl, dl
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
