.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
cmovz ecx, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
cmp eax, ebx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
