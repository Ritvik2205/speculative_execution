.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
movzx edx, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
xchg bl, dl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
add dl, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
lea rdi, qword ptr [rdi]
add al, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], esi
add al, -94 # instrumentation
cmovnle rsi, rbx
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
xor bl, -38
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
