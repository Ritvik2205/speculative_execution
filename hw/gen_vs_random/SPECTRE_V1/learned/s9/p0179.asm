.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 11
cmp rax, -72548874
and cl, -57
xchg eax, edi
add rsi, 109
lea rdi, qword ptr [rdx + rcx]
jmp .bb_0.1
.bb_0.1:
add cl, 65 # instrumentation
cmovo rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
adc cl, dil
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
