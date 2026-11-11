.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
lea si, qword ptr [rbx]
setz al
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
xor dil, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xchg cl, sil
test cl, -62
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
