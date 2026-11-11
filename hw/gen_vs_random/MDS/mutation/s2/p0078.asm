.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
xor al, 78
bts eax, esi
cmovnb di, ax
btr rsi, 73
xor dl, -68
cmovnbe edx, esi
cmovb si, ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
bt rcx, 137
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
xor al, -28
btc esi, 226
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
or rax, 1749358813
test rax, 1732677821
jmp .bb_0.2
.bb_0.2:
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 109
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1827868798
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovp esi, edi
test cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
bt eax, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
or rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
