.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
adc cl, -34
jmp .bb_0.1
.bb_0.1:
test al, -56
add sil, -61
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test esi, 28
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
