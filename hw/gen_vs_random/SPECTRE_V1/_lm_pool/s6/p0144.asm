.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, sil
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnz .bb_0.4
jmp .exit_0
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmp al, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
