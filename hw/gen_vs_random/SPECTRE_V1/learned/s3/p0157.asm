.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 4
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test sil, -31
sbb al, 66
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
