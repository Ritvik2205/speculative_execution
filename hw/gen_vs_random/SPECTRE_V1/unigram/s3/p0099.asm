.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
add bl, 126 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
setnle dl
sbb cl, sil
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
neg rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 13
cbw
cmovnl eax, edx
bt esi, 82
xchg edi, esi
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 53
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
