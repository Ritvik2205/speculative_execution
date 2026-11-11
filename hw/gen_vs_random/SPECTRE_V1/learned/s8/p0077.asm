.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, si
mov cl, dil
lea dx, qword ptr [rdx]
inc eax
add dil, 72
add dl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
or al, 19
adc edi, 46
sub sil, -18
sbb dl, al
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
