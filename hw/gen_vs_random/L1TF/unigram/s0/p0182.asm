.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmovnz cx, si
xor ax, -16232
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
sbb cl, -11
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 88
cmp ebx, 39
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
bt ecx, esi
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
sbb dil, 100
lea rbx, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
