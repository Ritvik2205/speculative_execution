.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
xor ax, ax
bt bx, 253
cmovz si, di
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 51
or ax, -7150
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 26
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and dl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and sil, 74
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and dl, 17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
