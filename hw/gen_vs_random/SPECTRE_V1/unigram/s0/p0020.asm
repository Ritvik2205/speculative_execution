.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
adc rax, 1310333622
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 19
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
lea ecx, qword ptr [rax + rdi + 60]
sbb dl, 127
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
