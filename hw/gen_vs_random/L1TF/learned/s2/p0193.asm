.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe ax, di
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and sil, -90
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
adc cl, -34
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
lea rdi, qword ptr [rsi + rbx]
and dil, dl
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
