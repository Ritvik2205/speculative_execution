.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
test sil, al
lea dx, qword ptr [rdx]
sub bl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cx, 19
lea di, qword ptr [rbx + rcx]
sbb al, cl
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
