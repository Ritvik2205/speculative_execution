.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
sbb eax, 1830317432
xor al, al
test al, -99
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
add dil, bl
lea eax, qword ptr [rdx]
sub dil, al
sbb dl, 127
adc al, -92
and bl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
