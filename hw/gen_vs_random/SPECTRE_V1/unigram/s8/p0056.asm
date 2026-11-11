.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
sub rbx, -11
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 98
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
add bl, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
dec rcx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul rax, rsi, 54
adc bl, -76
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
imul dx, bx, 32
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
setns al
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rbx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
