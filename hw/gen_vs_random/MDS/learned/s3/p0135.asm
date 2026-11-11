.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, si
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and ax, -10351
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
bt cx, si
test bl, -114
test cl, 91
test dl, -95
bts esi, 61
xor eax, 571592471
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or di, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
