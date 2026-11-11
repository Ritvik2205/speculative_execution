.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xchg bl, bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and al, bl
add al, 10
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
mul rcx
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
add rsi, 109
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
lea rdx, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
