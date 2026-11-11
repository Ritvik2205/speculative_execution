.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], cx
cmp dil, dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
or al, 19
sbb al, -114
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
add al, al
add esi, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
