.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp cx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add bl, 7 # instrumentation
cmovnl ecx, edx
setns bl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
btc dx, 69
xor sil, sil
dec cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add sil, dil
test dl, 53
imul bl
add al, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
