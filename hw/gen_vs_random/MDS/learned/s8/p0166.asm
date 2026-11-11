.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
test dl, 9
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
test eax, -571234566
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
xor dil, 81
or dil, -78
jmp .bb_0.1
.bb_0.1:
test rdx, 55
bt ecx, esi
test dl, 27
and cl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
