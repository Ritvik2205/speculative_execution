.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33
sub rsi, 121
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
cmovns rax, rdx
btr eax, 253
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
xor eax, -764881786
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
xor eax, 1034314125
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
