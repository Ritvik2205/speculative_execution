.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle di, di
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
add al, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], esi
test dil, -116
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
test rsi, -1408527332
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 42
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
cmp rbx, 24
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
