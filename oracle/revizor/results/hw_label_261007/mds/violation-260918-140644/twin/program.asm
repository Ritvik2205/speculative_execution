.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
lfence
cmovp ebx, dword ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle rsi, qword ptr [r14 + rcx] 
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdx], ecx 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovns rdi, qword ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
lfence
xor di, word ptr [r14 + rax] 
xor al, al 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl eax, dword ptr [r14 + rbx] 
and rcx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rcx], cl 
and cl, 40 
jmp .bb_0.1 
.bb_0.1:
bt ax, dx 
and dl, -73 # instrumentation
cmovns rbx, rcx 
or ecx, esi 
or ax, 19243 
and rax, 0b1111111111111 # instrumentation
lfence
cmovz si, word ptr [r14 + rax] 
or dil, -52 
and rsi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rsi], dil 
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz cx, word ptr [r14 + rax] 
and rcx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rcx], 119 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovz eax, dword ptr [r14 + rbx] 
cmovno dx, ax 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
