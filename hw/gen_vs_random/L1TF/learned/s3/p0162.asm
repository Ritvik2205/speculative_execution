.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc edx, edx
xor al, 16
xor rsi, 100
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
add sil, bl
add ax, -24961
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
jmp .bb_0.2
.bb_0.2:
and dl, 73
test rdx, 59
test eax, 899472326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
