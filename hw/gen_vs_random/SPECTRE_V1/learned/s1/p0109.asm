.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
sbb eax, 100
mov al, -28
cmp dil, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ecx, 53
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
