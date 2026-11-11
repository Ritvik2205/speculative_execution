.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
test sil, -96
or cl, cl
and ax, 31082
or dil, 12
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
jmp .bb_0.1
.bb_0.1:
xor dl, -59
xor rdi, -9
not bl
and dil, 125
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
