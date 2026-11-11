.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
setp al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
sub al, -82
add dil, 72
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ecx, qword ptr [rdi]
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
and dx, 8
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
