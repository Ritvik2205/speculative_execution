.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
bt eax, ecx
sub dl, cl
sbb al, cl
add al, bl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
