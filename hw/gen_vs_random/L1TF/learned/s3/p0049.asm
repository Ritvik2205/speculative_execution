.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc edx, edx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or di, 56
cmp bx, -21
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add dil, cl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmovno ax, si
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
