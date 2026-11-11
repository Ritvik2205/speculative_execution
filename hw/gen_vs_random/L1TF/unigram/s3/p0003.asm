.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cbw
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xchg di, di
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
sbb dl, cl
cmovs dx, ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
test rcx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
