.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -104
test al, 15
jmp .bb_0.1
.bb_0.1:
test al, bl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dl, cl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
