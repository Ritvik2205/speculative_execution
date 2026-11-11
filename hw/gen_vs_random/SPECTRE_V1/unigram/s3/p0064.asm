.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -2537
sets cl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
adc rax, 71
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
dec rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 80
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 74
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add sil, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
cmovnbe di, di
add dl, 22
lea ebx, qword ptr [rax + rbx + 30]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
