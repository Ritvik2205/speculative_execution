.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
xor dx, 90
or sil, bl
sbb cl, dl
and cl, cl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 32
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
lea edx, qword ptr [rsi]
or cx, 49
or dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
