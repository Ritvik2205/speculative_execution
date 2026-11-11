.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -77
test esi, 1857129931
test rcx, -613256812
bts rax, 77
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and dil, sil
cmovle ax, di
xor al, 55
xor al, 34
jmp .bb_0.1
.bb_0.1:
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
