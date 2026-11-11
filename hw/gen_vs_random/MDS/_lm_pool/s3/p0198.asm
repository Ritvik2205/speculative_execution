.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test al, dl
and dl, -73
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
or bl, 127
xor cl, 55
test dil, -80
or sil, bl
xor al, 8
jmp .bb_0.2
.bb_0.2:
and sil, -9
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
