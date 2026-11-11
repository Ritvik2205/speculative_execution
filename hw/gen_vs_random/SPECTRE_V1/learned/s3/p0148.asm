.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
add dl, 47
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
lea si, qword ptr [rdx + rbx + 85]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
