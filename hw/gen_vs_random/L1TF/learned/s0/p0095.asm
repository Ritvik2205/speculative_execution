.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 45
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
and al, -68
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
adc cl, -34
test dl, sil
sbb rbx, -117
mov dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
