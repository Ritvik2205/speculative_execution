.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
bts ecx, ebx
bts dx, 167
and bl, -104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
and cl, dl
cmovnbe si, dx
jmp .bb_0.1
.bb_0.1:
cmovnz edx, eax
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
bts rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
