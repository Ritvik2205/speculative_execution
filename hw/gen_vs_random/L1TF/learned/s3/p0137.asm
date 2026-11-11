.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add al, al
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
test dil, -126
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
add ax, 23614
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
