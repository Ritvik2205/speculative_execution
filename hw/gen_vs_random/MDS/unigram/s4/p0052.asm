.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -52
and bl, 44
bt ecx, ecx
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
btc cx, 104
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 39
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovno ebx, edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
cmovp di, bx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 63
cmovo ecx, edi
bt ecx, 88
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
not eax
and dx, 74
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and cl, 102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
