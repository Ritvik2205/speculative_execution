.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
adc bl, -73
lea dx, qword ptr [rax + rdi]
test sil, 13
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
lea dx, qword ptr [rdi + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, dil
add eax, -55403434
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
