.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
or esi, -110
xor ax, -16696
bt cx, si
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 39
and ax, 13090
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
