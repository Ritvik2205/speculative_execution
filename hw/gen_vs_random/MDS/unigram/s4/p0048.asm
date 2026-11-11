.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
cmovnl edi, edx
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], eax
cmovle rdx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
jmp .bb_0.1
.bb_0.1:
bt rbx, 241
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
or esi, -110
and bl, 49 # instrumentation
cmovbe rax, rbx
and cl, 114 # instrumentation
cmovz dx, ax
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and si, -121
or cl, 7
btc ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
