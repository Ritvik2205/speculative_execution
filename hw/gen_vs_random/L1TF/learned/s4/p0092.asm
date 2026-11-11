.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, bx
and ax, 26813
jmp .bb_0.1
.bb_0.1:
add bl, sil
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rdi + rdx + 16]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
adc al, sil
or dl, -67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
