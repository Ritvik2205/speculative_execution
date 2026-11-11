.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 34
test cl, -49
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
xor rcx, 13
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
bt rdi, rax
mov cl, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
add bl, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 4
mul al
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
