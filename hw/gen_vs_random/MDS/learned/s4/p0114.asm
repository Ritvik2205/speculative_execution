.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and edx, -44
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
btc si, 43
bt rcx, 1
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
