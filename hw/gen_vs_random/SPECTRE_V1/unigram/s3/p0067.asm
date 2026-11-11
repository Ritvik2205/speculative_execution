.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 47
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
add al, 110 # instrumentation
movzx si, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb rax, rdx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
add al, -47
test al, 84
sbb al, 118
add bl, 28 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and ax, -13240
sub edx, edi
xor dl, 71
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
sbb dil, sil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
