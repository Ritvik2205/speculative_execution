.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
adc ax, 24404
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dil, 72
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea dx, qword ptr [rdi + rsi]
jmp .bb_0.2
.bb_0.2:
test dl, -7
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, sil
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
