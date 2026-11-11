.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
test dl, sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and al, 87
or al, dil
xor rax, 459999114
and al, -103
or dl, dil
test sil, -55
jmp .bb_0.1
.bb_0.1:
xor bl, -61
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or al, dil
test cl, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
