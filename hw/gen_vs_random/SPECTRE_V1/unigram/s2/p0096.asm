.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -71
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
bswap rsi
add dil, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, -37
sbb cl, 105
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
xor al, dl
cmp cl, dil
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
