.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or rdx, -48
or dl, sil
or al, -58
xor al, sil
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and ax, 19740
bt cx, dx
and bl, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
btc cx, 115
and al, dil
btc ax, 98
xor al, 8
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
