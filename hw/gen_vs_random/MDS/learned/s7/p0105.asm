.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -15
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 47
bt di, ax
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
or dl, sil
and cl, -111
xor al, 115
and sil, sil
and sil, -9
and cl, -19
jmp .bb_0.1
.bb_0.1:
xor cx, -18
bt dx, bx
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
