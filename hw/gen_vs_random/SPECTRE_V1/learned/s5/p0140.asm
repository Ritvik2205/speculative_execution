.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 25
sub al, bl
cmp bl, cl
add bl, dil
test dl, 113
cmp cl, 12
sbb eax, 125
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
