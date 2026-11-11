.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dx, 38
lea rbx, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
sbb dil, dil
sub dl, -29
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 25
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
setnb bl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 73
mov cl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sbb eax, 90
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
