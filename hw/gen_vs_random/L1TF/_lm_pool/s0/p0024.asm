.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rcx]
cmovb di, si
sub al, -47
and ax, 26813
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
test ebx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
