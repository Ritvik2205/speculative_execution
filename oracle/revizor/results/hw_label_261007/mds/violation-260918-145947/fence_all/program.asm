.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and rdi, 0b111 # instrumentation
lfence
btr qword ptr [r14 + rdx], rdi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rsi], 2 
lfence
and bl, -104 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs eax, dword ptr [r14 + rsi] 
lfence
bts dx, 167 
lfence
and bl, 76 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnle di, word ptr [r14 + rdx] 
lfence
cmovnbe si, dx 
lfence
bts ecx, ebx 
lfence
jmp .bb_0.1 
.bb_0.1:
and al, 12 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnp rdx, qword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock not byte ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovns dx, word ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl ebx, dword ptr [r14 + rbx] 
lfence
bts rdi, rdi 
lfence
and bl, -30 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnl cx, word ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor ax, word ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdx], eax 
lfence
cmovnz edx, eax 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and cx, 0b111 # instrumentation
lfence
lock btr word ptr [r14 + rsi], cx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rcx], 0 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb ebx, dword ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
