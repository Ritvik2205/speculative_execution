.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -88
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 21
test sil, al
and al, -118
and cl, -128
adc dl, 77
or cl, cl
add bl, al
and al, -12
adc bl, 0
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sbb cl, 40
cmp cl, al
xor dl, al
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
