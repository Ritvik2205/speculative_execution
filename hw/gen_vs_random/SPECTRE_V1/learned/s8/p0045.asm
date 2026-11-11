.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea bx, qword ptr [rdi]
cmp ax, 7046
xor cl, 71
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, sil
and al, al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
sbb cl, al
cmp rsi, 53
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
test eax, edx
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
