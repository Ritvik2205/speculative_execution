.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
test dil, bl
and di, 99
and bl, bl
xor al, 9
or al, -24
test esi, 1857129931
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
or al, 24
test cl, 73
xor di, -83
and bx, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
