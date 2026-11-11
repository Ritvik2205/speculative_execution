.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 27
and cl, -111
add dil, 36
jmp .bb_0.1
.bb_0.1:
or ax, -7150
and ax, 27170
or al, sil
test bl, -114
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test eax, -1634766116
or al, 74
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
