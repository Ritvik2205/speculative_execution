.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 9
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 81
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, al
sbb bl, al
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
