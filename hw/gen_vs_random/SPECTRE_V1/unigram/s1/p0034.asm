.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 126 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
add cl, 73 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 59
cmovnp rsi, rdi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
mov dil, sil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 91
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
sub rdi, 34
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
movsx si, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
