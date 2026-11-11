.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
cmovbe ax, cx
adc rbx, 81
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and cl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
not bx
add sil, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
lea rdx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
btc ax, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
