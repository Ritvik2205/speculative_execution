.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, al
and ax, 37
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
and al, -68
bswap rsi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
add edx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
