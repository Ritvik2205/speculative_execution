.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, sil
mov bl, sil
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
adc dil, 120
add si, -5
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 42
cmp bl, sil
add cl, al
and sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
