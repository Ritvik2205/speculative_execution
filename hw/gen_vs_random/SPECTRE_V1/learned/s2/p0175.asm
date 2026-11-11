.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
sbb cl, 105
sub bl, -19
xor dil, -37
mov dil, bl
adc cl, bl
and rax, -175411684
lea di, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt cx, 13
test dx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
