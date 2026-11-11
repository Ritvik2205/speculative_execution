.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
or rax, 699028911
test bl, bl
test dil, -126
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
and cl, bl
sbb cl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
