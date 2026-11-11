.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
test eax, 1947430392
xor al, sil
xor dil, dil
adc dl, al
and dil, -61
adc dl, 47
add dl, sil
cmp al, 98
and al, 5
sbb al, 95
xor al, 124
btc edx, 165
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
