.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], si
or rax, -357903210
cmovo esi, esi
cmovnbe dx, di
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 89
cbw
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
cmp sil, sil
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cwd
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 10
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
bt esi, 30
setns cl
add sil, 41 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
or ax, 12618
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
