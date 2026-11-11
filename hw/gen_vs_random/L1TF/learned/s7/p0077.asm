.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or rax, 1362710293
mov al, bl
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
adc al, sil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
