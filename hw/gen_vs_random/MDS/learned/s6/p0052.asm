.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
or dl, dl
btr si, ax
jmp .bb_0.1
.bb_0.1:
or dl, sil
and bx, 50
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
