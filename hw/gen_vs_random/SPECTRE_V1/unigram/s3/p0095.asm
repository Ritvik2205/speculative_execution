.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 29
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
xchg edi, eax
cmp ebx, -33
add dl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
add bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
add al, 110 # instrumentation
add dl, -22 # instrumentation
cmovnz edx, edx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
movsx esi, dl
bswap esi
lea cx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
