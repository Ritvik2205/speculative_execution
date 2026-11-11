.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
test sil, 41
jmp .bb_0.1
.bb_0.1:
or al, dil
and rsi, 27
or dl, 85
test dx, di
xor al, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and bl, 68
or al, -17
xor rdx, -59
xor cl, 98
test sil, 17
and rax, 1250429750
btc di, 164
and ebx, 20
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
