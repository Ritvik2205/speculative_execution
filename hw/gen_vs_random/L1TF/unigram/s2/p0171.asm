.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
lea ax, qword ptr [rsi + rbx + 65]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
and dil, 58
add cl, 44 # instrumentation
cmovns cx, ax
inc rax
setz cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
btc cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
xchg ebx, edx
lea rcx, qword ptr [rsi + rbx + 58]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmovno cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
