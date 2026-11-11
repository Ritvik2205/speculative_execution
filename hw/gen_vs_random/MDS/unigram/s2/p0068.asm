.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
cmovl di, dx
xor di, -83
and ecx, -104
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 100
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and al, 46 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
bt edx, edi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
btc di, 164
or dil, dil
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
test dl, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
