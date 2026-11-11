.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], -58
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 25
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdi, 63
mov rcx, 91
not cl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
or sil, 3
sub rdx, 40
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
cbw
or al, dil
cmp dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
