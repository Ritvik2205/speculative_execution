.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
or al, -58
test al, 127
jmp .bb_0.1
.bb_0.1:
or cx, 49
or al, 37
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or dl, -89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and ax, 13090
and di, 91
or sil, dl
or sil, -78
xor sil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
