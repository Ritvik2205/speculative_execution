.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
test al, -75
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and cl, al
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 94
sub cl, -21
add al, 18
add cl, bl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
