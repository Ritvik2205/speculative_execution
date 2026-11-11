.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rdi, qword ptr [rbx + rdx + 8]
add al, 3
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cmp dil, -58
xchg dil, cl
and cl, -57
sbb al, -112
and sil, cl
mov cl, sil
sbb al, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
