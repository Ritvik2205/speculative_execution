.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
or eax, edx
jmp .bb_0.1
.bb_0.1:
xor rdx, -59
test esi, 1857129931
not al
xor ax, 23633
or sil, -78
or dil, -76
test rsi, 13
xor cl, al
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and dil, -39
test edx, -1561252782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
