.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
cmp eax, -240917296
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
cmovnp cx, ax
cmovnle si, dx
sbb bl, bl
btc bx, ax
not rsi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
