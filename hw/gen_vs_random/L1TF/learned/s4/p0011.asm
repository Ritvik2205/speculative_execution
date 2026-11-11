.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
sub bl, sil
and ax, 7954
test al, -84
and cl, bl
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rbx + rdi + 42]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
