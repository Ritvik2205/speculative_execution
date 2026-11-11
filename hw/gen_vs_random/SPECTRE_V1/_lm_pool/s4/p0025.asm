.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 98
cmp eax, 100
sub al, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, sil
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
sub al, cl
inc edx
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
