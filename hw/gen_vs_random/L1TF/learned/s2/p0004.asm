.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xor dil, -42
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rdx]
sbb dil, dl
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 79
add al, 117
test cl, 33
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
