.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
mov cl, -72
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb bl, dl
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
or cl, -98
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 96
sbb dil, -93
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
or rdi, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
