.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 20
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
add cl, -56 # instrumentation
sbb rdx, -67
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
adc bx, bx
cmp rdx, rax
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
