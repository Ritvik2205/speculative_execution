.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
add sil, -61
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
sbb cl, -11
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
test sil, 29
add eax, -1
or rax, -82
xor al, 38
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
