.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
cmovle bx, di
jmp .bb_0.1
.bb_0.1:
test al, -81
and dx, 60
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor al, 99
test cl, bl
not cl
test esi, 1857129931
or sil, -49
test eax, -1634766116
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
