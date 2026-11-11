.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
cmovnbe bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
bt rbx, rdx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
cmovp di, dx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
cmovnb dx, di
cmovno edi, ebx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and dl, -7
and bl, -30 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
cmovnp esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 76
xor ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
