.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
lea rcx, qword ptr [rax + rsi + 89]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
lea rcx, qword ptr [rax + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
setnb al
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
or dil, dl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 19
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
xchg cl, al
cmovnbe si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
