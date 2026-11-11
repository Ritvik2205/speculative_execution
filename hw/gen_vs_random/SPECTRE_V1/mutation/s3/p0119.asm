.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
cmp rax, 1189904463
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -126 # instrumentation
cwd
bt rdx, rdx
bswap rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
imul cx
add bl, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
