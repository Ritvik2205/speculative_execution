.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
bts bx, 90
sbb cl, 105
adc dl, 107
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
