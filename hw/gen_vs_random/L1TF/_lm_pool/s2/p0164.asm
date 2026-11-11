.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
sbb dl, al
adc al, 70
test al, -104
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
or bl, 114
sub al, -75
btc ax, cx
lea si, qword ptr [rax + rdi + 94]
jmp .bb_0.1
.bb_0.1:
add dil, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
