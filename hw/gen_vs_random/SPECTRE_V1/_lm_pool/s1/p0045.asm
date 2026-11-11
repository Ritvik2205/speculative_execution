.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ecx, edx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, al
sbb eax, 99727957
test cl, -120
sub cl, -21
mov bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
xor bl, al
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
