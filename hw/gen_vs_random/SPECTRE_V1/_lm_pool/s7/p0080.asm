.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
test cl, -62
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
imul rbx
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 44
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
js .bb_0.4
jmp .exit_0
.bb_0.4:
cmp rdx, -19
xor sil, bl
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
