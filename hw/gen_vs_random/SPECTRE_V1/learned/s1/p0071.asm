.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
adc ax, di
setno dl
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xchg edi, eax
bt edi, 71
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 32 # instrumentation
sbb bl, sil
cwde
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovs di, dx
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
setnz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
