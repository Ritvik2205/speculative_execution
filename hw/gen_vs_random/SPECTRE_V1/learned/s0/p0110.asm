.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
cmp cl, al
add al, bl
mov cl, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb ecx, 83
lea edx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
add dl, 47
jle .bb_0.2
jmp .exit_0
.bb_0.2:
bswap rcx
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
