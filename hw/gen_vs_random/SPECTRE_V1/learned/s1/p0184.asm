.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
test dil, -116
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor cl, -40
lea di, qword ptr [rbx]
bt eax, edi
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
mov dil, al
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
