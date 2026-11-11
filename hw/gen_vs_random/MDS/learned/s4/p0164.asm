.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 125
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
btc di, 233
test sil, cl
or bl, -125
or dl, dl
bt bx, 253
bts ebx, 205
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
xor al, cl
bt cx, bx
xor edx, 17
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
