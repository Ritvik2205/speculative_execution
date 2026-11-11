.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
sbb ecx, 33
lea bx, qword ptr [rdi]
and sil, dil
cmp dil, -78
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add cl, -127
jl .bb_0.3
jmp .exit_0
.bb_0.3:
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
