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
test dword ptr [r14 + rsi], 2114064901
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
