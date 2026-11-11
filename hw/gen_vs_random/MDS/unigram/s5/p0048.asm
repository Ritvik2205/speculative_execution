.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 57 # instrumentation
cmovnb si, ax
btc ax, 11
bts ecx, 184
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and dl, 84 # instrumentation
cmovle bx, dx
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
test dl, -85
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and dl, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and sil, -69
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and dl, 72 # instrumentation
cmovz eax, ecx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
