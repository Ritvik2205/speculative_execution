.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
or edi, 76
sub dl, -49
not bl
sub dl, 105
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
