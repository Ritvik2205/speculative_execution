.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 75
adc rsi, 110
cmp bl, dl
imul rdi, rax, 53
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rax + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
btc rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
bswap rsi
and cl, bl
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
lea rax, qword ptr [rcx + rax + 30]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
