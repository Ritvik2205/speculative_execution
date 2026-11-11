.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 4
add dl, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
setb bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
xor dl, 55
cmovl esi, ebx
test dil, -107
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
sbb al, cl
add bx, -105
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
