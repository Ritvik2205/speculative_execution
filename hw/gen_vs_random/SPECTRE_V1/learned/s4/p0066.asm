.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and ax, 23118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
