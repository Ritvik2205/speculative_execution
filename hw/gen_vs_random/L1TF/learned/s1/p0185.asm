.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
xchg esi, edi
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
xor dil, sil
cmovnz cx, ax
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add dil, -5 # instrumentation
adc cl, dil
xor ecx, 40
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
adc al, -6
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
