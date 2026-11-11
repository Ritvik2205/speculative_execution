.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
btc rcx, rsi
add al, -47
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
add al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 42
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
cmp sil, bl
lea edx, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
setnp cl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
add cl, 72 # instrumentation
cmovnl cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
