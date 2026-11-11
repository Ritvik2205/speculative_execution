.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
test bl, al
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
cmp dil, -29
or bl, dil
adc cl, al
sub dl, 107
and ax, -603
sbb dl, -71
and dl, -11
cmp dil, al
xor al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
