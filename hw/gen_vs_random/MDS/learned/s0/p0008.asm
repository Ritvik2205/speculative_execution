.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
test eax, -1634766116
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
xor cl, 98
or dl, sil
btc bx, 58
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and dil, bl
and dl, -73
and dl, cl
test rsi, 48
test cl, bl
xor edi, 70
or dl, bl
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
