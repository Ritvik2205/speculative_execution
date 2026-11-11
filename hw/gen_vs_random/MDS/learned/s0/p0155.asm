.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
or dl, bl
test dil, -51
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bt ax, bx
and rax, -2039117613
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and di, 99
jmp .bb_0.1
.bb_0.1:
or rax, -1523798580
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
