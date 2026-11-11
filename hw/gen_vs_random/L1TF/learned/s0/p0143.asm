.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
xor cl, bl
lea si, qword ptr [rdx + rax + 51]
and dil, -82
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
or eax, 287965578
lea cx, qword ptr [rbx + rax + 5]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
