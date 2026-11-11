.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea ecx, qword ptr [rbx + rdi + 43]
sub dl, al
and sil, 11
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
dec al
sbb bl, dl
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
