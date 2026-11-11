.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
setz al
btc dx, cx
lea rcx, qword ptr [rdx + rbx + 54]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
sub cl, cl
test rsi, -1408527332
sbb bl, 79
jo .bb_0.1
jmp .exit_0
.bb_0.1:
not edx
lea rsi, qword ptr [rcx + rdi + 22]
xor rax, rdx
btr rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
