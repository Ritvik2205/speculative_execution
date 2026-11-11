.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
test dl, 9
xor sil, -14
xor cl, al
or ax, 127
jmp .bb_0.1
.bb_0.1:
or bl, 13
and cl, -71
xor al, 34
and al, 35
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
or cl, sil
and al, sil
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
