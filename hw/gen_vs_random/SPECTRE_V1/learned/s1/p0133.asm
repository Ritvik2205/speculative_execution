.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
cmovnz cx, ax
and dl, -109
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
setz al
cmp dl, 71
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor ebx, 95
neg rcx
sbb eax, 1332762061
sbb edi, 43
cmp al, sil
adc bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
