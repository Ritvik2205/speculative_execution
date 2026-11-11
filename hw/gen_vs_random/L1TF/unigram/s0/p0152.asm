.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor di, 38
xor dil, dil
setnle bl
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
cmovno dx, dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
