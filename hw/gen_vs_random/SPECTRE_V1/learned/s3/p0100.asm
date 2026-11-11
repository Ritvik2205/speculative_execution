.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], eax
and al, cl
movzx ecx, dil
test al, bl
adc eax, 56
or cx, 67
dec cl
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
