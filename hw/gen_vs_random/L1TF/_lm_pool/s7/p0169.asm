.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
sub bl, 15
lea rcx, qword ptr [rsi + rbx]
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc sil, bl
jmp .bb_0.2
.bb_0.2:
xor ax, 34
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
or rcx, 44
xor ax, -16232
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
