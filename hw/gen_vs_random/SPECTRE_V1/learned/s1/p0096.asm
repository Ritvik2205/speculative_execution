.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 81
lea si, qword ptr [rsi]
cmp bx, 18
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 30
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 84
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
sub sil, -18
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc rsi
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, cl
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb esi, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
