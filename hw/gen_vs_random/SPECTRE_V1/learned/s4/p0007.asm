.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
sbb dil, dl
sub al, cl
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmp cl, bl
lea si, qword ptr [rdx + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
test al, 40
test al, -71
mov dil, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
sbb al, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
