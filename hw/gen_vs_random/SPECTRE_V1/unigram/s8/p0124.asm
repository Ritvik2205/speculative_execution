.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
movzx esi, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
cmp sil, al
inc ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, dil
xor sil, cl
add dil, 9 # instrumentation
adc dil, al
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
btr rsi, 72
setp cl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
btc ebx, 139
add cl, 103 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
