.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add bl, 89 # instrumentation
sbb dil, bl
cmp ax, -31327
xor cl, dil
or ax, -10161
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
