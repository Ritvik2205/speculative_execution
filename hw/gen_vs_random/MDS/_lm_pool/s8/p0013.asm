.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or al, -78
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
btc si, ax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and al, 82
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or di, 27
or rsi, 37
jmp .bb_0.2
.bb_0.2:
xor sil, bl
jmp .bb_0.3
.bb_0.3:
and eax, -85386306
or dl, dil
or cl, 7
and sil, dil
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
