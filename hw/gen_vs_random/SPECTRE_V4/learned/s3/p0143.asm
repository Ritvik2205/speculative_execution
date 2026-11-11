.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
adc dl, sil
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rcx
add dil, bl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
adc cl, al
add bl, al
adc dl, al
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sbb dl, al
sbb dil, bl
test al, -24
adc sil, bl
xor al, -113
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
