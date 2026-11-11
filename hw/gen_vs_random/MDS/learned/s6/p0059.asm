.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
or esi, -110
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test al, dil
xor cx, -18
test edx, -1561252782
jmp .bb_0.1
.bb_0.1:
test cl, -123
xor dil, 8
test cl, dil
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
or sil, al
test dl, sil
jmp .bb_0.2
.bb_0.2:
xor bl, -88
and sil, al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
