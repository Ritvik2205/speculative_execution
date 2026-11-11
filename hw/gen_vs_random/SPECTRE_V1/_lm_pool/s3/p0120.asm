.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rsi, 53
lea rcx, qword ptr [rax + rax + 66]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb edi, 23
or eax, -126
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rdi, rax
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
