.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
cmp rdx, 93
sbb dl, al
sub rax, 1715032616
xor dl, al
sbb al, 61
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 67
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
