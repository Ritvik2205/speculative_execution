.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 35
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and dl, al
bt di, di
or bx, 93
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
add sil, bl
add dl, 2
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
setnp cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
