.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
not al
xor bl, -102
or sil, cl
test al, 127
test sil, dil
or bl, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
test al, 127
or dl, 51
test dil, al
xor cl, dil
and ax, 19740
and ax, -12519
xor al, -89
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and dil, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
