.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
xor dl, 64
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, -32
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rsi]
lea cx, qword ptr [rax + rcx + 74]
sub cl, 86
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
