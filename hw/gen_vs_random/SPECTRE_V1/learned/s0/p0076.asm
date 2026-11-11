.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
sbb esi, 40
lea rax, qword ptr [rdi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -95
cmp rsi, 53
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnz .bb_0.4
jmp .exit_0
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
lea edi, qword ptr [rbx]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
