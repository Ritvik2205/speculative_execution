.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 39
test al, 15
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
test dil, -126
test cl, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
