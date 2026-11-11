.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
setbe dil
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 2
sbb dil, dil
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
add dl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
