.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
add dl, bl
test cl, -33
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
test ecx, 7
lea ecx, qword ptr [rdi]
adc cl, -19
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, sil
xor cl, cl
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
