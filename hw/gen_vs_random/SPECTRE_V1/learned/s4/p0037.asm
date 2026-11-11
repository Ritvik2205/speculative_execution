.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, edx
mov cl, bl
cmp al, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
sub rdi, 64
cmp al, 23
and bl, 124
xchg rbx, rsi
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
