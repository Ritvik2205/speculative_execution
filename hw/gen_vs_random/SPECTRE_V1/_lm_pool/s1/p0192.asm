.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb eax, ebx
sbb eax, 1332762061
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, dl
lea rbx, qword ptr [rdx + rcx + 80]
add cl, -127
jl .bb_0.2
jmp .exit_0
.bb_0.2:
xchg bl, al
xchg rdx, rbx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
