.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovp ebx, dword ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle rsi, qword ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdx], ecx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovns rdi, qword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor di, word ptr [r14 + rax] 
lfence
xor al, al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl eax, dword ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rcx], cl 
lfence
and cl, 40 
lfence
jmp .bb_0.1 
.bb_0.1:
bt ax, dx 
lfence
and dl, -73 # instrumentation
lfence
cmovns rbx, rcx 
lfence
or ecx, esi 
lfence
or ax, 19243 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovz si, word ptr [r14 + rax] 
lfence
or dil, -52 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rsi], dil 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz cx, word ptr [r14 + rax] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rcx], 119 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovz eax, dword ptr [r14 + rbx] 
lfence
cmovno dx, ax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
