.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 57 # instrumentation
cmovnb di, si
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and dl, al
xor si, dx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
or rax, -689609688
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
btc rbx, rdi
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and bl, 107 # instrumentation
cmovbe di, dx
cmovle di, si
and al, 84
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
or eax, -1777347252
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
