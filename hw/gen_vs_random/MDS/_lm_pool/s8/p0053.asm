.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
test al, 22
or rax, -1523798580
not bl
and cl, sil
and ebx, 87
or cl, 6
or dl, -8
bt si, cx
xor al, -89
and bl, cl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
test al, dl
xor dil, bl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 15
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
