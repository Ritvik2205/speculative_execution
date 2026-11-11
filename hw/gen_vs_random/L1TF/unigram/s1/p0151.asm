.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
neg esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 54
btc rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
lea ebx, qword ptr [rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
cmp rsi, rcx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 91
setbe bl
sbb al, bl
jmp .bb_0.1
.bb_0.1:
sbb bx, 51
cmovnb rax, rax
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
