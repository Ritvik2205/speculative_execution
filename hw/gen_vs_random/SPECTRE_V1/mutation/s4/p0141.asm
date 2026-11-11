.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
sbb bl, al
adc si, 6
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 78 # instrumentation
adc si, -91
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
bt esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add dl, 117 # instrumentation
sbb rcx, rax
and bl, -65
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
add dl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
bt edi, 121
and edx, -62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
xor eax, 55
bswap ecx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, 19 # instrumentation
setnz bl
adc cl, bl
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
