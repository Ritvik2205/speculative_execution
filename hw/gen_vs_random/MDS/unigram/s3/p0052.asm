.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
or sil, sil
test al, -59
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
cmovl rdx, rdi
cmovnb ax, cx
cmovnp eax, edx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and dl, 102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
btc ax, 39
bts dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
