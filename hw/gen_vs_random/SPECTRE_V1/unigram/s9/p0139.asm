.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 86
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
xor rax, 29
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
sbb al, al
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
sbb ecx, 32
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp esi, ebx
cmovle di, di
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
setnz dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
