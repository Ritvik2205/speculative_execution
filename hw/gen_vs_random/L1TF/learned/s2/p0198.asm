.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
sub dil, -70
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, -104
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
inc eax
jmp .bb_0.2
.bb_0.2:
test al, -84
bt cx, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
