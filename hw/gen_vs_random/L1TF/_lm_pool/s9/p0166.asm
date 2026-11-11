.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
xor rsi, 27
test bl, dil
and ebx, 108
jmp .bb_0.1
.bb_0.1:
cbw
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
