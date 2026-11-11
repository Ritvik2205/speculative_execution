.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and cl, al
xor cx, 113
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, bl
lea edi, qword ptr [rdi + rsi + 59]
cmp dx, 26
sbb sil, cl
cmp cl, 57
or rsi, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
