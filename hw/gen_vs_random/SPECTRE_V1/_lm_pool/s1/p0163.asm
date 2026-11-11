.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb eax, ebx
xchg rdi, rbx
sbb edi, 7
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
sbb dl, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dil
sbb bl, al
lea rdx, qword ptr [rcx + rax + 97]
not si
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
