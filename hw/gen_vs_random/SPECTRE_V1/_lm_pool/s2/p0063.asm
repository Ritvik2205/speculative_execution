.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
test dil, -116
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
sub dil, dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
mov dl, cl
sub al, dl
cmp al, 77
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
