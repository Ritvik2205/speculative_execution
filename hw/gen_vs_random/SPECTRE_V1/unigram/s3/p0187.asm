.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg esi
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rcx], cx
setnle sil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 76
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 68
bt ecx, 204
lea di, qword ptr [rdi + rcx]
cmp rax, -72548874
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
