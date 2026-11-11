.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
not dl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xor eax, -885407671
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
test dil, -126
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor bl, dl
add cl, -36
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
cmp dil, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
