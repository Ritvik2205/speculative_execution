.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rsi]
add cl, al
add cl, dl
imul ax, si, 123
and edx, -62
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
sbb sil, -78
setbe al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
setle dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
add dl, -11 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
