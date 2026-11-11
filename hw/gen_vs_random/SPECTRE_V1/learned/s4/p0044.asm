.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
cmp rax, 900122030
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add al, -47
test dx, 80
test al, 34
mov bl, sil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
