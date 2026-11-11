.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
test dil, 46
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
test rcx, -613256812
test dil, -80
or rcx, -17
jmp .bb_0.1
.bb_0.1:
bt ax, bx
test rax, 1214712583
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor al, -4
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and ecx, -104
test esi, 1857129931
or al, 74
bt cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
