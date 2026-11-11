.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
sbb bl, -41
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
or sil, cl
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
jnp .bb_0.4
jmp .bb_0.5
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
js .bb_0.5
jmp .exit_0
.bb_0.5:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
lea rdx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
