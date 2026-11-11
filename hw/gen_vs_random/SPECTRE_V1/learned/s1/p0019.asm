.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 112 # instrumentation
adc dil, al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rcx, 38
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmp al, 62
xchg esi, edi
test dil, -116
test dx, 24
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb dil, al
test cx, -17886
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
