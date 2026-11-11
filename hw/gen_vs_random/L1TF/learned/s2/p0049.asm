.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
add rbx, 99
and cl, 24
cmovb di, bx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
