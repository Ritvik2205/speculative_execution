.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl 
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
lfence
btr qword ptr [r14 + rdx], rdi 
and rsi, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rsi], 2 
and bl, -104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs eax, dword ptr [r14 + rsi] 
bts dx, 167 
and bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnle di, word ptr [r14 + rdx] 
cmovnbe si, dx 
bts ecx, ebx 
jmp .bb_0.1 
.bb_0.1:
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnp rdx, qword ptr [r14 + rsi] 
and rdi, 0b1111111111000 # instrumentation
lfence
lock not byte ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovns dx, word ptr [r14 + rbx] 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl ebx, dword ptr [r14 + rbx] 
bts rdi, rdi 
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnl cx, word ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
lfence
xor ax, word ptr [r14 + rcx] 
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdx], eax 
cmovnz edx, eax 
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lfence
lock btr word ptr [r14 + rsi], cx 
and rcx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rcx], 0 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb ebx, dword ptr [r14 + rbx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
