.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
add al, 27 # instrumentation
sbb ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
setbe cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
mov rax, -6437636498926413678
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 32 # instrumentation
sbb bl, dil
cmovno rbx, rcx
bts rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
