.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
xor bx, 62
or al, cl
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, dil
and al, -68
jmp .bb_0.2
.bb_0.2:
test bl, 45
add sil, cl
jmp .bb_0.3
.bb_0.3:
dec al
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
