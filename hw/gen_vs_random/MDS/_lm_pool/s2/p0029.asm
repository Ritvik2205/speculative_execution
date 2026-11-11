.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
and sil, 89
test dl, 27
or al, -17
test al, -81
test rcx, -613256812
and dil, -39
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and cx, -2
test edx, -372470678
or al, -22
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
