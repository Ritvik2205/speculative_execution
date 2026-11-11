.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rax, rax
add al, 73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
or bl, sil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 69
cmovnbe rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
add sil, 28 # instrumentation
setnz sil
cmovnl rcx, rdi
sbb dil, 8
dec cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, 45
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], cx
adc rbx, 37
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 92
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
