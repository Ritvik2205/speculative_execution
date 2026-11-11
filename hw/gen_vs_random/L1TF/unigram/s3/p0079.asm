.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, dil
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
and cl, 33
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 15
nop
or dx, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cbw
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xchg di, di
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
sbb dl, cl
cmovs dx, ax
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
