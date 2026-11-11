.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
sbb dl, 127
cmp rax, 1189904463
xor cl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
sub al, -89
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
add cl, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
