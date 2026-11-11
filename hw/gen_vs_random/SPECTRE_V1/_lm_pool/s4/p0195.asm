.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and dx, 95
add sil, -68
cmp bl, -114
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
sbb cl, 105
and cx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
