.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -72
sub bl, -19
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and dl, sil
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
sub al, cl
bt eax, ecx
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor dil, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
