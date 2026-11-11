.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
sbb bl, dl
test al, 42
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
loopne .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub rax, -1628299544
sbb eax, -417098439
xor al, cl
lea ax, qword ptr [rbx + rax + 76]
js .bb_0.3
jmp .exit_0
.bb_0.3:
movzx eax, bl
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
