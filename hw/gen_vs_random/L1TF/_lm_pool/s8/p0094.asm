.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 41
xor dil, -42
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
sbb al, bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
