.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
test cl, 45
lea dx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp al, 56
cmovb di, cx
lea rax, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
