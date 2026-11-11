.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, sil
lea ax, qword ptr [rcx + rdx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and ax, -13240
and cl, bl
sbb bl, -41
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 22
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
