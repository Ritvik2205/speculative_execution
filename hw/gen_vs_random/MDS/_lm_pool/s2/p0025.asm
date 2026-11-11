.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
or sil, bl
jmp .bb_0.1
.bb_0.1:
xor di, 93
xor si, 80
jmp .bb_0.2
.bb_0.2:
test bl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and di, 99
and rax, -2058103810
jmp .bb_0.3
.bb_0.3:
xor al, 122
bt dx, cx
and dil, -39
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
