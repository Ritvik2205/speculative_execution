.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
cmovnb ax, dx
btc rcx, 49
sbb al, -127
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
add al, 112 # instrumentation
setl cl
add cl, 22 # instrumentation
cmovns rbx, rdi
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
add dl, 63 # instrumentation
cmovle bx, ax
neg rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor al, -64
add bl, -108 # instrumentation
sbb dil, 3
btr rcx, 67
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
