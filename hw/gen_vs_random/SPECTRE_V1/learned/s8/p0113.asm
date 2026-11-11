.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea eax, qword ptr [rbx]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jp .bb_0.4
jmp .bb_0.5
.bb_0.4:
test cl, -120
sub al, dil
jns .bb_0.5
jmp .exit_0
.bb_0.5:
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
