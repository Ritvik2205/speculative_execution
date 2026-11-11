.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -71
test rsi, 4
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
test rax, -648054011
jmp .bb_0.1
.bb_0.1:
test esi, 1857129931
and ax, 13090
or dl, bl
bt cx, di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and ax, 19740
test rcx, -613256812
xor al, 122
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
