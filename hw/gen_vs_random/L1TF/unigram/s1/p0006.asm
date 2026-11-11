.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl bx, bx
lea bx, qword ptr [rsi]
sub ebx, 23
adc sil, 14
sbb bl, dil
jmp .bb_0.1
.bb_0.1:
sbb rax, 717206440
add dl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
btc rsi, 73
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 91
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
