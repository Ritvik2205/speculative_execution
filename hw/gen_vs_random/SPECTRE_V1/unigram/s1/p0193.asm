.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, cx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
add bl, bl
setnz cl
test rbx, 27
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
setnl sil
dec rcx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
bswap rbx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 26
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
adc dx, bx
cmp dil, dil
bts rbx, 140
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
