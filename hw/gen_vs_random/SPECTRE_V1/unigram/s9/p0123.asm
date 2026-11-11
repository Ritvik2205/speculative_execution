.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rbx + rbx + 36]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
xor cl, 71
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mul al
sub edx, -63
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and edi, 3
bswap edi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
cmp cl, 84
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
mov dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
