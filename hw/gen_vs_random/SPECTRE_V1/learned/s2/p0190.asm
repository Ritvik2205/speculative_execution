.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
xchg ecx, edx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test al, -71
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jns .bb_0.4
jmp .exit_0
.bb_0.4:
sbb esi, 35
neg rax
dec bl
mov bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
