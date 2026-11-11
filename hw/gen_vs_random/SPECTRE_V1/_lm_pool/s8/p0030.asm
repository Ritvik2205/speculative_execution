.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
add rax, -704585563
add dl, 47
sbb bl, 79
xor edx, 6
sbb dil, -93
jmp .bb_0.1
.bb_0.1:
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
