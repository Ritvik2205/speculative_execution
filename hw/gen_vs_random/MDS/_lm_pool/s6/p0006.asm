.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
test esi, 1857129931
and bl, 68
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and dil, -39
or cl, -36
or al, al
and sil, bl
and al, -54
jmp .bb_0.2
.bb_0.2:
or sil, -78
test ecx, -1843375753
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
