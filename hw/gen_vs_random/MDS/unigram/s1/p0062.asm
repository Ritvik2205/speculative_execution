.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 1
btc rsi, 93
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 8
cmovno di, ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and sil, -115 # instrumentation
cmovl di, si
jmp .bb_0.1
.bb_0.1:
and al, -37
xor al, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
xor cl, al
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and cl, -109 # instrumentation
not rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and si, dx
and cl, -38 # instrumentation
cmovp rcx, rdi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
