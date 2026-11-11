.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor sil, dil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovnp bx, dx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
bt ecx, edx
or rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovnb rdi, rax
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
xor cl, 24
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and cl, 114 # instrumentation
cmovz cx, si
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and edx, eax
xor dil, 8
cmovnbe rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
