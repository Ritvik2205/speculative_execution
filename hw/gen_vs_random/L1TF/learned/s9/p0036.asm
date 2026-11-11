.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 37
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
or sil, -44
lea ax, qword ptr [rdx + rdx + 28]
lea ecx, qword ptr [rdx]
add ax, 32140
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub al, 9
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
