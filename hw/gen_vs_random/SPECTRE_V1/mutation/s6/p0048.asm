.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
add dl, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
sbb bl, al
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
adc si, 6
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 78 # instrumentation
adc si, -91
bt esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
add dl, 117 # instrumentation
sbb rcx, rax
and bl, 87
add dl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
