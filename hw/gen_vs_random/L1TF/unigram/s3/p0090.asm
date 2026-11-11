.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, rsi
add al, 64 # instrumentation
cmovnl rsi, rax
cmovno dx, dx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 75
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
lea edx, qword ptr [rax + rsi + 10]
setle dil
jmp .bb_0.1
.bb_0.1:
xor al, bl
cmovl rdx, rdx
add cl, -15 # instrumentation
cmovl rcx, rdx
setp cl
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
add dl, 109 # instrumentation
sbb bl, 120
btc cx, dx
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
