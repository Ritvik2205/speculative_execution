.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
or al, -17
jmp .bb_0.1
.bb_0.1:
and ebx, 5
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
xor cl, -13
jmp .bb_0.2
.bb_0.2:
xor dx, 17
btc bx, 58
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 61
and bx, 85
test dl, dl
test rsi, 41
test sil, -96
or dl, -97
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
