.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
sbb al, -50
test al, -70
sub rax, -2089384489
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
sub dil, -39
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
lea ax, qword ptr [rdx]
or sil, cl
jmp .bb_0.5
.bb_0.5:
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
