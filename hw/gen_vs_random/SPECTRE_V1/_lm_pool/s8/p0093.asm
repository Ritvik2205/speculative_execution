.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, 2
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
mov bl, -31
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
