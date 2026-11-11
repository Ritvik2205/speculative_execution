.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
mov al, -101
xor al, dil
jmp .bb_0.2
.bb_0.2:
test bl, 12
sbb sil, al
jmp .bb_0.3
.bb_0.3:
neg bl
and bl, dil
adc edx, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
