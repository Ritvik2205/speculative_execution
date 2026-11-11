.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edx
cmovbe cx, si
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and dl, 110 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and al, dl
bts dx, di
or di, -18
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and bl, 71
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 71
or dil, -52
cmovo rsi, rdi
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
btc di, 35
and al, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
