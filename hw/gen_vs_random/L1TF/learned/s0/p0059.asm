.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
cmp ebx, 89
setb al
or dil, -113
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 1
add bl, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
