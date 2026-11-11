.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
sbb al, bl
lea cx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
mov al, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jb .bb_0.3
jmp .exit_0
.bb_0.3:
cmp rbx, 87
add dil, 72
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
