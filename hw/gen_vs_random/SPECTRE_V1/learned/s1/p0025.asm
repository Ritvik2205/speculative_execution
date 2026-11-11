.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78
mov bl, dil
add al, -47
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 99
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
add bl, bl
or cl, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
