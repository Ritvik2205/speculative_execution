.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
btc ax, dx
inc rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
cmp cl, 43
btr ecx, 83
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
dec rbx
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and bx, -118
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
add bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
imul cl
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
