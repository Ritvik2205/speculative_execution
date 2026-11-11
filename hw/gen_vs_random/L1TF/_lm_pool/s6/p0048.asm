.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
test sil, 29
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and si, 56
and cl, 18
jmp .bb_0.2
.bb_0.2:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
