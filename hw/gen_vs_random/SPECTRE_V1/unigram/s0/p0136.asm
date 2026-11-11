.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rdi + rax]
add bl, -12 # instrumentation
lea rcx, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
mul cx
add bl, 126 # instrumentation
cmovnl dx, bx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 99
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and dx, 84
or al, cl
bt rax, rdx
add al, -53 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 47
lea edi, qword ptr [rax + rdi]
bswap rcx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
