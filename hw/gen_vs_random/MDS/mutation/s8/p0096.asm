.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
cmovbe edi, edi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
btr bx, dx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
btr esi, ebx
and bl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and al, 17 # instrumentation
cmovnp esi, edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and cl, -103 # instrumentation
cmovns ecx, ecx
jmp .bb_0.2
.bb_0.2:
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
or rax, 1020005579
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and ax, 29207
xor rax, 459999114
cmovp edi, edi
cmovbe edi, eax
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, rbx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
