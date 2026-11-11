.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, bx
lea si, qword ptr [rbx]
and bl, 87
cmp dl, cl
setz dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rbx]
lea rdx, qword ptr [rbx + rax + 27]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
