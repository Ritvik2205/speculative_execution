.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 27
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test al, -56
xor al, cl
sub cl, dl
and bl, cl
lea rdx, qword ptr [rdi]
xor bx, 72
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
