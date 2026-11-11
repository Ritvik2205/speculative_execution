.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
sub al, -66
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
add al, 10
sbb sil, cl
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
