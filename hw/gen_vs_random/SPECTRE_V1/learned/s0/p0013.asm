.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 44
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
