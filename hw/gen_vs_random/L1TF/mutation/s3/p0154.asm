.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
imul rcx
or rdx, -22
cmovns esi, edx
mov bl, cl
adc al, -61
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and sil, sil
cmovnp dx, si
test eax, -2032743474
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
