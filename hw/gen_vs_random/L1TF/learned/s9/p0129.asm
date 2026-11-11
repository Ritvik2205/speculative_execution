.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
test dil, -126
or sil, -44
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
sbb bx, 94
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
test cl, 27
cmovle rdx, rdi
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
