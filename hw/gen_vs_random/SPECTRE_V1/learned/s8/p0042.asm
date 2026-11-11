.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea rsi, qword ptr [rax]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
sbb edi, 86
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
